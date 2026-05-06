# Unemployment and the Partisan Shift: A State-Level Analysis of U.S. Elections (1976–2024)

- Joy Olalusi
- Michael Patera

## Project Summary 
Throughout the semester, we developed a project analyzing U.S. presidential elections alongside unemployment rates. Every four years, Americans cast their votes for president, but these decisions are not shaped by a single moment like Election Day. Instead, voting behavior is influenced by broader factors such as economic conditions, shifting demographics, and voter sentiment. Among these, unemployment rates are a key variable.

We were particularly interested in exploring whether there is a relationship between unemployment rates and presidential election outcomes. Our motivation stems from a central question in political science: while economic conditions are known to influence voting behavior, how does this effect vary at the state level? For example, a state with historically strong union ties may respond differently to unemployment changes than one with a more service-based economy.

To conduct this analysis, we collected historical presidential election results alongside state-level unemployment data spanning multiple election cycles. This required careful data cleaning and alignment, as election data and labor statistics are reported on different schedules and sourced from different agencies. After merging and verifying the datasets, we structured our analysis around two central research questions:

1. Does an increase in unemployment since the previous election raise the likelihood that a state switches its winning party?
2. Does the relationship between a state's unemployment rate and its partisan lean (P.S. Score) strengthen or weaken over time?


Our findings revealed that the relationship between unemployment and electoral outcomes is more nuanced than a simple cause-and-effect. While unemployment change proved to be a weaker predictor of party switching than initially expected, our longer-term analysis uncovered a notable shift in how unemployment and partisan lean relate to one another across decades, a pattern that points to a broader realignment in American electoral politics. These results are explored in depth in the sections that follow.

Numerically, we were able to draw two key conclusions from our analysis. First, unemployment change proved to be a weaker predictor of party switching than we initially expected. Across all unemployment change brackets, states switched their winning party at roughly similar rates, and our logistic regression model led to this analysis,  by producing small coefficients and almost flat predicted probability curves. The model showed that neither election-year unemployment nor the change in unemployment since the prior election were strong enough variables on their own to reliably predict whether a state would flip parties.
Secondly, when examining the correlation between state unemployment rates and partisan lean scores across every presidential election from 1976 to 2024, a directional reversal emerged over time between the Republican and Democratic parties. In earlier decades, higher unemployment was associated with more Democratic-leaning states, consistent with the historical alignment between labor and the Democratic Party. However, beginning in the 2000s and becoming more pronounced through 2016 and 2020, that relationship flipped.  States with higher unemployment increasingly leaned Republican. This shift was statistically significant in several recent election years, pointing to a broader electoral realignment in which economic distress has not disappeared as a political force, but has migrated across party lines.


 ## Data Profiles 

**1.FRED Unemployment Rates**

  The first dataset is unemployment data pulled from the federal reserve bank of St. Louis. The cleaned data set can be found in the "Acquire FRED Data" folder, under the title "fred_unemployment_raw.csv." Each oservation is a specific state in a specific month, dating back to 1976. The attributes are as follows:

**date:** date the information was collected, in the format YYYY-MM-DD (each one on the first day of the month)

**state:** the name of the state ex. 'Alabama'

**series_id:** this is how the API pulls the data, for example 'ALUR' pulled unemployment rate (UR) for Alabama

**unemployment_rate:** the unemployment rate, calculated by taking the total number of unemployed persons divided by the total size of the labor force, multiplied by 100. 

**realtime_start/end:** The date that we pulled the data (irrevelant for analysis and will be dropped later)

