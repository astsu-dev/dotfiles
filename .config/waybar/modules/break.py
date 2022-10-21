#! /usr/bin/python
import argparse
import json
import subprocess
from pathlib import Path
from typing import TypedDict

STATE_FILE_PATH = Path.expanduser(Path("~/.BREAK_STATE"))


class State(TypedDict):
    time_left: int  # time in seconds
    enabled: bool


def create_default_state() -> State:
    return {"time_left": 45 * 60, "enabled": False}


def push_notification() -> None:
    subprocess.call(["notify-send", "-u", "critical", "-t", "600000", "Time to break!"])
    subprocess.call(
        ["paplay", "/usr/share/sounds/freedesktop/stereo/message-new-instant.oga"]
    )


def get_state() -> State:
    try:
        with open(STATE_FILE_PATH, encoding="utf-8") as file:
            return json.load(file)
    except FileNotFoundError:
        return update_state(create_default_state())


def update_state(state: State) -> State:
    with open(STATE_FILE_PATH, "w", encoding="utf-8") as file:
        json.dump(state, file)
    return state


def make_tick(state: State, duration: int) -> State:
    state = state.copy()
    time_left = state["time_left"]
    enabled = state["enabled"]

    if enabled:
        if time_left <= 0:
            push_notification()
            state["time_left"] = duration
            state["enabled"] = False
        else:
            state["time_left"] -= 1
    return state


def create_waybar_output(state: State) -> str:
    enabled = state["enabled"]
    time_left = state["time_left"]
    data = {
        "text": f"{time_left // 60}m",
        "tooltip": "Enabled" if enabled else "Disabled",
    }
    if enabled:
        data["class"] = "enabled"
    return json.dumps(data)


def run_tick_command(args: argparse.Namespace) -> None:
    duration = int(args.duration) * 60

    state = get_state()
    new_state = make_tick(state, duration)

    if new_state != state:
        update_state(new_state)

    print(create_waybar_output(new_state))


def run_toggle_command(_: argparse.Namespace) -> None:
    state = get_state()
    state["enabled"] = not state["enabled"]
    update_state(state)


def run_reset_command(args: argparse.Namespace) -> None:
    duration = args.duration
    state: State = {"time_left": duration * 60, "enabled": False}
    update_state(state)


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    subparsers = parser.add_subparsers()

    parser_tick = subparsers.add_parser("tick")
    parser_tick.add_argument("duration", type=int, help="Time in seconds")
    parser_tick.set_defaults(func=run_tick_command)

    parser_toggle = subparsers.add_parser("toggle")
    parser_toggle.set_defaults(func=run_toggle_command)

    parser_reset = subparsers.add_parser("reset")
    parser_reset.add_argument("duration", type=int, help="Time in seconds")
    parser_reset.set_defaults(func=run_reset_command)

    args = parser.parse_args()
    args.func(args)
