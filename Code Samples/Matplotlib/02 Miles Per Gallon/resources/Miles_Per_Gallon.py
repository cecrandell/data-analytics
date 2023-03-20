import matplotlib.pyplot as plt
import pandas as pd
import numpy as np

car_data = pd.read_csv('resources/mpg.csv')

car_data = car_data.loc[car_data['horsepower'] != "?"]

car_data = car_data.set_index('car name')

del car_data['origin']

car_data['horsepower'] = pd.to_numeric(car_data['horsepower'])

car_data.plot(kind="scatter", x="horsepower", y="mpg", grid=True, figsize=(8,8),
              title="MPG Vs. Horsepower")
plt.show()