In terms of constraints, there are a number of requirements and prohibitions applicable to this data set. For example, if instead of a project, this was an application, we would be required to state that "This product uses the FRED® API but is not endorsed or certified by the Federal Reserve Bank of St. Louis." We also are not allowed to use the FRED API for any activity in connection to "spyware, adware, viruses, worms, defects, Trojan horses, or other malicious programs or code, counterfeit goods, items subject to U.S. embargo, unsolicited mass distribution of email ("spam"), multi-level marketing proposals, hate materials, hacking, surveillance, interception, descrambling equipment, libelous, defamatory, harassing, obscene, pornographic, abusive or otherwise offensive content, prostitution, body parts and bodily fluids, stolen products and items used for theft, fireworks, explosives, and hazardous materials, government IDs, police items, gambling, professional services regulated by state licensing regimes, non-transferable items such as airline tickets or event tickets, weapons and accessories."

Similarly, there were no ethical constraints we encountered, because there are no real ethical barriers with our project. 

The reason this dataset was chosen for our project is becuase the FRED API is the go to source for data regarding the US economy. We knew that data from this source would be seen as reliable and would be easy to handle from a data acquisition standpoint. 

**2. Presidential Election Results**

Our second dataset is the presidential election state-level data derived from Daily Kos Elections.The cleaned dataset can be found in the "Clean Election Data" folder, under the title "election_results_1976_2024." Each observation represents a specific state in a specific presidential election year, spanning from 1976 to 2024. The attributes are as follows:

**Year:** The presidential election year, recorded as a four-digit integer (e.g., 1976, 1980).

**State:** The name of the U.S. state the observation corresponds to (e.g., "Alabama").

**Region:** The geographic region the state belongs to, categorized as Northeast, South, Midwest, or West.

**Democratic %:** The percentage of the state's popular vote received by the Democratic presidential candidate, expressed as a decimal or percentage.

**Republican %:** The percentage of the state's popular vote received by the Republican presidential candidate, expressed as a decimal or percentage.

**P.S.:** The raw Partisan Score for the state, a measure of partisan lean derived from the Democratic and Republican vote shares.

**P.S. Score:** A normalized or scaled version of the Partisan Score, used to enable consistent comparisons of partisan lean across election years.

**National Winner:** The name of the candidate who won the national presidential election that year, along with their party initial (e.g., Biden (D), Trump (R)).

In terms of legal constraints regarding the Daily Kos Elections dataset it is authored by Stephen Wolf and David Nir, under the Daily Kos. For academic uses proper citaiton includes the authors, title, publisher, date, and URL as specified in their citation guide. The underlying election results are sourced from Dave Leip's Atlas of U.S. Presidential Elections, which is itself a proprietary database, meaning the data passes through two layers of ownership before reaching our project .The spreadsheet is publiclhy accesible , but credit must be given in any academic or journalist use.In terms of ethical constraints, working with this data has raised no flags. There is no personal identificators , votes are only shown at state level. Partisanship Score methodology is transparently documented, and regional classifications are drawn from the U.S. Census Bureau, a neutral government source. The Daily Kos dataset was esssential to our project because it was able to provide raw election results, and significantly partisan score precalculated. This was very important for our second research question, allowing us easier analysis between unemployment and partisan lean.

## Data Quality - Michael for FRED, Joy for elections
[500-1000 words] Summary of the quality assessment.

**FRED**
Pulling data directly from the FRED API is a high quality data source. Assesing the accuracy, completeness, timeliness, consistency, and interprebility, supports this view. 

Accuracy is a major strength of FRED data, because it aggregates data from the Bureau of Labor Statistics (BLS), Bureau of Economic Analysis (BEA), and Federal Reserve banks. Since there are rigorous methods behind this data collection, the data collection is considered trustworthy. From time to time, macro data is retroactively revised to reflect new information, so it is important to reflect revision histories. 

In our case, the unemployment data is very complete. We made sure to begin our analysis in a year where all the states have data available. Other data from FRED may be less complete, however that was not an issue for us. 

Timeliness is another important factor, however since the most recent data we need is from last election cycle, it is not an important factor for our project.

Consistency was also strong with our dataset, since we only used one metric (unemployment).

