#################################################################
#			SCRIPT START HERE
#
#	These are examples of how to call the methods
#
#################################################################

source("main.R") #load these functions

#par(mfrow=c(1, 2)) #set number of plot/page   #c(lines, columns)
#pdf("Rplot.pdf", width=15,height=11)#paper="A4")
#png("name.png", height=1800, width=1650, pointsize=11, res=230)

algorithms <- c("MOEADDRA","NSGAII","IBEA","UCBHybrid")
benchmark <- "UF"
instances <- setBenchmark(benchmark)

#latexMain(algorithms, "DTLZ")

png(paste(benchmark,".png",sep=""), height=2080, width=1600, pointsize=11, res=200)
par(mfrow=c(4, 3))

for(instance in instances){
	linePlotEvolutionPT(instance,"HV",algorithms)
}


if(FALSE){
	instance<-"ZDT6"
	png(paste(instance,".png",sep=""), height=800, width=1650, pointsize=11, res=230)
	par(mfrow=c(1, 3))
	meanPlotEvolutionPT(instance,"HV",algorithms)
	#meanPlotEvolutionFinalPT(instance,"HV",algorithms)
	#meanPlotEvolutionPT(instance,"Spread",algorithms)
	#linePlotEvolutionPT(instance,"HV",algorithms)
	#linePlotEvolution(instance,"Spread",algorithms)
	#objectivePoints(instance, algorithms)	
	#objectivePoints3D(instance, algorithms)	
	JMetalBoxplot(algorithms, "HV", instance)
	JMetalBoxplot(c("MOEADDRA","UCBHybrid"), "HV", instance)
	#JMetalBoxplot(algorithms2, "HV", instance)
}

