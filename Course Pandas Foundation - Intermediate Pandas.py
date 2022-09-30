# -*- coding: utf-8 -*-

# -- Sheet --

# # Intermediate Pandas


import pandas as pd

penguins = pd.read_csv("penguins.csv")

# preview first 5 rows
penguins.head()

# preview last 5 rows
penguins.tail()

# shape of dataframe
penguins.shape

# information of dataframe
penguins.info()

# select columns
penguins[ ['species', 'island', 'sex'] ].tail(8)

# integer location based indexing (iloc)
penguins.iloc[ [0, 1, 2] ]

penguins.iloc[ 0:5 ]

penguins.iloc[ 0:5 , 0:3 ]

mini_penguins = penguins.iloc[ 0:5 , 0:3 ]
mini_penguins

# filter rows by a condition
penguins['island'] == 'Torgersen'

# filter penguins in Torgersen
penguins [ penguins['island'] == 'Torgersen' ]

penguins[ penguins['bill_length_mm'] < 34 ]

# filter more than one condition |(all)
filter_penguins = penguins [ (penguins['island'] == 'Torgersen') | (penguins['bill_length_mm'] < 35) ]

# filter with .query()
penguins.query('island == "Torgersen" & bill_length_mm < 35') # "island == 'Torgersen' " 

# check missing in each column
penguins.isna().sum()

penguins[penguins['sex'].isna()]

penguins[penguins['bill_length_mm'].isna()]

# drop na (delete cloumns missing valve )
clean_penguins = penguins.dropna()
clean_penguins.head(10)

# fill missing values
top5_penguins = penguins.head(5)

avg_value = top5_penguins['bill_length_mm'].mean()
print(avg_value)

top5_penguins = top5_penguins['bill_length_mm'].fillna(value=avg_value)
top5_penguins

# sort bill_length_mm low to high,high to low
penguins.dropna().sort_values('bill_length_mm', ascending=False).head(10)

# sort multiple columns 
penguins.dropna().sort_values(['island', 'bill_length_mm'] )

# unique(not same data) values 
penguins['species'].unique()

# count values
penguins['species'].value_counts()

# count more than one columns
result = penguins[ ['island', 'species'] ].value_counts().reset_index()

result.columns = ['island', 'species', 'count']

result

# summarise dataframe
penguins.describe(include = 'all')

# average, mean
penguins['bill_length_mm'].mean()

penguins['bill_length_mm'].std()

penguins['bill_length_mm'].median()

# group by + sum/ mean
penguins.groupby('species')['bill_length_mm'].mean()

penguins.groupby('species')['bill_length_mm'].sum()

# group by aggregation +sum/ mean 
penguins.groupby('species')['bill_length_mm'].agg(['min', 'mean', 'median', 'std', 'max'])

# gruop by more than one columns
result = penguins.groupby(['island', 'species'])['bill_length_mm'].agg(['min', 'mean', 'max']).reset_index()

result.to_csv('result.csv')

# if your code is long use (\)
result = penguins.groupby(['island', 'species'])['bill_length_mm']\
    .agg(['min', 'mean', 'max'])\
        .reset_index()

# map values MALE: m, FEMALE: f
# penguins('sex').head()
penguins['sex_new'] = penguins['sex'].map( {'MALE': 'm', 'FEMALE': 'f'}).fillna('other')

penguins.head()

# pandas style
penguins['bill_length_mm'].mean()

# numpy
import numpy as np
np.mean(penguins['bill_length_mm'])

# otheer function of numpy
print(np.sum(penguins['bill_depth_mm']))
print(np.std(penguins['body_mass_g']))

score = pd.Series([80, 55, 62, 95, 20])

grade = np.where(score >= 80, "passed", "failed")
print(grade)

penguins.head()

df = penguins.query("species == 'Adelie' ")[['species', 'island', 'bill_length_mm']].dropna()

df.head()

df['new_column'] = np.where(df['bill_length_mm']>40, True,False) # boolean

df.head(10)

# # Merge DataFrames


left = {
'key': [1, 2, 3, 4],
'name': ['toy', 'joe', 'jane', 'anna'],
'age': [25, 28, 30, 22]
}
right = {
'key': [1, 2, 3, 4],
'city': ['Bangkok', 'London', 'Seoul', 'Tokyo'],
'zip': [1001, 2504, 2094, 9802]
}
df_left = pd.DataFrame(left)
df_right = pd.DataFrame(right)

df_left

import pandas as pd
df_result = pd.merge(df_left, df_right, on='key')
df_result

# # Pandas Plots
# #histogram
# #histogram 2 columns
# #bar plot
# #scatter plot


# histogram one column
penguins['body_mass_g'].plot(kind='hist');

# histogram two columns
penguins[['body_mass_g', 'bill_length_mm']].plot(kind='hist', bins=30); # bin is number of columns

penguins['bill_length_mm'].plot(kind='hist', bins=30, color="orange");

# bar plot for species
penguins['species'].value_counts().plot(kind='bar', color=['salmon','orange', 'gold'])

# scatter plot
penguins[['bill_length_mm', 'bill_depth_mm']]\
.plot(x='bill_length_mm', y='bill_depth_mm', kind="scatter", color="orange")

penguins

