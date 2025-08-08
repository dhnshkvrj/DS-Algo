import pandas as pd

def findHeavyAnimals(animals: pd.DataFrame) -> pd.DataFrame:
    sorted_names=animals[animals.weight>100].sort_values(by='weight',ascending=False)['name']
    return pd.DataFrame(sorted_names)