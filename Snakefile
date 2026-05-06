rule run_all:
    input:
        "Fuse Data/fused.csv",
        "Analyze Data/election_data_analysis_and_visualization_executed.ipynb"

rule acquire_fred:
    input:
        "Acquire FRED Data/acquire_fred_data.ipynb",
        "Acquire FRED Data/apikey.txt"
    output:
        "Acquire FRED Data/fred_unemployment_raw.csv",
        "Acquire FRED Data/fred_unemployment_raw.csv.sha"
    shell:
        "jupyter nbconvert --to notebook --execute --output acquire_fred_data_executed.ipynb \"Acquire FRED Data/acquire_fred_data.ipynb\""

rule clean_election:
    input:
        "Clean Election Data/extract_election_data.ipynb",
        "Clean Election Data/electionresults.csv"
    output:
        "Clean Election Data/election_results_1976_2024.csv"
    shell:
        "cd \"Clean Election Data\" && jupyter nbconvert --to notebook --execute --output extract_election_data_executed.ipynb extract_election_data.ipynb && cd .."

rule fuse:
    input:
        "Fuse Data/fuse_files.ipynb",
        "Acquire FRED Data/fred_unemployment_raw.csv",
        "Clean Election Data/election_results_1976_2024.csv"
    output:
        "Fuse Data/fused.csv",
        "Fuse Data/fused.csv.sha"
    shell:
        "cd \"Fuse Data\" && jupyter nbconvert --to notebook --execute --output fuse_files_executed.ipynb fuse_files.ipynb && cd .."

rule analyze:
    input:
        "Analyze Data/election_data_analysis_and_visualization.ipynb",
        "Fuse Data/fused.csv"
    output:
        "Analyze Data/election_data_analysis_and_visualization_executed.ipynb"
    shell:
        "cd \"Analyze Data\" && jupyter nbconvert --to notebook --execute --output election_data_analysis_and_visualization_executed.ipynb election_data_analysis_and_visualization.ipynb && cd .."