Finally, as covered above, the information we pulled was very easy to interpret, supported by metadata provided by FRED. The variable names were simple, however users not familiar with the data could potentially be confused. 

The workbook "acquire_fred_data.ipynb," clearly shows how the data was acquired using the FRED API. 

## Data Cleaning 
**FRED**

All of the data cleaning is included in the "acquire_fred_data.ipynb" notebook in the "Acquire FRED Data" folder. Below is a summary of the operations done to clean the data:

1. First, we broke the 'date' column into month and year.
2. Next, we created a new dataframe consisting only of data from November (election month). This was made simple due to the previous step.
3. Finally, we dropped the unecessary columns.

After this, the FRED data set was ready to merge. 

**Election Data**

Within the file, you are able to find cleaned presidential data from "extract_election_data.ipynb" within the "Clean Election Data" folder.This section below details the data cleaning steps taken prior to analysis.

1. First we visually analyzed the csv of our data. The dataset from Daily Kos organized key attributes horizontally , making it hard to call specific attributes like Year, P.S Score, and Democratic/ Republican candidates, features were just labeled as numbers
2. To address this, we manually defined a column mapping that identified exactly which column positions corresponded to Democratic %, Republican %, and Partisan Score for each election year from 1976 to 2024. This allowed us to loop through the raw data row by row and restructure it into a clean long-format table where each row represents one state in one election year.
3. Once restructured, we derived the State Winner column by comparing each state's Democratic and Republican vote shares and labeling the winning party accordingly. National winners were also added manually using a predefined dictionary.
4. Finally, the cleaned dataset was exported as election_results_1976_2024.csv and a SHA-256 checksum file was generated to confirm the integrity of the output file before merging it with the FRED unemployment data.


## Findings - Joy
Our analysis centered on two research questions examining the relationship between state level unemployment rates and U.S. presidential election outcomes from 1976 to 2024. The findings from both questions painted us a picture of how economic conditions interact with electoral behavior over time. Findings reference numerics and visualization figures from the election_data_analysis_and_visualizations.ipynb in the Analyze Data folder.

For our first research question, we investigated whether an increase in unemployment since the previous election raises the likelihood that a state switches its winning party. To answer this, we created two key columns: the change in unemployment since the prior election and a binary switched column. Across all 600 state election observations from 1980 to 2024, the overall switch rate was 11.8%, meaning the large majority of states consistently voted for the same party from one cycle to the next. We then fit a logistic regression model using both unemployment change and election year unemployment as predictors of party switching. The model returned a coefficient of -0.0586 for unemployment change and 0.1949 for election year unemployment, neither of which indicated a meaningful effect on the likelihood of switching. While the model reported an accuracy of 88.17%, this figure is misleading, as the model predicted zero switches across all 600 observations, achieving high accuracy simply by always predicting a state would stay the same due to the class imbalance of 529 non-switches versus only 71 actual switches.

Figure 1 shows the switch rate broken down by the unemployment change bracket. States where unemployment rose by more than 3 percentage points had the highest switch rate at around 19%, however this group contained only 26 observations, making it the least reliable bracket. The pattern across all brackets is inconsistent rather than showing a clear upward trend, supporting the conclusion that unemployment change is not a strong driver of party switching. Figure 2 reinforces this through the logistic regression probability curve, which runs nearly flat across the full range of unemployment change values, starting around 17% on the far left and declining to around 8% on the far right, confirming that unemployment change alone does a poor job of predicting whether a state will flip parties.

