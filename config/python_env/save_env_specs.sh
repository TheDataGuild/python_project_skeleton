# Save conda and pip specs for the active conda environment
# in order to recreate the environment on another machine
conda list -e > conda.spec
pip freeze > pip.spec