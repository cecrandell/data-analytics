import pandas as pd

bitcoin_csv = "resources/bitcoin_cash_price.csv"
dash_csv = "resources/dash_price.csv"

bitcoin_df = pd.read_csv(bitcoin_csv)
dash_df = pd.read_csv(dash_csv)

bitcoin_df.head()

dash_df.head()

crypto_df = pd.merge(bitcoin_df, dash_df, on="Date")
crypto_df.head()

crypto_df = crypto_df.rename(columns={"Open_x": "Bitcoin Open", "High_x": "Bitcoin High", "Low_x": "Bitcoin Low",
                             "Close_x": "Bitcoin Close", "Volume_x": "Bitcoin Volume", "Market Cap_x": "Bitcoin Market Cap"})

crypto_df = crypto_df.rename(columns={"Open_y": "Dash Open", "High_y": "Dash High", "Low_y": "Dash Low",
                             "Close_y": "Dash Close", "Volume_y": "Dash Volume", "Market Cap_y": "Dash Market Cap"})

crypto_df.head()

alternative_df = pd.merge(
    bitcoin_df, dash_df, on="Date", suffixes=("_Bitcoin", "_Dash"))
alternative_df.head()

bitcoin_open = crypto_df["Bitcoin Open"].max()
dash_open = crypto_df["Dash Open"].max()


bitcoin_close = crypto_df["Bitcoin Close"].max()
dash_close = crypto_df["Dash Close"].max()

bitcoin_volume = round(crypto_df["Bitcoin Volume"].sum()/1000000, 2)
dash_volume = round(crypto_df["Dash Volume"].sum()/1000000, 2)

summary_df = pd.DataFrame({"Best Bitcoin Open": [bitcoin_open],
                           "Best Dash Open": [dash_open],
                           "Best Bitcoin Close": [bitcoin_close],
                           "Best Dash Close": [dash_close],
                           "Total Bitcoin Volume": str(bitcoin_volume)+" million",
                           "Total Dash Volume": str(dash_volume)+" million"})

summary_df
