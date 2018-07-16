# Multi-Objective-Algorithms-Comparison
Comparison of MOEAs with statistical methods.

This is a independent statistical module for MOEA data. The repository <a href="https://github.com/LucasLP/ExecuteJMetal/">ExecuteJMetal</a> have a auxiliar java code if you need.
<br>

Install some programs<br>
<ol type="1">
	<li> You need <b>R Language</b> - for .R files<br>
		<code>sudo apt-get update</code><br>
		<code>sudo apt-get install r-base</code><br>
		<code>sudo apt-get install r-base-dev</code><br>
		<ol type="1">
		<li> Install <a href="http://iridia.ulb.ac.be/irace/">Irace:</a><br>
		  <code>R</code><br>
		    <code>install.packages("irace") </code></li>
		<br>
		<li> Install <a href="https://cran.r-project.org/web/packages/scatterplot3d/index.html">Scatterplot3D</a>, used in new experiment components:<br>
		  <code>R</code><br>
			<code>install.packages("scatterplot3d", repos="http://R-Forge.R-project.org") </code></li>
		<br>
		<li> Install <a href="https://cran.r-project.org/web/packages/PMCMR/PMCMR.pdf"> PMCMR </a><br>
		<code>R</code><br>
			<code>install.packages("PMCMR") </code></li>
		<br>
		</ol>
	</li>
	<li> You need <b>LaTeX</b> - For .tex files<br>
		<code>sudo apt-get install texlive-full</code><br>
		<code>sudo apt install texlive-latex-base</code><br>
		<code>sudo apt install texlive-generic-extra</code><br>
		<code>sudo apt-get install texlive-latex-extra</code><br>
		<code>sudo apt-get install texlive-science</code><br>
	</li>
</ol> 


<hr>

The Scatter Plot of point can be found at "Plots/ScatterPlot.R".<br>
You can import the scripts and use, like:
<code>R</code><br>
<code>source("main.R")</code><br>
<code>algorithms = c("MOEADDRA","NSGAII","IBEA")</code><br>
<code>objectivePoints("UF7", algorithms)</code><br>
<code>objectivePoints3D("UF8", algorithms)</code><br>

<br>
<img src="examples/scatter-Plot-UF7-UF8.png"><br>

<hr>
<h2>Functions avaible</h2>
#	loadData(algorithm, instance) #Return the data file from instance ant indicator<br>
#	setBenchmark(benchmark)<br>
#	bestHV(algorithm, instance)<br>
#	bestIGD(algorithm, instance)<br>
#	bestEP(algorithm, instance)<br>
#	bestIndicators(algorithm, instance)<br>
#	setBenchmark(benchmark) #example, send "UF" and it will return a array with all of instances in this benchmark<br>
#<br>
	source("./Statistics/Counter.R")<br>
#		countWinners(algorithms, instances)<br>
#		countAll(algorithm, instance)<br>
#		countAllinBenchmark(algorithm, benchmark)<br>
<br>
<br>
<br>
	source("./Statistics/MeanAndStandardDeviation.R")<br>
#		meanAndStandardDeviationTable(OutputFile, algorithms, problems, indicator) #tex<br>
#<br>
	source("./Tex/latexFunctions.R")<br>
#	#### LATEX FUNCTIONS #### <br>
#		latexCreate(file)<br>
#		latexHeader(file)<br>
#		latexNewSection(file, section)<br>
#		latexTail(file)<br>
#  	latexTableHeader(OutputFile,indicator, caption, tabularString, latexTableFirstLine)<br>
#		latexTableLine(file, line, best)<br>
#		latexTableTail(file)<br>
#		latexWinnersTable(file, problem, algorithms)<br>
#		winnerTables(algorithms, benchmarks) #this files generate a tex file of winner algorithms <br>
#<br>
	source("./Plots/ScatterPlot.R")<br>
#	#### POINT & LINE CHART ####<br>
#		objectivePoints(instanceName, algorithmsNames)<br>
#		objectivePoints3D(instanceName, algorithmsNames)<br>
	source("./Plots/LinePlot.R")<br>
#		linePlotEvolution(instance, indicator, algorithmsNames)<br>
<br>
<br>
<br>
<br>
	source("./Statistics/Kruskal.R")<br>
#  #### Kruskall-Wallis ####<br>
#		KruskallWallisTest(algorithms, instance,indicator) #this will print in terminal the comparison of all algorithms<br>
#		kruskalMain(algorithms,problems,indicator)<br>
<br>
#	#### R functions of JMetal (modified) ####<br>
#<br>
	source("./Statistics/Wilcoxon.R")<br>
#		wilcoxonMain(algorithms,problems,indicator)<br>
#<br>
	source("./Plots/BoxPlot.R")<br>
#		JMetalBoxplot(algorithms, indicator, problem)<br>
<br>
<br>
	source("./Tex/latexStatisticalTests.R")<br>
#		latexMain(algorithms, benchmark)
