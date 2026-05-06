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
        "jupyter nbconvert --to notebook --execute --output acquire_fred_data_executed.ipynb \"Acquire Fred Data/acquire_fred_data.ipynb\""

rule clean_election:
    input:
        "Clean Election Data/extract_election_data.ipynb",
        "Clean Election Data/electionresults.csv"
    output:
        "Clean Election Data/election_results_1976_2024.csv"
    shell:
        "jupyter nbconvert --to notebook --execute --output extract_election_data_executed.ipynb \"Clean Election Data/extract_election_data.ipynb\""

rule fuse:
    input:
        "Fuse Data/fuse_files.ipynb",
        "Acquire Fred Data/fred_unemployment_raw.csv",
        "Clean Election Data/election_results_1976_2024.csv"
    output:
        "Fuse Data/fused.csv",
        "Fuse Data/fused.csv.sha"
    shell:
        """
        python -c "import shutil; shutil.copy('Acquire Fred Data/fred_unemployment_raw.csv', 'Fuse Data/fred_unemployment_raw.csv')"
        python -c "import shutil; shutil.copy('Clean Election Data/election_results_1976_2024.csv', 'Fuse Data/election_results_1976_2024.csv')"
        jupyter nbconvert --to notebook --execute --output fuse_files_executed.ipynb \"Fuse Data/fuse_files.ipynb\"
        python -c "import os; os.remove('Fuse Data/fred_unemployment_raw.csv')"
        python -c "import os; os.remove('Fuse Data/election_results_1976_2024.csv')"
        """

rule analyze:
    input:
        "Analyze Data/election_data_analysis_and_visualization.ipynb",
        "Fuse Data/fused.csv"
    output:
        "Analyze Data/election_data_analysis_and_visualization_executed.ipynb"
    shell:
        """
        python -c "import shutil; shutil.copy('Fuse Data/fused.csv', 'Analyze Data/fused.csv')"
        jupyter nbconvert --to notebook --execute --output election_data_analysis_and_visualization_executed.ipynb \"Analyze Data/election_data_analysis_and_visualization.ipynb\"
        python -c "import shutil; shutil.move('election_data_analysis_and_visualization_executed.ipynb', 'Analyze Data/election_data_analysis_and_visualization_executed.ipynb')"
        python -c "import os; os.remove('Analyze Data/fused.csv')"
        """
