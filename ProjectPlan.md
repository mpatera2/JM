### IS 477 Project Plan 

Michael Patera & Joy Olalusi

Understanding the Relationship Between State Unemployment and Presidential Election Voting Patterns


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

## Datasets
We will pull state-level unemployment data from FRED

We will pull election results from the link below: 
https://docs.google.com/spreadsheets/d/1D-edaVHTnZNhVU840EPUhz3Cgd7m39Urx7HM8Pq6Pus/edit?gid=29622862#gid=29622862 

These data sets will be integrated together because both unemployment data and election data can be analyzed at the state level. 

## Timeline

## Constraints
A few challenges come to the top of my mind when I think about this project, however they all seem manageable. Below are the ones I have thought of so far:

Data Integration - The datasets may use different names for each state (IL vs Illinois)
Data Integration - Unemployment data is monthly, while election results are every 4 years. I'll have to decide if we want to consider unemployment in the election month, average unemployment during the year, or change in unemployment since the previous election. 
Data Integration - The datasets may use different time formats

Data Availability - Some state unemployment data may start later than 1960. As a result may have to adjust the time range of our analysis. 

Election Results - In 1968, third party candidate George Wallace won 46 electoral votes. This may cause an error if we decide to encode the data in a manner like 1 = Democrat and 2 = Republican. 


