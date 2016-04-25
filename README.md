##Final Assignment: Getting and Cleaning Data Course Project Response
##Dr. John R. Withrow, Jr.

This data set is a processed version of smartphone accelerometer data obtained from the
experiment described on the following website:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The raw data is stored at the following URL location:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The purpose of this processing effort was to do the following:
* Merge the testing and training data sets into a single flat file
* Create an additional field "mode" that indicates whether each observation was part of testing or training.
* Replace activity numbers with a new field "activity" that shows the activity more descriptively as a string.
* Provide more descriptive labels for the dataset in general.
* Add an additional field "subjectnum" for the number of the subject being measured.
* Create an additional file "mean.txt" that shows only fields displaying mean values of each measurement.
* Create an additional file "meansd.txt" that shows all fields above but also the ones below, showing standard deviations of the same varibles.

This repository contains the following files:

* Full documentation of the processing code: run_analysis.R
* The new code book: CodeBook.md
* Flat file showing only mean variables: mean.txt
* Flat file showing mean and standard deviation variables: dataset.txt
* This README file

JRW