For our second research question, we examined whether the relationship between a state's unemployment rate and its partisan lean strengthened or weakened over time by calculating the Pearson correlation coefficient between the two variables for each election year. The results showed a pattern more complex than a simple strengthening or weakening. Across the 13 election years examined, four produced statistically significant results at the p < 0.05 level. In 1980 the correlation was r = 0.34 (p = 0.017), in 1992 it rose to r = 0.42 (p = 0.003), in 2012 it was r = 0.31 (p = 0.030), and in 2020 it reached its highest value of r = 0.50 (p = 0.000). All four significant years returned positive correlations, meaning states with higher unemployment tended to lean more Democratic in those cycles.
Figure 3 displays the Pearson r values across all election years, with gold markers highlighting the four significant years. Figure 4 presents scatter plots for 1980, 1992, 2012, and 2020, each showing a positive regression slope that grew steeper over time, with 2020 being the strongest. Together these visualizations show that in years where the relationship was meaningful, higher unemployment consistently pointed toward stronger Democratic lean.
Taken together, our findings suggest that unemployment is a real though limited factor in electoral outcomes. It does not reliably predict party switching from one cycle to the next, but it does carry meaningful information about partisan identity in certain election years, particularly those defined by heightened economic concern. The four statistically significant years all coincided with periods of national economic tension, suggesting unemployment becomes a stronger signal during economically charged elections rather than uniformly across all cycles. Ultimately, unemployment is one piece of a much larger electoral puzzle, one that interacts with broader voter sentiment and national conditions in ways that a single variable model cannot fully capture.


## Future work
While I am proud of our work, we simply scratched the surface of what this analysis could reveal. Not only could we go much deeper in terms of the relationship between unemployment and voting patterns, but we can also analyze other macro indicators. Each of these indicators could tell a different part of the relationship between the economy and voting patterns. 

The first one that comes to mind is CPI (Consumer Price Index). This tracks the movement of prices in the economy, and is the main metric the FED uses to track inflation. When consumers see the prices of items like gas, eggs, milk, bread, beef, poultry, soap, and other household staples increase beyond what they can afford, that would also cause frustration come voting season. Voters who feel like their economic position has squeezed since the last election frequently hold the incumbent party responsible, regardless if they are the true reason. CPI is interesting to us because it is the only metric that will always directly impact every American. While someone may not have been laid off, they certainly feel the price increase. We could also go deeper, and analyze which specific categories of goods affect voting patterns. Maybe voters in rural states care more about energy prices, and less about dairy prices since they live closer to farms. Perhaps Urban consumers are the opposite. The depth of CPI measurers could open up many questions worth pursuing.

GDP could also be another interesting. Raw GPD figures would likely be misleading, since the US population has drastically grown over the past century. We would likely want to analyze GDP per capita, to normalize for population increases over the past few decades. GDP per capita may also be misleading, because the affects of inflation may artificially increase that figure. REAL GDP per capita would be the metric we want to use, because this cuts through all the noise and measures the real economic output of the average American. While GDP figures tend to impact the average American less than unemployment and CPI, GDP sends signals about the broader economy's performance. 

Other less common indicators could be interesting to analyze as well. Household debt levels and consumer confidence are two that stick out to me. When the average American is swimming in debt, they are often looking for a lifeline. Political challengers often position themselves as that lifeline. Consumer confidence is interesting to me, because instead of looking at the numbers, we are looking straight into the minds of the consumer. Regardless of how the economy is actually doing, how do you feel it is doing? When voters step up to the ballot box, they aren't thinking so much about unemployment rates and CPI, but instead how they feel about their economic position. 

No single analysis could provide a complete picture, and political scientists around the nation have likely taken approaches to answering similar questions with similar methods. The science behind voting is incredibly complicated, and the science of economics (some may call it an art), is equally so. Overall, our project did a good job of taking an approach to this complicated concept.

## Challenges 
One of the main challenges we encountered throughout this project came during the data cleaning and fusion stages. Early on, before taking the time to fully understand the structure of the Daily Kos dataset, we jumped straight into a typical cleaning approach, scanning for missing values, searching through columns, and applying standard methods we had used in previous projects. It quickly became clear that this dataset was formatted in a way we had never encountered before. Rather than following a traditional long format where each row represents a single observation, the Daily Kos data organized key attributes horizontally, spreading election years across hundreds of columns with no meaningful headers. Columns were simply labeled as numbers, making it nearly impossible to identify which fields corresponded to Democratic percentages, Republican percentages, or Partisan Scores for any given year. This forced us to slow down, visually inspect the raw file, and manually map out which column positions held the data we needed for each election cycle. It was a time consuming process, but a necessary one that ultimately shaped how we approached the rest of the project.

