# Data Dictionary
## U.S. Presidential Election Results and State-Level Unemployment Rates (1976–2024)

| Variable | Description |
|---|---|
| **Year** | The presidential election year |
| **State** | The U.S. state the record corresponds to |
| **Region** | The geographic region the state belongs to (e.g., Northeast, South, Midwest, West) |
| **Democratic %** | The percentage of the state's popular vote won by the Democratic candidate |
| **Republican %** | The percentage of the state's popular vote won by the Republican candidate |
| **P.S.** | Partisan Score — a raw measure of a state's partisan lean based on vote share |
| **P.S. Score** | A normalized or scaled version of the Partisan Score used for cross-year comparisons |
| **National Winner** | The name of the winning presidential candidate along with their party initial (e.g., Biden (D), Trump (R)) |
| **State Winner** | The party that won the presidential election in that state that year (e.g., Democratic, Republican) |
| **ElectionYear_Unemployment** | The state's unemployment rate (%) in the presidential election year |
| **Change_Since_Last_Election** | The change in a state's unemployment rate (percentage points) since the previous presidential election year |
| **switched** | Binary indicator of whether the state switched its winning party from the previous election (1 = switched, 0 = stayed the same, NaN = 1976, first election in dataset) |
