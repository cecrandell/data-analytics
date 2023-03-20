import pandas as pd

csv_path = "resources/books.csv"

books_df = pd.read_csv(csv_path, encoding="utf-8")
books_df.head()

reduced_df = books_df[["isbn", "original_publication_year", "original_title", "authors",
                       "ratings_1", "ratings_2", "ratings_3", "ratings_4", "ratings_5"]]
reduced_df.head()


renamed_df = reduced_df.rename(columns={"isbn": "ISBN",
                                        "original_publication_year": "Publication Year",
                                        "original_title": "Original Title",
                                        "authors": "Authors",
                                        "ratings_1": "One Star Reviews",
                                        "ratings_2": "Two Star Reviews",
                                        "ratings_3": "Three Star Reviews",
                                        "ratings_4": "Four Star Reviews",
                                        "ratings_5": "Five Star Reviews", })
renamed_df.head()

renamed_df.to_csv("output/books_clean.csv",
                  encoding="utf-8", index=False, header=True)
