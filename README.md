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
		<li> Install <a href="https://cran.r-project.org/web/packages/PMCMR/PMCMR.pdf"> PMCMR </a></li><br>
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

The Scatter Plot of point can be found at "experiment/MyExperiments/comparison/functions.R".<br>
You can import the scripts and use, like:
<code>R</code><br>
<code>source("functions.R")</code><br>
<code>algorithms = c("MOEADDRA","NSGAII","IBEA")</code><br>
<code>objectivePoints("UF7", algorithms)</code><br>
<code>objectivePoints3D("UF8", algorithms)</code><br>

<br>
<img src="Additional/scatter-Plot.png"><br>
