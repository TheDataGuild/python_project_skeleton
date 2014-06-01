Data Guild Python Project Skeleton v0.1
May 2014

This project skeleton provides some basic capabilities to support 
collaborative data analysis across a number of machines. The most 
general model assumes that multiple team members will be operating
on the code base simultaneously from their local environments. 
The project skeleton simplifies the processes of capturing the 
Python environment specification supporting the project and 
recreating that environment as needed on any machine that has
conda and pip installed. 

To ensure that team members are always operating on the same data, 
we will employ a model where all derived data is defined by 
codified transformations of the original source data. At no time 
will the source data itself be directly modified as the source data 
resides outside of version control. By forcing data transformations 
to happen through code that is under version control, we can 
establish a tight coupling between analytic results and the 
supporting data transformations needed to produce them.

By enforcing this workflow, we ease the pain of synchronizing the 
team during the project and simplify the process of delivering 
reproducible analytic results to our clients.

This workflow is undoubtedly a work in progress and came to life 
after particular challenges arose during a client engagement. 
Please pass along suggestions or make contributions through pull 
requests to improve it!

Chris Diehl
chris@thedataguild.com