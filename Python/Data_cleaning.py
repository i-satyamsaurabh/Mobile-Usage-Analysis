import pandas as pd
import numpy as np

df = pd.read_csv("raw_mobile_usage.csv")
df.head()

df.info()

df.describe()
df.isnull().sum()
duplicate_count = df.duplicated(subset="user_id").sum()
print("Duplicate users:", duplicate_count)

df = df.drop_duplicates(subset="user_id")
int_cols = ["age", "app_count", "charging_freq"]
float_cols = ["avg_screen_time_hrs", "daily_data_gb", "battery_drain_pct"]

df[int_cols] = df[int_cols].astype(int)
df[float_cols] = df[float_cols].astype(float)
assert df["avg_screen_time_hrs"].between(0.8, 9.0).all()
assert df["daily_data_gb"].between(0.5, 7.0).all()
assert df["battery_drain_pct"].between(30, 95).all()
df["usage_score"] = (
    0.4 * df["avg_screen_time_hrs"] +
    0.3 * (df["app_count"] / 10) +
    0.2 * df["daily_data_gb"] +
    0.1 * df["charging_freq"]
)

df["usage_score"] = df["usage_score"].round(2)
def behaviour_classifier(score):
    if score < 2.0:
        return "Minimal"
    elif score < 3.5:
        return "Light"
    elif score < 5.0:
        return "Moderate"
    elif score < 6.5:
        return "Heavy"
    else:
        return "Dangerous"

df["behaviour_category"] = df["usage_score"].apply(behaviour_classifier)
df["behaviour_category"].value_counts(normalize=True) * 100
df.groupby("age_group")["usage_score"].mean()
clean_path = "cleaned_mobile_usage.csv"
df.to_csv(clean_path, index=False)

print("Cleaned dataset saved:", df.shape)
df = pd.read_csv("cleaned_mobile_usage.csv")
df
