# olympichasse
Hasse Diagram generator based on 2016 Oympic medal tally

This R program generates hasse diagram form the medal tally csv file. For working change the path to the file. Also you should have the library hasseDiagram installed for plotting.

The relation used is

`num_gold(x) >= num_gold(y) & ((num_gold(x) + num_silver(x)) >= (num_gold(y) + num_silver(y))) & ((num_gold(x) + num_silver(x) + num_bronze(x)) >= (num_gold(y) + num_silver(y) + num_bronze(y)))`

The following figure shows the hasse for 13 countries

![hasse](https://github.com/jestinjoy/olympichasse/blob/master/hasse.png)

Plotting is made using R package [hasseDiagram](https://cran.r-project.org/web/packages/hasseDiagram/index.html) which inturn depends on [Rgraphviz](http://bioconductor.org/packages/release/bioc/html/Rgraphviz.html)

