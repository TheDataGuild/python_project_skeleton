# Create a DataGuild conda environment based on the conda and pip specs
conda create --yes --name DataGuild anaconda=2.1.0
source activate DataGuild
pip install -r pip.spec
