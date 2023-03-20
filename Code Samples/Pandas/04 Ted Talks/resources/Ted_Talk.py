import pandas as pd

csv_path = "resources/ted_talks.csv"
ted_df = pd.read_csv(csv_path)

ted_df.head()

bins = [0, 199999, 399999, 599999, 799999, 999999,
        1999999, 2999999, 3999999, 4999999, 50000000]

group_labels = ["0 to 199k", "200k to 399k", "400k to 599k", "600k to 799k", "800k to 999k", "1mil to 2mil",
                "2m to 3m", "3m to 4m", "4m to 5m", "5m to 50m"]

pd.cut(ted_df["views"], bins, labels=group_labels).head()

ted_df["View Group"] = pd.cut(ted_df["views"], bins, labels=group_labels)
ted_df.head()

ted_group = ted_df.groupby("View Group")

print(ted_group["comments"].count())

ted_group[["comments", "duration", "languages"]].mean()
