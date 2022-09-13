printf "%.2f" $(curl "https://api.binance.com/api/v3/ticker/price?symbol=BTCUSDT" | jq ".price | tonumber")
