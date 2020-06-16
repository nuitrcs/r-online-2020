# R Fundamentals Bootcamp

June 22-26, 2020

For: Northwestern researchers

Note: *This is still being developed*

Quick links to schedule:

* [Monday: Introduction](#monday-introduction)
* [Tuesday: Data Frames](#tuesday-data-frames)
* [Wednesday: Visualization](#wednesday-visualization)
* [Thursday: Data Exploration and Statistics](#thursday-data-exploration-and-statistics)
* [Friday: Programming](#friday-programming-option-1) or [Friday: Data Project](#friday-data-project-option-2)

## Description

This introductory workshop is designed to help you get familiar with the core concepts and functions in R.  You'll learn the basics that will help you use R in your research and provide a foundation for further learning in the future.  This workshop assumes no prior knowledge of R.

This workshop is designed for beginners with limited or no prior programming experience; however, we strongly recommend you also register for the Programming Concepts workshop if you are unfamiliar with any of the following terms: working directory, vector, boolean, string, list index, function, or any of the other content covered in the Programming Concepts workshop.  

The live sessions will only cover a fraction of the material we typically cover in person.  **You need to complete the independent work as well.**  

If this workshop does not fit with your schedule, or you have significant experience with other programming languages, you may want to use our [recommended resources](https://sites.northwestern.edu/researchcomputing/2020/03/20/online-learning-resources-r/) for learning R on your own instead.  [Request a consultation](https://www.it.northwestern.edu/research/consultation/data-services.html) if you'd like help finding a course or book that fits your needs.

# Structure

This is a remote workshop that combines live sessions on Zoom with independent work on recommended exercises and materials.  We'll use [Canvas](https://canvas.northwestern.edu/courses/117494) to manage the Zoom sessions, email communications, and discussion lists.  

Morning Zoom sessions will be recorded and available in [Canvas](https://canvas.northwestern.edu/courses/117494) for a limited time.  But you will get the most out of this workshop if you cover the topics according to the schedule.  If this workshop doesn't fit with your schedule at the moment, we recommend one of the many online R courses instead, as they are designed for remote, self-paced learning.  

## Daily Schedule

**Morning Zoom Session**: 60-90 minutes live session teaching new skills at 10am each day.  These sessions will be demonstration plus a few exercises, but you will NOT need to watch the video and code in R at the same time.  We'll pause when you need to switch to doing something yourself in R.  Questions welcome via the chat; no need to share your video for this session.

**Mid-day Work Session**: Each day has online materials for you to work through on your own.  The materials include explanations of new concepts as well as exercises.  Start with the **Start here** materials; check out the other resources if you need more information or want more practice.  Then do the exercises.  As questions arise, ask them on the [Canvas](https://canvas.northwestern.edu/courses/117494) discussion board - we'll actively monitor it during the day.  Or bring your questions to the afternoon office hours.  

**Afternoon Zoom Session**: 60-90 minutes live session at 3pm daily reviewing material, with the opportunity to ask questions.  Think of this session as group office hours.  We'll have a quiz to review key concepts, but otherwise, the content will be driven by your questions and the quiz results.  Share your video if you can, since this session will be more interactive.  

**Other Times**: Everyone's schedule is different, so work on exercises earlier or later in the day as needed.  Post questions on the discussion board on Canvas, and we'll answer them as soon as we can.  

## Tips for Success

Don't just read along with the materials during the independent work sessions -- try out the code in R!  Typing it, fixing the errors, and getting used to using R is important.  

Focus on the **Start here** resources.  The others are provided in case you want another perspective, additional info on a topic, or more practice.  But don't try to do it all!  

While some general exercises are provided, you'll learn more by trying to apply your new skills to your own data (or a dataset you're interested in).  

Errors are normal.

Try changing the code to see what happens - you won't break anything.  

-----

# Schedule and Materials

*All times are Central Daylight Time*

## Before the Workshop


### Set up R and RStudio

[Install R and RStudio](https://sites.northwestern.edu/researchcomputing/resources/r-and-rstudio/) on your own laptop (both are free).  If you can't install these programs or run into issues installing packages, [RStudio Cloud ](https://sites.northwestern.edu/researchcomputing/resources/r-and-rstudio/#option-2-rstudio-cloud) is a good option.

Also, install the tidyverse package.  Instructions are at the bottom of the [installation instructions page](https://sites.northwestern.edu/researchcomputing/resources/r-and-rstudio/).  If you run into installation issues (about 5-10% of you are likely to based on past workshops), post an issue on the Canvas discussion board or email the workshop instructors.


### Get Materials

[Download this repository](https://sites.northwestern.edu/researchcomputing/resources/downloading-from-github/) (but wait until late Sunday or early Monday, as I'll be updating materials until then)

Then you will have the datasets and exercises downloaded to your computer to work on.  Open the `r-online-2020.Rproj` file in the project directory to make sure your working directory is set correctly for the scripts.


### Handouts

During in-person workshops, these are the handouts we usually provide.  You may find them useful.  

[RStudio Cheat Sheets](https://www.rstudio.com/resources/cheatsheets/) are short pdfs that summarize key R functions on specific topics. Many people print them out for reference while working in R.  The `ggplot2` cheat sheet, in particular, is indispensable when working with that package.  

[R Reference Card](https://cran.r-project.org/doc/contrib/Baggott-refcard-v2.pdf): lists many commonly used functions, so that you can find what you're looking for, since the R help is most useful when you already know the function name you want.

### Books and Courses

There are links to many free online resources below.  A few resources require registration first.  None of these are required -- they are supplemental materials.

[R Cookbook](https://learning.oreilly.com/library/view/r-cookbook-2nd/9781492040675/) - create an account with O'Reilly online [through the library](https://search.library.northwestern.edu/permalink/f/1h5vb9e/01NWU_ALMA61730998600002441) first.

[Cloud Based Data Science](https://leanpub.com/universities/set/jhu/cloud-based-data-science) - an online set of courses from Johns Hopkins University faculty.  Not required for the workshop, but links to relevant material from those courses is included below under extra materials.  Pricing is flexible (including free).


-----

## Monday: Introduction


10am Zoom session: RStudio Tour, Basics of Using R

3pm Zoom session: Quiz, Review, and Office Hours

### Concepts

* Using RStudio
* Installing and loading packages
* Creating an R script
* Using the R console
* Using functions
* Variables
* Data types
* Vectors and indexing vectors
* Missing Data
* Factors
* Create a frequency/count table


### Materials

**Start here:** [Learning Statistics with R v2](https://tidylsr.djnavarro.net/index.html): Chapter 2 Getting Started in R; Appendices A1 Vectors and A2 Factors

Alternative/extra material:   
* Covers many of the same concepts, except factors: [Data Carpentry Data Analysis and Visualization in R for Ecologists](https://datacarpentry.org/R-ecology-lesson/01-intro-to-r.html): Introduction to R Lesson -- not specific to ecologists!
* Covers many of the same concepts, except factors: [Cloud Based Data Science](https://leanpub.com/universities/set/jhu/cloud-based-data-science) Intro to R Course - first 6 sections (through Working with Logicals) 
* Data types and vectors: [Software Carpentry Programming in R](http://swcarpentry.github.io/r-novice-inflammation/13-supp-data-structures/index.html) Data Structures.  At the end this introduces data frames, which are the topic for Tuesday.
* Similar material to above, from the same author: [Learning Statistics with R v1](https://learningstatisticswithr.com/book/introR.html): Chapter 3 Getting Started with R; Chapter 4 Additional R Concepts Sections 4.1 through 4.7
* Factors: [Software Carpentry Programming with R](http://swcarpentry.github.io/r-novice-inflammation/12-supp-factors/index.html): Understanding Factors.  Get the data set used in the lesson from [the course setup page](http://swcarpentry.github.io/r-novice-inflammation/setup.html).  Ask if you need help loading the data file.
* Working directory and RStudio Projects: [Stat 545](https://stat545.com/r-basics.html) R Basics
* Packages: [Learning Statistics with R v1](https://learningstatisticswithr.com/book/mechanics.html#packageinstall)
* Reference: [R Cookbook](https://learning.oreilly.com/library/view/r-cookbook-2nd/9781492040675/) Chapter 2 Some Basics: mostly about working with vectors

**BONUS**: You may also want to learn about R Markdown files (and R Notebooks, which are a special type): https://rmarkdown.rstudio.com.  The file for Tuesday morning's session is an R Notebook, and some other materials later may be R Markdown files.  They're useful for when you want to combine R code, output, and text together in a document.

### Exercises

See the exercises in the [exercises/part1](exercises/part1).  Open the .R files on your own computer and write your answers in the scripts.  There are answer files to check your work.

-----

## Tuesday: Data Frames


10am Zoom session: Reading in Data, Working with Data Frames

3pm Zoom session: Quiz, Review, and Office Hours

### Concepts

* Read in a CSV file
* What is a data frame
* Subsetting data frames
* Making new variables in a data frame
* Recoding a variable
* Reading an R help page


### Materials

**Start here:** 

* [Software Carpentry Programming in R](http://swcarpentry.github.io/r-novice-inflammation/11-supp-read-write-csv/index.html) Reading and Writing CSV Files
* [Software Carpentry Programming in R](http://swcarpentry.github.io/r-novice-inflammation/10-supp-addressing-data/index.html) Addressing Data
* Recoding and transforming variables: [Learning Statistics with R v1](https://learningstatisticswithr.com/book/datahandling.html#transform) 7.2 Transforming and recoding a variable


Alternative/extra material: 
* [Data Carpentry Data Analysis and Visualization in R for Ecologists](https://datacarpentry.org/R-ecology-lesson/02-starting-with-data.html) Lesson 2 Starting with Data: covers data frames and factors (a Monday topic)
* Interactive tutorial on data frames : [DataCamp 15 Easy Solutions To Your Data Frame Problems In R](https://www.datacamp.com/community/tutorials/15-easy-solutions-data-frame-problems-r)
* Subset a data frame: [Learning Statistics with R v1](https://learningstatisticswithr.com/book/datahandling.html#subsetdataframe) 7.5 Extracting a subset of a data frame (7.3 on vectors is also useful)
* Getting Help: 
  - [Cloud Based Data Science](https://leanpub.com/universities/set/jhu/cloud-based-data-science) Intro to R Course - Getting Help in R section
  - [Learning Statistics with R v1](https://learningstatisticswithr.com/book/mechanics.html#help) Section 4.12 Getting Help
  - [R Cookbook](https://learning.oreilly.com/library/view/r-cookbook-2nd/9781492040675/ch01.html#recipe-id265) Starting Section 1.7
* Reading in Data Files: [Cloud Based Data Science](https://leanpub.com/courses/jhu/cbds-getting-data/read/2#leanpub-auto-csv-excel-and-tsv-files) Getting Data Section 2 CSV, Excel, and TSV Files
  
Notes:

* If you see a reference to the stringsAsFactors option for read.csv(): it defaults to TRUE for R versions < 4 but FALSE for R 4.0.0 and later.  Most materials, including some above, have not yet been updated to reflect this change because R 4.0.0 is recent.

### Exercises

See the exercises in the [exercises/part2](exercises/part2). Open the .R files on your own computer and write your answers in the scripts.  There are answer files to check your work.

Want more practice?  Read one of your own datasets into R and use the skills you've learned to count rows, compute max and min values, make tables, create new variables, etc.  Need a data set to work with?  Download one from: https://www.openintro.org/data/index.php.  It's good to practice doing all of the steps you've learned with data that you haven't been handed as part of the workshop to make sure you really do know how to do it on your own.



-----

## Wednesday: Visualization 



10am Zoom session: Base R Plots, ggplot2 basics

3pm Zoom session: Quiz, Review, and Office Hours

### Concepts

* Use plot() and hist()
* Understand ggplot2 code
* Make basic plots with ggplot2


### Materials

**Start here:**  [R for Data Science](https://r4ds.had.co.nz/data-visualisation.html) Chapter 3 Visualization (all ggplot2).  Or if you want to focus on base R graphics (perhaps that's what is used in your lab/department), try [Learning Statistics with R v1](https://learningstatisticswithr.com/book/graphics.html) Drawing Graphs.  

Alternative/extra material: 
* [R Cookbook](https://learning.oreilly.com/library/view/r-cookbook-2nd/9781492040675/ch10.html#Graphics) Graphics uses ggplot2
* [Cloud Based Data Science](https://leanpub.com/courses/jhu/cbds-visualization) Data Visualization
* [Data Carpentry Data Analysis and Visualization in R for Ecologists](https://datacarpentry.org/R-ecology-lesson/04-visualization-ggplot2.html) Data visualization with ggplot2
* [Learning Statistics with R v2](https://tidylsr.djnavarro.net/datavis.html) Pretty Pictures - this chapter uses the `%>%` operator prevalent in the tidyverse; see [an explanation here](https://cfss.uchicago.edu/notes/pipes/).  

Want more?  See our [online guide to learning ggplot2](https://sites.northwestern.edu/researchcomputing/2020/04/13/online-learning-resources-r-ggplot2/) - most of these will take you longer than a few hours.  

### Exercises

See the exercises in the [exercises/part3](exercises/part3). Open the .R files on your own computer and write your answers in the scripts.  There are answer files to check your work.

Want more practice?  Read one of your own datasets into R and start making some plots.  Don't like what they look like?  Start trying to change the styling (lots of googling is to be expected).  Looking for data to work with?  Try https://github.com/rfordatascience/tidytuesday or https://data.fivethirtyeight.com/.  As with the data frame material, trying your new skills on your own data will help you learn faster.



-----

## Thursday: Data Exploration and Statistics


10am Zoom session: Formula syntax, interpreting linear regression output

3pm Zoom session: Quiz, Review, and Office Hours

### Concepts

* Compute basic statistics such as mean and standard deviation
* Run a t-test
* Formula syntax
* Linear regression
* ANOVA


### Materials

**Start here:** Learning Statistics with R [Ch. 5 Descriptive Statistics](https://learningstatisticswithr.com/book/descriptives.html) and [Part V Statistical Tools](https://learningstatisticswithr.com/book/part-v-statistical-tools.html): **choose the sections relevant to the methods and models for your field.**  Note: This book teaches statistics in addition to R, so there's theoretical material you may be able to skip.

Alternative/extra material: 

* Descriptive and Exploratory Analysis: [Cloud Based Data Science](https://leanpub.com/courses/jhu/cbds-analysis/home) Data Analysis Course: focuses on concepts more than the R code
* Statistics: [R Cookbook](https://learning.oreilly.com/library/view/r-cookbook-2nd/9781492040675) - has several useful sections if you already know what you want to do

Want more?  See [Statistics and Machine Learning](https://github.com/nuitrcs/rworkshops#statistics-and-machine-learning) resource list, or our [online guide to learning linear regression in R](https://sites.northwestern.edu/researchcomputing/2020/05/09/online-learning-resources-linear-regression-in-r/).


### Exercises

See the exercises in the [exercises/part4](exercises/part4) directory for t-test and linear regression exercises.  If these methods aren't relevant to your field, try instead to run a statistical test or model that you have computed in another program in R instead.  Ask on the discussion forum if you need help finding the right package or function in R for your analysis (because one is almost guaranteed to exist).


-----

## Friday: Programming (Option 1)


10am Zoom session: Putting it all together in a script; if/else vs. ifelse()

3pm Zoom session: Quiz, Review, and Office Hours

### Concepts
* If/else statements
* ifelse()
* for loops
* Writing functions

### Materials

**Start here:**

* If/else: [Software Carpentry Programming in R](http://swcarpentry.github.io/r-novice-inflammation/04-cond/index.html) Making Choices
* Loops: [Software Carpentry Programming in R](http://swcarpentry.github.io/r-novice-inflammation/15-supp-loops-in-depth/index.html) Loops
* Writing Functions: [Software Carpentry Programming in R](http://swcarpentry.github.io/r-novice-inflammation/02-func-R/index.html) Creating Functions

Alternative/extra material: 

* [Learning Statistics with R v1](https://learningstatisticswithr.com/book/scripting.html) Chapter 8 Basic Programming
* [R Cookbook](https://learning.oreilly.com/library/view/r-cookbook-2nd/9781492040675/ch15.html#SimpleProgramming) Simple Programming - gets less "simple" as the chapter progresses

### Exercises

See the exercises in the [exercises/part5](exercises/part5) directory.  

----

## Friday: Data Project (Option 2)

Instead of learning the programming concepts above, you can instead apply the skills you learned in the previous 4 days working on a small data project.  There will be no video lessons for the project, but you're welcome to ask questions and seek help as you work on it.  

Details coming soon.  
