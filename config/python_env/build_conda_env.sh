# Create a DataGuild conda environment based on the conda and pip specs
conda create --name DataGuild --file conda.spec
source activate DataGuild
pip install -r pip.spec
