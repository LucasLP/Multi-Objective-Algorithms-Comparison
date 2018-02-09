#############################################################
#		ExecuteJMetal 	::R functions::
#
#	Author: Lucas Prestes		lucas.prestes.lp@gmail.com
#
#############################################################
#			SCRIPT START HERE
#
#	These are examples of how to call the methods
#
#############################################################

source("main.R") #load these functions

algorithms <- c("MOEADDRA","NSGAII","IBEA")


png("scatter-Plot-UF7-UF8.png", height=800, width=1600, pointsize=11, res=250)
par(mfrow=c(1, 2))
objectivePoints("UF7", algorithms)	
objectivePoints3D("UF8", algorithms)	



