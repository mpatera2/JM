rule run_all:
    input:
        "Fuse Data/fused.csv",
        "Analyze Data/election_data_analysis_and_visualization_executed.ipynb"

rule acquire_fred:
    input:
        "Acquire Fred Data/acquire_fred_data.ipynb",
        "Acquire Fred Data/apikey.txt"
    output:
        "Acquire Fred Data/fred_unemployment_raw.csv",
        "Acquire Fred Data/fred_unemployment_raw.csv.sha"
    shell:
        "jupyter nbconvert --to notebook --execute --output acquire_fred_data_executed.ipynb \"Acquire
