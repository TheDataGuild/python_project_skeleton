Prerequisites
-------------

May 2014

In order to recompute the analytic results found within the notebooks in 
the /final subdirectory, a number of steps are required to set up the necessary
environment on a particular machine. 

1. Download the original source data. \<add instructions on where to find the 
particular .tar.gz archive(s) this project requires\> 
Retrieve <name of .tar.gz archive>, uncompress and expand the archive and
note the location of the data on the target machine. 

2. Clone the <repository name> repository on the target machine. 

3. Enter the /<repository name>/config/env_specs subdirectory to define
target machine specific configuration files. There are two files you will need 
to create. The first is a source_data_locations_<username>_<machine>.ini file. 
This file specifies the location of the original source data. Mutiple data 
sources can be specified in the file. We only need to point to the location of 
the source data downloaded above. Copy an existing source data location file 
and rename it with your username and machine name. Within the file, edit the 
username and machine name in the comments and modify the path for the <name of 
source data> source data to be the path where you stored the data on the target 
machine. 

4. The second configuration file to create is env_variables_<username>_<machine>.sh.
The only required environment variable is PYTHONPATH. This must be set to the
location of the <repository name> repository on the target machine. 

5. Be sure to check in these configuration files to the repository for future 
reference.

6. In the shell that you'll be operating from, you are now ready to configure 
your environment. In /<repository name>/config/env_specs, execute 
'source config_env.sh <username> <machine>'. This will read the corresponding 
configuration files, ask you to select the source data to use and set the 
environment variables you specified for this environment. 

7. The next step is to recreate the Python environment in which this code will 
execute. We'll accomplish this using conda from Continuum Analytics. If you 
have not already installed conda, see http://conda.pydata.org/miniconda.html#miniconda
to get started. 

8. Within /<repository name>/config/python_env are package specifications for the 
Python environment that will be recreated. Execute 'source build_conda_env.sh' 
which will create a conda environment called DataGuild and activate that 
environment for you to use in the shell. '(DataGuild)' will be prepended to your 
prompt once the environment is active. 

9. At this point, the environment is aware of the source data location and the
necessary Python packages are available. The next step is to build all of the
derived data sources referenced by Python scripts throughout the repository. This 
may take some time to fully execute. The data transformations producing the 
derived data all reside in /<repository name>/source_data_transformations. To 
build all of the derived data sources, execute 'source build_all_derived_data.sh' 
from within this subdirectory. 

10. Once this process completes successfully, you are now ready to load and 
recompute any results in the IPython notebooks located in 
/<repository name>/final.

Enjoy!

Questions? Feel free to reach out to <contact name> at <contact>@thedataguild.com. 
