### IS 477 Status Report
Michael Patera & Joy Olalusi

Professor Carboni

4/14/2026

### Revisions to Project Plan
Based on feedback received from the project plan, we made a couple edits to the initial plan. First, we provided a URL that links to where the FRED API pulls its data from. Next, we provided background information supporting the validity of our second source, the election data spreadsheet. We also created a release for the project plan, which we didn't do the first time. 

Unrelated to feedback received, we ended up switching responsibilities for data collection and cleaning. Michael will handle the FRED data, and Joy will handle the election data, with Michael responsible for fusing the data together. 

Additionally, we will be starting our analysis in 1976 instead of 1960, since that was the first year where full FRED data was available. 

We also will drop Washington DC from the analysis. Our analysis aims to compare state-level election outcomes with economic indicators such as unemployment, including Washington, D.C. could distort results due to its unique structure

### Michael's Progress
I developed the acquire_fred_data Jupyter notebook to retrieve data via the FRED API and produce the fred_unemployment_raw csv. Additionally, I documented the SHA-256 hash of the dataset to ensure reproducibility and data integrity.

Since we already had experience using the FRED API from a previous lab, developing this notebook was relatively simple. Additionally, since Joy and I had good communication throughout the process, the schemas between the FRED data and the election data closely matched, making record linkage and data fusion much easier. 

Once I completed this step and Joy cleaned the elections data set, I was able to fuse the data together into a format where each observation was a State in a specific election year, with data about both the election result and unemployment available. 

### Joy's Progress 
Furthermore, i proceeded with the cleaning of the election dataset.. Our election data is derived from Daily Kos Elections presidential election results & partisanship scores. This includes data from 1976- 2024. The raw data was originally structured in a way that made analysis difficult, with election years organized across rows and candidate names embedded within the data.or the purposes of our project, we narrowed our focus to elections from 1976 to 2024 to align with the availability of FRED unemployment data. While extracting and cleaning the data, I noticed that the partisanship information was represented in two forms: a directional label (e.g., “R+” or “D+”) and a numerical score. At this point, I had to decide whether to keep only the categorical labels or rely solely on the numerical values. I chose to retain both formats because each provides a different analytical advantage. At the same time, the categorical labels (“R+” or “D+”) preserve the directional context of the data, clearly indicating which party holds the advantage in a given state.

For Data Fusion, as stated before it was made easy through partner communication. Since the FRED dataset reports unemployment data on a monthly basis, we needed to select a time point that best aligned with election outcomes. As a result, we chose to use unemployment data from November, as it corresponds directly with the timing of U.S. presidential elections and is most relevant to our research objective.

### Future Plans
We are perfectly on schedule. With the data being fused, the next step is to begin our analysis of the data.Before beginning our analysis, it is important to clearly define the questions we aim to answer. In our initial project plan, we identified several guiding questions, and we may expand on these if we uncover meaningful trends or patterns during our analysis.

We will also determine our overall analytical approach. One option is to begin with exploratory data analysis, allowing patterns and insights to emerge organically and then connecting those findings back to our original questions. Alternatively, we can take a more structured approach by starting with specific questions and using the data to directly test and answer them. Choosing the right approach will help ensure our analysis is both focused and insightful.

### Challenges
One of the main challenges in this project was aligning two datasets that were structured at different levels of granularity. The election data is organized at a four-year interval by state, while the FRED unemployment dataset is monthly. This required deciding how to meaningfully aggregate unemployment into a single value per election year. Choosing November unemployment helped match the timing of elections, but it still involved a design decision that could affect results and interpretation. Additionally, each row in the original elections dataset was a state and the columns were the years (4 columns per year since there was lots of data to portray per election)

Another major challenge was data cleaning and type consistency. Several columns in the election dataset, such as Democratic % and Republican %, were stored as strings with percent signs, which prevented direct numerical analysis. Similarly, the unemployment rate column initially contained values that were read as strings, causing errors when attempting to compute differences across election cycles. Converting these fields into proper numeric types was necessary before any merging or calculations could be performed.

A third challenge involved ensuring accurate merging across datasets. State name consistency had to be carefully checked, since even minor formatting differences could result in missing matches and NaN values after the join. Additionally, computing the change in unemployment required correct sorting by state and year to ensure that differences were calculated between the proper election cycles.

The last challenge I had was that I was trying to drop Washington D.C. by dropping anything containing the word "District." This didn't work because in the data it was under Washington D.C. I realized this by checking the length of my dataset and noticing the length was 663, not 650 as I expected (50 States by 13 elections).

## Conclusion 
In conclusion, the data cleaning process provided valuable insight into both the structure and flexibility of our dataset, as well as a deeper understanding of its key features. Although the process presented several challenges, working through them strengthened our ability to manage and prepare complex data effectively. As we move forward with our planned analysis, we are well-positioned to apply these improvements and deliver a strong, data-driven project.
