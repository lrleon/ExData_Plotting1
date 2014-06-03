# Instructions for generatng the plots

1- First of all, download the requiered data into the directory of your
  preference.

2- On this directory put the scripts "load-data.R", "plot1.R", "plot2.R",
  "plot3.R" and "plot4.R".

3- Open a R repl 

4- Perform

	source("plotx.R")

The plot x automatically will be drawn on the screen and will be saved
into "plotx.png" file.

You can generate any plot at any order.

The first time that you perform source("plotx.R") the script will unzip,
load and process the data. The following times, provided you not leave
the repl, the data will already be loaded and processed.

You can also perform 

    Rscrip plotx.R

from the shell, but doing thus will cause that the data be loaded for
each execution. It is faster to open a R repl and load each script.
