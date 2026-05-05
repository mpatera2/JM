# Title

- Joy Olalusi
- Michael Patera

 ## Project Summary - 
[500-600 words] Description of your project, motivation, research question(s), and any findings.
Throughout the semester, we developed a project analyzing U.S. presidential elections alongside unemployment rates. Every four years, Americans cast their votes for president, but these decisions are not shaped by a single moment like Election Day. Instead, voting behavior is influenced by broader factors such as economic conditions, shifting demographics, and voter sentiment. Among these, unemployment rates are a key variable.

We were particularly interested in exploring whether there is a relationship between unemployment rates and presidential election outcomes. Our motivation stems from a central question in political science: while economic conditions are known to influence voting behavior, how does this effect vary at the state level? For example, a state with historically strong union ties may respond differently to unemployment changes than one with a more service-based economy.

To conduct this analysis, we collected historical presidential election results alongside state-level unemployment data spanning multiple election cycles. This required careful data cleaning and alignment, as election data and labor statistics are reported on different schedules and sourced from different agencies. After merging and verifying the datasets, we structured our analysis around two central research questions:

1. Does an increase in unemployment since the previous election raise the likelihood that a state switches its winning party?
2. Does the relationship between a state's unemployment rate and its partisan lean (P.S. Score) strengthen or weaken over time?

** add findings



 ## Data Profiles - Michael for FRED, Joy for elections
[max 2000 words] For each dataset used, describe its structure, content, and characteristics. Specify the location of the dataset files in your project repository. Discuss any ethical or legal constraints associated with the data and explain how the datasets relate to your questions


** 1. FRED Unemployment Rates**

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

## Data quality - Michael for FRED, Joy for elections
[500-1000 words] Summary of the quality assessment.

**FRED**
Pulling data directly from the FRED API is a high quality data source. Assesing the accuracy, completeness, timeliness, consistency, and interprebility, supports this view. 

Accuracy is a major strength of FRED data, because it aggregates data from the Bureau of Labor Statistics (BLS), Bureau of Economic Analysis (BEA), and Federal Reserve banks. Since there are rigorous methods behind this data collection, the data collection is considered trustworthy. From time to time, macro data is retroactively revised to reflect new information, so it is important to reflect revision histories. 

In our case, the unemployment data is very complete. We made sure to begin our analysis in a year where all the states have data available. Other data from FRED may be less complete, however that was not an issue for us. 

Timeliness is another important factor, however since the most recent data we need is from last election cycle, it is not an important factor for our project.

Consistency was also strong with our dataset, since we only used one metric (unemployment).

Finally, as covered above, the information we pulled was very easy to interpret, supported by metadata provided by FRED. The variable names were simple, however users not familiar with the data could potentially be confused. 

The workbook "acquire_fred_data.ipynb," clearly shows how the data was acquired using the FRED API. 

## Data cleaning - Michael for FRED, Joy for elections
[max 1000 words] Summarize the data cleaning operations you performed and explain how each operation addressed specific data quality issues in your datasets.
**FRED**
All of the data cleaning is included in the "acquire_fred_data.ipynb" notebook in the "Acquire FRED Data" folder. Below is a summary of the operations done to clean the data:

1. First, we broke the 'date' column into month and year.
2. Next, we created a new dataframe consisting only of data from November (election month). This was made simple due to the previous step.
3. Finally, we dropped the unecessary columns.

After this, the FRED data set was ready to merge. 

## Findings - Joy
[~500 words] Description of any findings including numeric results and/or visualizations.
## Future work - either of us
[~500-1000 words] Brief discussion of any lessons learned and potential future work.
## Challenges - whoever didn't do future work can do challenges
[~500 words] Discuss the main challenges you encountered while working on the project.


After pinpointing our curiousity down to the two main questions of our project that answer how the unemployment rate is effected by the election results, we started with our data analysis. Challeneges that stood out while doing so was developing a new column to highlight points in our analysis 

## Reproducing - Michael
We decided to use snakemake in order to automate our workflow. 

### References - Michael for FRED, Joy for elections
 Formatted citations for any papers, datasets, or software used in your project.
 
U.S. Bureau of Labor Statistics, Unemployment Rate by State [Series IDs: ALUR, AKUR, ... WYUR], retrieved from FRED, Federal Reserve Bank of St. Louis; https://fred.stlouisfed.org/release?rid=112, March 3, 2026
