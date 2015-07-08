## Exploratory Data Analysis - Course Project 1

To reproduce each of the plots individually, run `source('scripts/plotN.R)` from the root directory (Where N=1,2,3,4).  
To reproduce all of the plots at once, run `source('scripts/runnall.R)` from the root directory.
Each of the plot scripts calls **scripts/loaddata.R**, which downloads & conditions the data. 
The conditioned data is stored into **household_power_consumption.rds** for subsequent runs.

**NOTE** - you may have to modify the `download.file(...)` method in loaddata to use curl if you are running this on MacOSX/Linux.  I wrote and tested this on Windows.

The result plots are stored in the **plots/** directory.

