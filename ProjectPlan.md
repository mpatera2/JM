### IS 477 Project Plan 

Michael Patera & Joy Olalusi

Professor Carboni

3/10/2026

### Understanding the Relationship Between State Unemployment and Presidential Election Voting Patterns


## Overview

The goal of our project is to conduct a deep dive into the relationship between unemployment data and presidential election voting patterns. We are interested in questions like the relationship between unemployment and how frequently states switch sides, the average unemployment rate between republican and democrat states, how an increase in unemployment rates affects the probability of a state switching parties, and more. 

To do this, we need to aggregate state-level unemployment data from November of each election year. We will go back to 1960, which is the most recent election where all 50 states were in the Union. We will be dropping the District of Columbia from our analysis because although they receive votes, they are not a state (and besides, the district has voted democrat in every election, so there are no interesting insights to extract). 

## Team

While we plan on working collaboratively on all elements, below is a tentative plan on who will focus on what, although this is subject to change:

# Michael Patera
Data cleaning of the FRED data set 

Data cleaning of the election data set

Statistical analysis

# Joy Olalusi
Acquisition of the FRED data set using the API

Visualization of results

Written analysis

## Questions to Answer
Our questions are meant to point to determining if there is a relationship between state unemployment and presidential voting. To further our analysis we want to see if there are patterns within these relationships. Below are examples of questions that we will use for our analysis.

Can unemployment levels predict whether a state votes Republican or Democrat in a presidential election?

Are large increases in unemployment associated with higher probabilities of a state flipping parties?

What is the relationship between changes in state unemployment rates and the probability that a state switches presidential parties?

Are large decreases in unemployment associated with higher probabilities of a certain party staying in power?

Based on voting trends, do voters care more about unemployment now or in the mid/late 1990s?

Which states generally tend to have higher unemployment?

Do states who vote for the winning candidate tend to have more favorable unemployment outcomes over the next 4 years?
## Datasets
We will pull state-level unemployment data from FRED (Federal Reseverve Economic Database) 


This data base is a reliable source as the Bureua of Labor and statistics report consistent historical and reliable data. We need chose this dataset because we need unemployment rates over a long enough period to notice cycles of patterns in relation to presidential elections.

We will pull election results from the link below: 
https://docs.google.com/spreadsheets/d/1D-edaVHTnZNhVU840EPUhz3Cgd7m39Urx7HM8Pq6Pus/edit?gid=29622862#gid=29622862

Our second dataset is related to presidential election results. It includes variables such as the year of the election, the state, the region, and the presidential candidates participating in the given election year. The dataset also includes partisanship scores, which represent the political leaning of a state based on which party won the election. These scores help provide additional context about whether a state tends to lean more Democratic or Republican. This information is useful for our analysis because it allows us to compare political trends across states and election years and examine how these trends may relate to changes in unemployment rates

These data sets will be integrated together because both unemployment data and election data can be analyzed at the state level. 

## Timeline
After finalizing our project plan, we will come to an agreement on the next steps. First, we will focus on the data cleaning process for our datasets. This includes handling missing values, scaling the data, and identifying the most relevant variables for our target research questions, which Michael will primarily be responsible for. After the data cleaning stage is completed, we will brainstorm ways to address the constraints and gaps within our analysis. This step is important because it will help strengthen the reliability of our results. Joy will then draft the logical analysis based on the statistical and qualitative findings from the data. Although we each have assigned roles in the project, we will continue to collaborate by helping, guiding, and reviewing one another’s contributions throughout the process.

## Constraints
A few challenges come to the top of our minds when we think about this project, however they all seem manageable. Below are the ones we have thought of so far:

Data Integration - The datasets may use different names for each state (IL vs Illinois)

Data Integration - Unemployment data is monthly, while election results are every 4 years. We will have to decide if we want to consider unemployment in the election month, average unemployment during the year, or change in unemployment since the previous election. 

Data Integration - The datasets may use different time formats

Data Availability - Some state unemployment data may start later than 1960. As a result may have to adjust the time range of our analysis. 

Election Results - In 1968, third party candidate George Wallace won 46 electoral votes. This may cause an error if we decide to encode the data in a manner like 1 = Democrat and 2 = Republican. 

Overall, it seems like most of our potential constraints relate to cleaning and integrating the data in the first place. Once that is done, we believe that our analysis will be very straightforward. There are many different directions we can take our analysis, and we will be sure to dive deeper into any interesting patterns that we come across. 

## Gaps
Deciding Data Scaling and Consistency- The approach used to scale or standardize data must remain consistent across the analysis. Additionally, the number of electoral college votes allocated to each state changes over time due to reapportionment following the U.S. census. These changes must be considered when interpreting election outcomes, as the political weight of states shifts over time.

Defining Unemployment in Economic Context - Another challenge is determining how unemployment rates should be interpreted in relation to economic conditions. Unemployment may reflect different phases of the business cycle (such as expansion or recession), and voters may respond to broader economic trends rather than a single unemployment measurement at the time of the election.