Once the data was properly structured and merged with the FRED unemployment data, we shifted our focus to analysis. Narrowing our work down to two central research questions required us to engineer several new columns that did not exist in the raw data. For example, creating the switched column meant first identifying each state's winner in the prior election, then comparing it to the current election's result to flag any change in party. Similarly, calculating the change in unemployment since the last election required aligning data across four year intervals, which introduced its own complexity given that unemployment is reported monthly while elections occur every four years. Ensuring these derived variables were calculated correctly and consistently across all 50 states and 12 election cycles required careful testing and validation at each step.

Another challenge that came up during analysis was making sure our logistic regression model was being interpreted correctly. Because party switching is a relatively rare event in the dataset, the model naturally skewed toward predicting that states would not switch, which inflated accuracy metrics without necessarily reflecting a meaningful relationship. Recognizing this imbalance and accounting for it in how we read the classification report was an important part of the process.

While we did a good job of planning our project out before we started, we still faced a couple unexpected challenges at the end when we attempted to reproduce our workflow. In the jupyter notebook used to acquire data from FRED, some sort of the API was down, which was causing problems within our workflow. This took a short amount of time to troubleshoot, and so we had to implement a section of the code that would bypass any states where information was down. 


## Reproducibility
We decided to use snakemake in order to automate our workflow. To reproduce our workflow, you will need a machine with Anaconda/Miniconda installed. Additionally, you need to acquire a FRED API key which can be obtained for free at fred.stlouisfed.org. 

In your command prompt, start off by cloning our repository, then navigate into it. You then need to replicate and activate our environment:

git clone https://github.com/mpatera2/JM

cd JM

conda env create -f environment.yml

conda activate election-pipeline


Like we mentioned, you need your own FRED API Key. To insert your API Key, run the following line:

echo API KEY HERE> "PATH HERE\Acquire FRED Data\apikey.txt"

Example (not a real API Key)
echo 8de6047623ab27c0163950740d65k807> "C:\Users\7mich\JM\Acquire FRED Data\apikey.txt"

Finally, you can run the pipeline:
snakemake --cores 1

To verify that your output matches ours, you can take a look at your final notebook and compare to ours:
cd Analyze Data
jupyter notebook

Click on election_data_analysis_and_visualization_executed, and compare to the version in our analyze data folder. A couple notes:
Due to the API data issue identified earlier, there may be slight variances. For example, at the time of writing this, a couple states were having trouble pulling API data. This resulted in the 'Switch Rate by Unemployment Change Bracket' chart to have one observation bucketed in the -3 to -1 box instead of the -1 to 1 box. The rest of the charts are still nearly identical, however due to the API issue, checking SHA-256 checksums may indicate different results. Overall, I enjoyed the process of learning how to use Snakemake. 

**Summary of the Snakefile itself:**

acquire_fred: pulls data from the FRED API into a CSV
clean_election: takes the raw election data and converts it into a usable CSV that can be integrated with the FRED data
fuse_data: Performs a couple final cleaning items on each data set (FRED and election) and combines into one
analyze_data: Takes the fused data and performs analysis


### References - Michael for FRED, Joy for elections
 Formatted citations for any papers, datasets, or software used in your project.
 
U.S. Bureau of Labor Statistics, Unemployment Rate by State [Series IDs: ALUR, AKUR, ... WYUR], retrieved from FRED, Federal Reserve Bank of St. Louis; https://fred.stlouisfed.org/release?rid=112, March 3, 2026
