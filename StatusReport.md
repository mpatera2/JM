### Revisions to Project Plan
Based on feedback recieved from the project plan, we made a couple edits to the initial plan. First, we provided a URL that links to where the FRED API pulls its data from. Next, we provided background information supporting the validity of our second source, the election data spreadsheet. We also created a release for the project plan, which we didn't do the first time. 

Unrelated to feedback recieved, we ended up switching responsibilities for data collection and cleaning. Michael will handle the FRED data, and Joy will handle the election data, with Michael responsible for fusing the data together. 

Additionally, we will be starting our analysis in 1976 instead of 1960, since that was the first year where full FRED data was available. 

### Michael's Progress
I developed the acquire_fred_data Jupyter notebook to retrieve data via the FRED API and produce the fred_unemployment_raw dataset. Additionally, I documented the SHA-256 hash of the dataset to ensure reproducibility and data integrity.

Since we already had experience using the FRED API from a previous lab, developing this notebook was relatively simple. Additionally, since Joy and I had good communication throughout the process, the schemas between the FRED data and the election data closely matched, making record linkage and data fusion much easier. 

### Joy's Progress


### Future Plans
We are perfectly on schedule. With the data being fused, the next step is to begin our analysis of the data. 
