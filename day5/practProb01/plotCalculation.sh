#!/bin/bash

length=60
width=40

areaOfPlot=$(($length*$width))

totalAreaOfPlots=$(($areaOfPlot*25))

echo $totalAreaOfPlots

oneAcre=43560

areaOfPlotAcres=$(($totalAreaOfPlots/$oneAcre))

echo "Area of such 25 plots is "$(($areaOfPlotAcres))"."$(($totalAreaOfPlots%$oneAcre))"acres."
