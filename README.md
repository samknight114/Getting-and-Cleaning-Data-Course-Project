---
title: "ReadMe"
author: "samknight114"
date: "8/5/2020"
output: html_document
---

This is the course project for the "Getting and Cleaning Data" Coursera course. In it you will find the R script, run_analysis.R, which does the following:

  1. Downloads and unzips the UCI HAR Dataset if not found
  2. Loads the three appropriate datasets(Subject, Activity, Values) for both the test and train sets
  3. Combines each type of dataset(Subject, Activity, Value) along test and train sets
  4. Loads the feature info and uses it to replace names of the combined Values dataframe. Also renames Identifier columns(Subject, Activity) for tidier data
  5. Merges the combined dataset types into a single dataframe
  6. Subsets the Merged data, leaving only columns that contain mean or standard deviation data
  7. Renames Activity column values with more descriptive activity names
  8. Renames all Value columns in order to be more legible. Changes prefixes and abbreviations to full descriptors.
  9. Creates a new dataframe that finds all 180 unique combinations of Subject/Activity and finds all the corresponding means for each Value variable
  10. Writes the dataframe created in #9 to working directory and then attempts to view it
  
For clarity, all these steps are delineated within the #notes of the run_analysis script.



