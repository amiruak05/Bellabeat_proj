{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "94e1e8d1",
   "metadata": {
    "papermill": {
     "duration": 0.008573,
     "end_time": "2022-10-12T12:03:19.792344",
     "exception": false,
     "start_time": "2022-10-12T12:03:19.783771",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# **We are now looking at the heartrate_seconds_merged.csv**\n",
    "I uploaded the file from my computer into my project dataset on Kaggle\n",
    "loading the tidyverse package\n",
    "[](http://)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "482acd0e",
   "metadata": {
    "papermill": {
     "duration": 0.007994,
     "end_time": "2022-10-12T12:03:19.807447",
     "exception": false,
     "start_time": "2022-10-12T12:03:19.799453",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Loading the tidyverse package"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "69572165",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-12T12:03:19.829990Z",
     "iopub.status.busy": "2022-10-12T12:03:19.826752Z",
     "iopub.status.idle": "2022-10-12T12:03:21.439145Z",
     "shell.execute_reply": "2022-10-12T12:03:21.436956Z"
    },
    "papermill": {
     "duration": 1.625722,
     "end_time": "2022-10-12T12:03:21.441949",
     "exception": false,
     "start_time": "2022-10-12T12:03:19.816227",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching packages\u001b[22m ─────────────────────────────────────── tidyverse 1.3.1 ──\n",
      "\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2\u001b[39m 3.3.6     \u001b[32m✔\u001b[39m \u001b[34mpurrr  \u001b[39m 0.3.4\n",
      "\u001b[32m✔\u001b[39m \u001b[34mtibble \u001b[39m 3.1.7     \u001b[32m✔\u001b[39m \u001b[34mdplyr  \u001b[39m 1.0.9\n",
      "\u001b[32m✔\u001b[39m \u001b[34mtidyr  \u001b[39m 1.2.0     \u001b[32m✔\u001b[39m \u001b[34mstringr\u001b[39m 1.4.0\n",
      "\u001b[32m✔\u001b[39m \u001b[34mreadr  \u001b[39m 2.1.2     \u001b[32m✔\u001b[39m \u001b[34mforcats\u001b[39m 0.5.1\n",
      "\n",
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\n"
     ]
    }
   ],
   "source": [
    "library(tidyverse)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "692aaf77",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-12T12:03:21.493547Z",
     "iopub.status.busy": "2022-10-12T12:03:21.459315Z",
     "iopub.status.idle": "2022-10-12T12:03:30.772038Z",
     "shell.execute_reply": "2022-10-12T12:03:30.769900Z"
    },
    "papermill": {
     "duration": 9.324977,
     "end_time": "2022-10-12T12:03:30.774955",
     "exception": false,
     "start_time": "2022-10-12T12:03:21.449978",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# loading my csv file from the bellabeat data set\n",
    "data = read.csv(\"../input/fitbit/Fitabase Data 4.12.16-5.12.16/heartrate_seconds_merged.csv\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "318c7e45",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-12T12:03:30.793516Z",
     "iopub.status.busy": "2022-10-12T12:03:30.791813Z",
     "iopub.status.idle": "2022-10-12T12:03:45.388749Z",
     "shell.execute_reply": "2022-10-12T12:03:45.386596Z"
    },
    "papermill": {
     "duration": 14.609321,
     "end_time": "2022-10-12T12:03:45.391704",
     "exception": false,
     "start_time": "2022-10-12T12:03:30.782383",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "df_v2 = read.csv('../input/heartrate-merged-v2/heartrate_merged_v2.csv')"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "f824217d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-12T12:03:45.410098Z",
     "iopub.status.busy": "2022-10-12T12:03:45.408385Z",
     "iopub.status.idle": "2022-10-12T12:03:45.442382Z",
     "shell.execute_reply": "2022-10-12T12:03:45.440403Z"
    },
    "papermill": {
     "duration": 0.045905,
     "end_time": "2022-10-12T12:03:45.444949",
     "exception": false,
     "start_time": "2022-10-12T12:03:45.399044",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>X</th><th scope=col>Id</th><th scope=col>Time</th><th scope=col>Value</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td> 309277</td><td>4020332650</td><td>2016-04-12 00:00:00</td><td>63</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>1036654</td><td>5553957443</td><td>2016-04-12 00:00:00</td><td>61</td></tr>\n",
       "\t<tr><th scope=row>3</th><td> 309278</td><td>4020332650</td><td>2016-04-12 00:00:01</td><td>64</td></tr>\n",
       "\t<tr><th scope=row>4</th><td> 309279</td><td>4020332650</td><td>2016-04-12 00:00:03</td><td>64</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>1291828</td><td>5577150313</td><td>2016-04-12 00:00:05</td><td>48</td></tr>\n",
       "\t<tr><th scope=row>6</th><td> 309280</td><td>4020332650</td><td>2016-04-12 00:00:06</td><td>64</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 4\n",
       "\\begin{tabular}{r|llll}\n",
       "  & X & Id & Time & Value\\\\\n",
       "  & <int> & <dbl> & <chr> & <int>\\\\\n",
       "\\hline\n",
       "\t1 &  309277 & 4020332650 & 2016-04-12 00:00:00 & 63\\\\\n",
       "\t2 & 1036654 & 5553957443 & 2016-04-12 00:00:00 & 61\\\\\n",
       "\t3 &  309278 & 4020332650 & 2016-04-12 00:00:01 & 64\\\\\n",
       "\t4 &  309279 & 4020332650 & 2016-04-12 00:00:03 & 64\\\\\n",
       "\t5 & 1291828 & 5577150313 & 2016-04-12 00:00:05 & 48\\\\\n",
       "\t6 &  309280 & 4020332650 & 2016-04-12 00:00:06 & 64\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 4\n",
       "\n",
       "| <!--/--> | X &lt;int&gt; | Id &lt;dbl&gt; | Time &lt;chr&gt; | Value &lt;int&gt; |\n",
       "|---|---|---|---|---|\n",
       "| 1 |  309277 | 4020332650 | 2016-04-12 00:00:00 | 63 |\n",
       "| 2 | 1036654 | 5553957443 | 2016-04-12 00:00:00 | 61 |\n",
       "| 3 |  309278 | 4020332650 | 2016-04-12 00:00:01 | 64 |\n",
       "| 4 |  309279 | 4020332650 | 2016-04-12 00:00:03 | 64 |\n",
       "| 5 | 1291828 | 5577150313 | 2016-04-12 00:00:05 | 48 |\n",
       "| 6 |  309280 | 4020332650 | 2016-04-12 00:00:06 | 64 |\n",
       "\n"
      ],
      "text/plain": [
       "  X       Id         Time                Value\n",
       "1  309277 4020332650 2016-04-12 00:00:00 63   \n",
       "2 1036654 5553957443 2016-04-12 00:00:00 61   \n",
       "3  309278 4020332650 2016-04-12 00:00:01 64   \n",
       "4  309279 4020332650 2016-04-12 00:00:03 64   \n",
       "5 1291828 5577150313 2016-04-12 00:00:05 48   \n",
       "6  309280 4020332650 2016-04-12 00:00:06 64   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(df_v2)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "f994e91e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-12T12:03:45.463913Z",
     "iopub.status.busy": "2022-10-12T12:03:45.462223Z",
     "iopub.status.idle": "2022-10-12T12:03:45.494651Z",
     "shell.execute_reply": "2022-10-12T12:03:45.492590Z"
    },
    "papermill": {
     "duration": 0.045249,
     "end_time": "2022-10-12T12:03:45.497705",
     "exception": false,
     "start_time": "2022-10-12T12:03:45.452456",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Rows: 2,483,658\n",
      "Columns: 4\n",
      "$ X     \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m 309277, 1036654, 309278, 309279, 1291828, 309280, 309281, 309282…\n",
      "$ Id    \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m 4020332650, 5553957443, 4020332650, 4020332650, 5577150313, 4020…\n",
      "$ Time  \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m \"2016-04-12 00:00:00\", \"2016-04-12 00:00:00\", \"2016-04-12 00:00:…\n",
      "$ Value \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m 63, 61, 64, 64, 48, 64, 63, 63, 59, 71, 48, 63, 63, 64, 72, 64, …\n"
     ]
    }
   ],
   "source": [
    "# Getting a glimpse of my data, I can also use the str(data) to view my data info\n",
    "glimpse(df_v2)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f5078b4d",
   "metadata": {
    "papermill": {
     "duration": 0.008109,
     "end_time": "2022-10-12T12:03:45.514342",
     "exception": false,
     "start_time": "2022-10-12T12:03:45.506233",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### I noticed that my data has close to 2.5 million rows and 3 columns.\n",
    "#### * The Time column contains Timestamp data, but its data structure is showing \"Character\".\n",
    "#### * The Time column should be splitted in to date column and time column.\n",
    "#### * The Value column is int, it's cool."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5b0dd726",
   "metadata": {
    "papermill": {
     "duration": 0.008267,
     "end_time": "2022-10-12T12:03:45.530765",
     "exception": false,
     "start_time": "2022-10-12T12:03:45.522498",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Let's clean"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "71ca5b60",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-12T12:03:45.557169Z",
     "iopub.status.busy": "2022-10-12T12:03:45.555400Z",
     "iopub.status.idle": "2022-10-12T12:04:25.784087Z",
     "shell.execute_reply": "2022-10-12T12:04:25.781893Z"
    },
    "papermill": {
     "duration": 40.247847,
     "end_time": "2022-10-12T12:04:25.786893",
     "exception": false,
     "start_time": "2022-10-12T12:03:45.539046",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n"
     ]
    }
   ],
   "source": [
    "# Arrange the data by date in Ascending order\n",
    "install.packages(\"lubridate\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "c7c0d438",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-12T12:04:25.807621Z",
     "iopub.status.busy": "2022-10-12T12:04:25.805472Z",
     "iopub.status.idle": "2022-10-12T12:04:25.844972Z",
     "shell.execute_reply": "2022-10-12T12:04:25.842492Z"
    },
    "papermill": {
     "duration": 0.052524,
     "end_time": "2022-10-12T12:04:25.847860",
     "exception": false,
     "start_time": "2022-10-12T12:04:25.795336",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Attaching package: ‘lubridate’\n",
      "\n",
      "\n",
      "The following objects are masked from ‘package:base’:\n",
      "\n",
      "    date, intersect, setdiff, union\n",
      "\n",
      "\n"
     ]
    }
   ],
   "source": [
    "library(lubridate)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "caeec058",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-12T12:04:25.867864Z",
     "iopub.status.busy": "2022-10-12T12:04:25.866034Z",
     "iopub.status.idle": "2022-10-12T12:04:38.052589Z",
     "shell.execute_reply": "2022-10-12T12:04:38.050482Z"
    },
    "papermill": {
     "duration": 12.199509,
     "end_time": "2022-10-12T12:04:38.055336",
     "exception": false,
     "start_time": "2022-10-12T12:04:25.855827",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n"
     ]
    }
   ],
   "source": [
    "install.packages(\"datapasta\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "a96acee5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-12T12:04:38.076232Z",
     "iopub.status.busy": "2022-10-12T12:04:38.074412Z",
     "iopub.status.idle": "2022-10-12T12:04:38.105275Z",
     "shell.execute_reply": "2022-10-12T12:04:38.103235Z"
    },
    "papermill": {
     "duration": 0.045266,
     "end_time": "2022-10-12T12:04:38.108623",
     "exception": false,
     "start_time": "2022-10-12T12:04:38.063357",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "library(datapasta)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "3a777389",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-12T12:04:38.128057Z",
     "iopub.status.busy": "2022-10-12T12:04:38.126283Z",
     "iopub.status.idle": "2022-10-12T12:05:46.858379Z",
     "shell.execute_reply": "2022-10-12T12:05:46.856178Z"
    },
    "papermill": {
     "duration": 68.745186,
     "end_time": "2022-10-12T12:05:46.861448",
     "exception": false,
     "start_time": "2022-10-12T12:04:38.116262",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "df_v2 <- separate(df_v2, Time, into = c('date', 'time'), sep=' ', 2)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "f6732afc",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-12T12:05:46.884975Z",
     "iopub.status.busy": "2022-10-12T12:05:46.881809Z",
     "iopub.status.idle": "2022-10-12T12:05:46.917544Z",
     "shell.execute_reply": "2022-10-12T12:05:46.915209Z"
    },
    "papermill": {
     "duration": 0.050333,
     "end_time": "2022-10-12T12:05:46.921746",
     "exception": false,
     "start_time": "2022-10-12T12:05:46.871413",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 5</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>X</th><th scope=col>Id</th><th scope=col>date</th><th scope=col>time</th><th scope=col>Value</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td> 309277</td><td>4020332650</td><td>2016-04-12</td><td>00:00:00</td><td>63</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>1036654</td><td>5553957443</td><td>2016-04-12</td><td>00:00:00</td><td>61</td></tr>\n",
       "\t<tr><th scope=row>3</th><td> 309278</td><td>4020332650</td><td>2016-04-12</td><td>00:00:01</td><td>64</td></tr>\n",
       "\t<tr><th scope=row>4</th><td> 309279</td><td>4020332650</td><td>2016-04-12</td><td>00:00:03</td><td>64</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>1291828</td><td>5577150313</td><td>2016-04-12</td><td>00:00:05</td><td>48</td></tr>\n",
       "\t<tr><th scope=row>6</th><td> 309280</td><td>4020332650</td><td>2016-04-12</td><td>00:00:06</td><td>64</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 5\n",
       "\\begin{tabular}{r|lllll}\n",
       "  & X & Id & date & time & Value\\\\\n",
       "  & <int> & <dbl> & <chr> & <chr> & <int>\\\\\n",
       "\\hline\n",
       "\t1 &  309277 & 4020332650 & 2016-04-12 & 00:00:00 & 63\\\\\n",
       "\t2 & 1036654 & 5553957443 & 2016-04-12 & 00:00:00 & 61\\\\\n",
       "\t3 &  309278 & 4020332650 & 2016-04-12 & 00:00:01 & 64\\\\\n",
       "\t4 &  309279 & 4020332650 & 2016-04-12 & 00:00:03 & 64\\\\\n",
       "\t5 & 1291828 & 5577150313 & 2016-04-12 & 00:00:05 & 48\\\\\n",
       "\t6 &  309280 & 4020332650 & 2016-04-12 & 00:00:06 & 64\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 5\n",
       "\n",
       "| <!--/--> | X &lt;int&gt; | Id &lt;dbl&gt; | date &lt;chr&gt; | time &lt;chr&gt; | Value &lt;int&gt; |\n",
       "|---|---|---|---|---|---|\n",
       "| 1 |  309277 | 4020332650 | 2016-04-12 | 00:00:00 | 63 |\n",
       "| 2 | 1036654 | 5553957443 | 2016-04-12 | 00:00:00 | 61 |\n",
       "| 3 |  309278 | 4020332650 | 2016-04-12 | 00:00:01 | 64 |\n",
       "| 4 |  309279 | 4020332650 | 2016-04-12 | 00:00:03 | 64 |\n",
       "| 5 | 1291828 | 5577150313 | 2016-04-12 | 00:00:05 | 48 |\n",
       "| 6 |  309280 | 4020332650 | 2016-04-12 | 00:00:06 | 64 |\n",
       "\n"
      ],
      "text/plain": [
       "  X       Id         date       time     Value\n",
       "1  309277 4020332650 2016-04-12 00:00:00 63   \n",
       "2 1036654 5553957443 2016-04-12 00:00:00 61   \n",
       "3  309278 4020332650 2016-04-12 00:00:01 64   \n",
       "4  309279 4020332650 2016-04-12 00:00:03 64   \n",
       "5 1291828 5577150313 2016-04-12 00:00:05 48   \n",
       "6  309280 4020332650 2016-04-12 00:00:06 64   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(df_v2)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "472dc316",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-12T12:05:46.942913Z",
     "iopub.status.busy": "2022-10-12T12:05:46.940719Z",
     "iopub.status.idle": "2022-10-12T12:05:47.012017Z",
     "shell.execute_reply": "2022-10-12T12:05:47.009637Z"
    },
    "papermill": {
     "duration": 0.084984,
     "end_time": "2022-10-12T12:05:47.015177",
     "exception": false,
     "start_time": "2022-10-12T12:05:46.930193",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "df_v2 <- rename(df_v2,c('S/N'='X'))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5766937e",
   "metadata": {
    "papermill": {
     "duration": 0.007946,
     "end_time": "2022-10-12T12:05:47.031246",
     "exception": false,
     "start_time": "2022-10-12T12:05:47.023300",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### **Analyzing our data**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "020863f6",
   "metadata": {
    "papermill": {
     "duration": 0.008272,
     "end_time": "2022-10-12T12:05:47.047942",
     "exception": false,
     "start_time": "2022-10-12T12:05:47.039670",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### 1. Find the Average daily heartrate"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "91a266f1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-12T12:05:47.069402Z",
     "iopub.status.busy": "2022-10-12T12:05:47.066258Z",
     "iopub.status.idle": "2022-10-12T12:05:47.248493Z",
     "shell.execute_reply": "2022-10-12T12:05:47.244557Z"
    },
    "papermill": {
     "duration": 0.196661,
     "end_time": "2022-10-12T12:05:47.252454",
     "exception": false,
     "start_time": "2022-10-12T12:05:47.055793",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "df_v2_a1 <- df_v2 %>%\n",
    "  group_by(date) %>%\n",
    "  summarize(avg_d_hrtrate = mean(Value))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "1487e176",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-12T12:05:47.273684Z",
     "iopub.status.busy": "2022-10-12T12:05:47.271418Z",
     "iopub.status.idle": "2022-10-12T12:05:47.596091Z",
     "shell.execute_reply": "2022-10-12T12:05:47.593990Z"
    },
    "papermill": {
     "duration": 0.338074,
     "end_time": "2022-10-12T12:05:47.599065",
     "exception": false,
     "start_time": "2022-10-12T12:05:47.260991",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 31 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>date</th><th scope=col>avg_d_hrtrate</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>2016-04-12</td><td>79.70778</td></tr>\n",
       "\t<tr><td>2016-04-13</td><td>75.40048</td></tr>\n",
       "\t<tr><td>2016-04-14</td><td>76.15573</td></tr>\n",
       "\t<tr><td>2016-04-15</td><td>79.98256</td></tr>\n",
       "\t<tr><td>2016-04-16</td><td>80.39683</td></tr>\n",
       "\t<tr><td>2016-04-17</td><td>78.22742</td></tr>\n",
       "\t<tr><td>2016-04-18</td><td>76.66505</td></tr>\n",
       "\t<tr><td>2016-04-19</td><td>78.78663</td></tr>\n",
       "\t<tr><td>2016-04-20</td><td>77.69463</td></tr>\n",
       "\t<tr><td>2016-04-21</td><td>78.52549</td></tr>\n",
       "\t<tr><td>2016-04-22</td><td>76.65653</td></tr>\n",
       "\t<tr><td>2016-04-23</td><td>78.76555</td></tr>\n",
       "\t<tr><td>2016-04-24</td><td>76.00000</td></tr>\n",
       "\t<tr><td>2016-04-25</td><td>77.96417</td></tr>\n",
       "\t<tr><td>2016-04-26</td><td>76.29034</td></tr>\n",
       "\t<tr><td>2016-04-27</td><td>75.09062</td></tr>\n",
       "\t<tr><td>2016-04-28</td><td>75.42431</td></tr>\n",
       "\t<tr><td>2016-04-29</td><td>76.30370</td></tr>\n",
       "\t<tr><td>2016-04-30</td><td>78.69650</td></tr>\n",
       "\t<tr><td>2016-05-01</td><td>71.42175</td></tr>\n",
       "\t<tr><td>2016-05-02</td><td>75.76589</td></tr>\n",
       "\t<tr><td>2016-05-03</td><td>75.98495</td></tr>\n",
       "\t<tr><td>2016-05-04</td><td>77.21575</td></tr>\n",
       "\t<tr><td>2016-05-05</td><td>78.95644</td></tr>\n",
       "\t<tr><td>2016-05-06</td><td>76.56293</td></tr>\n",
       "\t<tr><td>2016-05-07</td><td>82.46379</td></tr>\n",
       "\t<tr><td>2016-05-08</td><td>77.76340</td></tr>\n",
       "\t<tr><td>2016-05-09</td><td>79.40444</td></tr>\n",
       "\t<tr><td>2016-05-10</td><td>74.30761</td></tr>\n",
       "\t<tr><td>2016-05-11</td><td>76.67129</td></tr>\n",
       "\t<tr><td>2016-05-12</td><td>73.94382</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 31 × 2\n",
       "\\begin{tabular}{ll}\n",
       " date & avg\\_d\\_hrtrate\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 2016-04-12 & 79.70778\\\\\n",
       "\t 2016-04-13 & 75.40048\\\\\n",
       "\t 2016-04-14 & 76.15573\\\\\n",
       "\t 2016-04-15 & 79.98256\\\\\n",
       "\t 2016-04-16 & 80.39683\\\\\n",
       "\t 2016-04-17 & 78.22742\\\\\n",
       "\t 2016-04-18 & 76.66505\\\\\n",
       "\t 2016-04-19 & 78.78663\\\\\n",
       "\t 2016-04-20 & 77.69463\\\\\n",
       "\t 2016-04-21 & 78.52549\\\\\n",
       "\t 2016-04-22 & 76.65653\\\\\n",
       "\t 2016-04-23 & 78.76555\\\\\n",
       "\t 2016-04-24 & 76.00000\\\\\n",
       "\t 2016-04-25 & 77.96417\\\\\n",
       "\t 2016-04-26 & 76.29034\\\\\n",
       "\t 2016-04-27 & 75.09062\\\\\n",
       "\t 2016-04-28 & 75.42431\\\\\n",
       "\t 2016-04-29 & 76.30370\\\\\n",
       "\t 2016-04-30 & 78.69650\\\\\n",
       "\t 2016-05-01 & 71.42175\\\\\n",
       "\t 2016-05-02 & 75.76589\\\\\n",
       "\t 2016-05-03 & 75.98495\\\\\n",
       "\t 2016-05-04 & 77.21575\\\\\n",
       "\t 2016-05-05 & 78.95644\\\\\n",
       "\t 2016-05-06 & 76.56293\\\\\n",
       "\t 2016-05-07 & 82.46379\\\\\n",
       "\t 2016-05-08 & 77.76340\\\\\n",
       "\t 2016-05-09 & 79.40444\\\\\n",
       "\t 2016-05-10 & 74.30761\\\\\n",
       "\t 2016-05-11 & 76.67129\\\\\n",
       "\t 2016-05-12 & 73.94382\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 31 × 2\n",
       "\n",
       "| date &lt;chr&gt; | avg_d_hrtrate &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| 2016-04-12 | 79.70778 |\n",
       "| 2016-04-13 | 75.40048 |\n",
       "| 2016-04-14 | 76.15573 |\n",
       "| 2016-04-15 | 79.98256 |\n",
       "| 2016-04-16 | 80.39683 |\n",
       "| 2016-04-17 | 78.22742 |\n",
       "| 2016-04-18 | 76.66505 |\n",
       "| 2016-04-19 | 78.78663 |\n",
       "| 2016-04-20 | 77.69463 |\n",
       "| 2016-04-21 | 78.52549 |\n",
       "| 2016-04-22 | 76.65653 |\n",
       "| 2016-04-23 | 78.76555 |\n",
       "| 2016-04-24 | 76.00000 |\n",
       "| 2016-04-25 | 77.96417 |\n",
       "| 2016-04-26 | 76.29034 |\n",
       "| 2016-04-27 | 75.09062 |\n",
       "| 2016-04-28 | 75.42431 |\n",
       "| 2016-04-29 | 76.30370 |\n",
       "| 2016-04-30 | 78.69650 |\n",
       "| 2016-05-01 | 71.42175 |\n",
       "| 2016-05-02 | 75.76589 |\n",
       "| 2016-05-03 | 75.98495 |\n",
       "| 2016-05-04 | 77.21575 |\n",
       "| 2016-05-05 | 78.95644 |\n",
       "| 2016-05-06 | 76.56293 |\n",
       "| 2016-05-07 | 82.46379 |\n",
       "| 2016-05-08 | 77.76340 |\n",
       "| 2016-05-09 | 79.40444 |\n",
       "| 2016-05-10 | 74.30761 |\n",
       "| 2016-05-11 | 76.67129 |\n",
       "| 2016-05-12 | 73.94382 |\n",
       "\n"
      ],
      "text/plain": [
       "   date       avg_d_hrtrate\n",
       "1  2016-04-12 79.70778     \n",
       "2  2016-04-13 75.40048     \n",
       "3  2016-04-14 76.15573     \n",
       "4  2016-04-15 79.98256     \n",
       "5  2016-04-16 80.39683     \n",
       "6  2016-04-17 78.22742     \n",
       "7  2016-04-18 76.66505     \n",
       "8  2016-04-19 78.78663     \n",
       "9  2016-04-20 77.69463     \n",
       "10 2016-04-21 78.52549     \n",
       "11 2016-04-22 76.65653     \n",
       "12 2016-04-23 78.76555     \n",
       "13 2016-04-24 76.00000     \n",
       "14 2016-04-25 77.96417     \n",
       "15 2016-04-26 76.29034     \n",
       "16 2016-04-27 75.09062     \n",
       "17 2016-04-28 75.42431     \n",
       "18 2016-04-29 76.30370     \n",
       "19 2016-04-30 78.69650     \n",
       "20 2016-05-01 71.42175     \n",
       "21 2016-05-02 75.76589     \n",
       "22 2016-05-03 75.98495     \n",
       "23 2016-05-04 77.21575     \n",
       "24 2016-05-05 78.95644     \n",
       "25 2016-05-06 76.56293     \n",
       "26 2016-05-07 82.46379     \n",
       "27 2016-05-08 77.76340     \n",
       "28 2016-05-09 79.40444     \n",
       "29 2016-05-10 74.30761     \n",
       "30 2016-05-11 76.67129     \n",
       "31 2016-05-12 73.94382     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "df_v2_a1"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "15fcf96a",
   "metadata": {
    "papermill": {
     "duration": 0.009237,
     "end_time": "2022-10-12T12:05:47.617282",
     "exception": false,
     "start_time": "2022-10-12T12:05:47.608045",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### 2. Average heartrate for the whole sample"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "0a051814",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-12T12:05:47.638642Z",
     "iopub.status.busy": "2022-10-12T12:05:47.636926Z",
     "iopub.status.idle": "2022-10-12T12:05:47.659480Z",
     "shell.execute_reply": "2022-10-12T12:05:47.657446Z"
    },
    "papermill": {
     "duration": 0.03608,
     "end_time": "2022-10-12T12:05:47.662083",
     "exception": false,
     "start_time": "2022-10-12T12:05:47.626003",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "average_heartrate <- df_v2 %>%\n",
    "  summarize(avg_htrate = mean(Value))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "af75f246",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-12T12:05:47.682969Z",
     "iopub.status.busy": "2022-10-12T12:05:47.681172Z",
     "iopub.status.idle": "2022-10-12T12:05:47.705099Z",
     "shell.execute_reply": "2022-10-12T12:05:47.703129Z"
    },
    "papermill": {
     "duration": 0.037389,
     "end_time": "2022-10-12T12:05:47.707777",
     "exception": false,
     "start_time": "2022-10-12T12:05:47.670388",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 1 × 1</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>avg_htrate</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>77.32842</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 1 × 1\n",
       "\\begin{tabular}{l}\n",
       " avg\\_htrate\\\\\n",
       " <dbl>\\\\\n",
       "\\hline\n",
       "\t 77.32842\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 1 × 1\n",
       "\n",
       "| avg_htrate &lt;dbl&gt; |\n",
       "|---|\n",
       "| 77.32842 |\n",
       "\n"
      ],
      "text/plain": [
       "  avg_htrate\n",
       "1 77.32842  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "average_heartrate"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8450c45b",
   "metadata": {
    "papermill": {
     "duration": 0.008745,
     "end_time": "2022-10-12T12:05:47.725151",
     "exception": false,
     "start_time": "2022-10-12T12:05:47.716406",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### 3. Looking at minimun and Maximum daily heartrate"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "574fcb45",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-12T12:05:47.745799Z",
     "iopub.status.busy": "2022-10-12T12:05:47.744101Z",
     "iopub.status.idle": "2022-10-12T12:05:47.846754Z",
     "shell.execute_reply": "2022-10-12T12:05:47.844411Z"
    },
    "papermill": {
     "duration": 0.117248,
     "end_time": "2022-10-12T12:05:47.850712",
     "exception": false,
     "start_time": "2022-10-12T12:05:47.733464",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "min_d_htrate <- df_v2 %>%\n",
    "  group_by(date) %>%\n",
    "  summarize(min_d_hrtrate = min(Value))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "5fc1f8a0",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-12T12:05:47.872690Z",
     "iopub.status.busy": "2022-10-12T12:05:47.870879Z",
     "iopub.status.idle": "2022-10-12T12:05:47.908412Z",
     "shell.execute_reply": "2022-10-12T12:05:47.905910Z"
    },
    "papermill": {
     "duration": 0.05206,
     "end_time": "2022-10-12T12:05:47.911754",
     "exception": false,
     "start_time": "2022-10-12T12:05:47.859694",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 31 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>date</th><th scope=col>min_d_hrtrate</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>2016-04-12</td><td>41</td></tr>\n",
       "\t<tr><td>2016-04-13</td><td>43</td></tr>\n",
       "\t<tr><td>2016-04-14</td><td>43</td></tr>\n",
       "\t<tr><td>2016-04-15</td><td>39</td></tr>\n",
       "\t<tr><td>2016-04-16</td><td>43</td></tr>\n",
       "\t<tr><td>2016-04-17</td><td>40</td></tr>\n",
       "\t<tr><td>2016-04-18</td><td>41</td></tr>\n",
       "\t<tr><td>2016-04-19</td><td>42</td></tr>\n",
       "\t<tr><td>2016-04-20</td><td>44</td></tr>\n",
       "\t<tr><td>2016-04-21</td><td>42</td></tr>\n",
       "\t<tr><td>2016-04-22</td><td>43</td></tr>\n",
       "\t<tr><td>2016-04-23</td><td>40</td></tr>\n",
       "\t<tr><td>2016-04-24</td><td>40</td></tr>\n",
       "\t<tr><td>2016-04-25</td><td>43</td></tr>\n",
       "\t<tr><td>2016-04-26</td><td>40</td></tr>\n",
       "\t<tr><td>2016-04-27</td><td>38</td></tr>\n",
       "\t<tr><td>2016-04-28</td><td>40</td></tr>\n",
       "\t<tr><td>2016-04-29</td><td>42</td></tr>\n",
       "\t<tr><td>2016-04-30</td><td>41</td></tr>\n",
       "\t<tr><td>2016-05-01</td><td>39</td></tr>\n",
       "\t<tr><td>2016-05-02</td><td>43</td></tr>\n",
       "\t<tr><td>2016-05-03</td><td>42</td></tr>\n",
       "\t<tr><td>2016-05-04</td><td>36</td></tr>\n",
       "\t<tr><td>2016-05-05</td><td>42</td></tr>\n",
       "\t<tr><td>2016-05-06</td><td>47</td></tr>\n",
       "\t<tr><td>2016-05-07</td><td>41</td></tr>\n",
       "\t<tr><td>2016-05-08</td><td>43</td></tr>\n",
       "\t<tr><td>2016-05-09</td><td>44</td></tr>\n",
       "\t<tr><td>2016-05-10</td><td>41</td></tr>\n",
       "\t<tr><td>2016-05-11</td><td>40</td></tr>\n",
       "\t<tr><td>2016-05-12</td><td>44</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 31 × 2\n",
       "\\begin{tabular}{ll}\n",
       " date & min\\_d\\_hrtrate\\\\\n",
       " <chr> & <int>\\\\\n",
       "\\hline\n",
       "\t 2016-04-12 & 41\\\\\n",
       "\t 2016-04-13 & 43\\\\\n",
       "\t 2016-04-14 & 43\\\\\n",
       "\t 2016-04-15 & 39\\\\\n",
       "\t 2016-04-16 & 43\\\\\n",
       "\t 2016-04-17 & 40\\\\\n",
       "\t 2016-04-18 & 41\\\\\n",
       "\t 2016-04-19 & 42\\\\\n",
       "\t 2016-04-20 & 44\\\\\n",
       "\t 2016-04-21 & 42\\\\\n",
       "\t 2016-04-22 & 43\\\\\n",
       "\t 2016-04-23 & 40\\\\\n",
       "\t 2016-04-24 & 40\\\\\n",
       "\t 2016-04-25 & 43\\\\\n",
       "\t 2016-04-26 & 40\\\\\n",
       "\t 2016-04-27 & 38\\\\\n",
       "\t 2016-04-28 & 40\\\\\n",
       "\t 2016-04-29 & 42\\\\\n",
       "\t 2016-04-30 & 41\\\\\n",
       "\t 2016-05-01 & 39\\\\\n",
       "\t 2016-05-02 & 43\\\\\n",
       "\t 2016-05-03 & 42\\\\\n",
       "\t 2016-05-04 & 36\\\\\n",
       "\t 2016-05-05 & 42\\\\\n",
       "\t 2016-05-06 & 47\\\\\n",
       "\t 2016-05-07 & 41\\\\\n",
       "\t 2016-05-08 & 43\\\\\n",
       "\t 2016-05-09 & 44\\\\\n",
       "\t 2016-05-10 & 41\\\\\n",
       "\t 2016-05-11 & 40\\\\\n",
       "\t 2016-05-12 & 44\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 31 × 2\n",
       "\n",
       "| date &lt;chr&gt; | min_d_hrtrate &lt;int&gt; |\n",
       "|---|---|\n",
       "| 2016-04-12 | 41 |\n",
       "| 2016-04-13 | 43 |\n",
       "| 2016-04-14 | 43 |\n",
       "| 2016-04-15 | 39 |\n",
       "| 2016-04-16 | 43 |\n",
       "| 2016-04-17 | 40 |\n",
       "| 2016-04-18 | 41 |\n",
       "| 2016-04-19 | 42 |\n",
       "| 2016-04-20 | 44 |\n",
       "| 2016-04-21 | 42 |\n",
       "| 2016-04-22 | 43 |\n",
       "| 2016-04-23 | 40 |\n",
       "| 2016-04-24 | 40 |\n",
       "| 2016-04-25 | 43 |\n",
       "| 2016-04-26 | 40 |\n",
       "| 2016-04-27 | 38 |\n",
       "| 2016-04-28 | 40 |\n",
       "| 2016-04-29 | 42 |\n",
       "| 2016-04-30 | 41 |\n",
       "| 2016-05-01 | 39 |\n",
       "| 2016-05-02 | 43 |\n",
       "| 2016-05-03 | 42 |\n",
       "| 2016-05-04 | 36 |\n",
       "| 2016-05-05 | 42 |\n",
       "| 2016-05-06 | 47 |\n",
       "| 2016-05-07 | 41 |\n",
       "| 2016-05-08 | 43 |\n",
       "| 2016-05-09 | 44 |\n",
       "| 2016-05-10 | 41 |\n",
       "| 2016-05-11 | 40 |\n",
       "| 2016-05-12 | 44 |\n",
       "\n"
      ],
      "text/plain": [
       "   date       min_d_hrtrate\n",
       "1  2016-04-12 41           \n",
       "2  2016-04-13 43           \n",
       "3  2016-04-14 43           \n",
       "4  2016-04-15 39           \n",
       "5  2016-04-16 43           \n",
       "6  2016-04-17 40           \n",
       "7  2016-04-18 41           \n",
       "8  2016-04-19 42           \n",
       "9  2016-04-20 44           \n",
       "10 2016-04-21 42           \n",
       "11 2016-04-22 43           \n",
       "12 2016-04-23 40           \n",
       "13 2016-04-24 40           \n",
       "14 2016-04-25 43           \n",
       "15 2016-04-26 40           \n",
       "16 2016-04-27 38           \n",
       "17 2016-04-28 40           \n",
       "18 2016-04-29 42           \n",
       "19 2016-04-30 41           \n",
       "20 2016-05-01 39           \n",
       "21 2016-05-02 43           \n",
       "22 2016-05-03 42           \n",
       "23 2016-05-04 36           \n",
       "24 2016-05-05 42           \n",
       "25 2016-05-06 47           \n",
       "26 2016-05-07 41           \n",
       "27 2016-05-08 43           \n",
       "28 2016-05-09 44           \n",
       "29 2016-05-10 41           \n",
       "30 2016-05-11 40           \n",
       "31 2016-05-12 44           "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "min_d_htrate"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "f28bb7e1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-12T12:05:47.934139Z",
     "iopub.status.busy": "2022-10-12T12:05:47.932359Z",
     "iopub.status.idle": "2022-10-12T12:05:48.086996Z",
     "shell.execute_reply": "2022-10-12T12:05:48.084862Z"
    },
    "papermill": {
     "duration": 0.169224,
     "end_time": "2022-10-12T12:05:48.089840",
     "exception": false,
     "start_time": "2022-10-12T12:05:47.920616",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "max_d_htrate <- df_v2 %>%\n",
    "  group_by(date) %>%\n",
    "  summarize(max_d_hrtrate = max(Value))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "ed676cc0",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-12T12:05:48.114386Z",
     "iopub.status.busy": "2022-10-12T12:05:48.111879Z",
     "iopub.status.idle": "2022-10-12T12:05:48.149812Z",
     "shell.execute_reply": "2022-10-12T12:05:48.147819Z"
    },
    "papermill": {
     "duration": 0.052243,
     "end_time": "2022-10-12T12:05:48.152702",
     "exception": false,
     "start_time": "2022-10-12T12:05:48.100459",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 31 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>date</th><th scope=col>max_d_hrtrate</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>2016-04-12</td><td>176</td></tr>\n",
       "\t<tr><td>2016-04-13</td><td>160</td></tr>\n",
       "\t<tr><td>2016-04-14</td><td>172</td></tr>\n",
       "\t<tr><td>2016-04-15</td><td>191</td></tr>\n",
       "\t<tr><td>2016-04-16</td><td>172</td></tr>\n",
       "\t<tr><td>2016-04-17</td><td>174</td></tr>\n",
       "\t<tr><td>2016-04-18</td><td>177</td></tr>\n",
       "\t<tr><td>2016-04-19</td><td>195</td></tr>\n",
       "\t<tr><td>2016-04-20</td><td>181</td></tr>\n",
       "\t<tr><td>2016-04-21</td><td>203</td></tr>\n",
       "\t<tr><td>2016-04-22</td><td>169</td></tr>\n",
       "\t<tr><td>2016-04-23</td><td>171</td></tr>\n",
       "\t<tr><td>2016-04-24</td><td>171</td></tr>\n",
       "\t<tr><td>2016-04-25</td><td>176</td></tr>\n",
       "\t<tr><td>2016-04-26</td><td>154</td></tr>\n",
       "\t<tr><td>2016-04-27</td><td>163</td></tr>\n",
       "\t<tr><td>2016-04-28</td><td>174</td></tr>\n",
       "\t<tr><td>2016-04-29</td><td>158</td></tr>\n",
       "\t<tr><td>2016-04-30</td><td>189</td></tr>\n",
       "\t<tr><td>2016-05-01</td><td>145</td></tr>\n",
       "\t<tr><td>2016-05-02</td><td>180</td></tr>\n",
       "\t<tr><td>2016-05-03</td><td>169</td></tr>\n",
       "\t<tr><td>2016-05-04</td><td>174</td></tr>\n",
       "\t<tr><td>2016-05-05</td><td>165</td></tr>\n",
       "\t<tr><td>2016-05-06</td><td>177</td></tr>\n",
       "\t<tr><td>2016-05-07</td><td>166</td></tr>\n",
       "\t<tr><td>2016-05-08</td><td>199</td></tr>\n",
       "\t<tr><td>2016-05-09</td><td>181</td></tr>\n",
       "\t<tr><td>2016-05-10</td><td>184</td></tr>\n",
       "\t<tr><td>2016-05-11</td><td>180</td></tr>\n",
       "\t<tr><td>2016-05-12</td><td>152</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 31 × 2\n",
       "\\begin{tabular}{ll}\n",
       " date & max\\_d\\_hrtrate\\\\\n",
       " <chr> & <int>\\\\\n",
       "\\hline\n",
       "\t 2016-04-12 & 176\\\\\n",
       "\t 2016-04-13 & 160\\\\\n",
       "\t 2016-04-14 & 172\\\\\n",
       "\t 2016-04-15 & 191\\\\\n",
       "\t 2016-04-16 & 172\\\\\n",
       "\t 2016-04-17 & 174\\\\\n",
       "\t 2016-04-18 & 177\\\\\n",
       "\t 2016-04-19 & 195\\\\\n",
       "\t 2016-04-20 & 181\\\\\n",
       "\t 2016-04-21 & 203\\\\\n",
       "\t 2016-04-22 & 169\\\\\n",
       "\t 2016-04-23 & 171\\\\\n",
       "\t 2016-04-24 & 171\\\\\n",
       "\t 2016-04-25 & 176\\\\\n",
       "\t 2016-04-26 & 154\\\\\n",
       "\t 2016-04-27 & 163\\\\\n",
       "\t 2016-04-28 & 174\\\\\n",
       "\t 2016-04-29 & 158\\\\\n",
       "\t 2016-04-30 & 189\\\\\n",
       "\t 2016-05-01 & 145\\\\\n",
       "\t 2016-05-02 & 180\\\\\n",
       "\t 2016-05-03 & 169\\\\\n",
       "\t 2016-05-04 & 174\\\\\n",
       "\t 2016-05-05 & 165\\\\\n",
       "\t 2016-05-06 & 177\\\\\n",
       "\t 2016-05-07 & 166\\\\\n",
       "\t 2016-05-08 & 199\\\\\n",
       "\t 2016-05-09 & 181\\\\\n",
       "\t 2016-05-10 & 184\\\\\n",
       "\t 2016-05-11 & 180\\\\\n",
       "\t 2016-05-12 & 152\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 31 × 2\n",
       "\n",
       "| date &lt;chr&gt; | max_d_hrtrate &lt;int&gt; |\n",
       "|---|---|\n",
       "| 2016-04-12 | 176 |\n",
       "| 2016-04-13 | 160 |\n",
       "| 2016-04-14 | 172 |\n",
       "| 2016-04-15 | 191 |\n",
       "| 2016-04-16 | 172 |\n",
       "| 2016-04-17 | 174 |\n",
       "| 2016-04-18 | 177 |\n",
       "| 2016-04-19 | 195 |\n",
       "| 2016-04-20 | 181 |\n",
       "| 2016-04-21 | 203 |\n",
       "| 2016-04-22 | 169 |\n",
       "| 2016-04-23 | 171 |\n",
       "| 2016-04-24 | 171 |\n",
       "| 2016-04-25 | 176 |\n",
       "| 2016-04-26 | 154 |\n",
       "| 2016-04-27 | 163 |\n",
       "| 2016-04-28 | 174 |\n",
       "| 2016-04-29 | 158 |\n",
       "| 2016-04-30 | 189 |\n",
       "| 2016-05-01 | 145 |\n",
       "| 2016-05-02 | 180 |\n",
       "| 2016-05-03 | 169 |\n",
       "| 2016-05-04 | 174 |\n",
       "| 2016-05-05 | 165 |\n",
       "| 2016-05-06 | 177 |\n",
       "| 2016-05-07 | 166 |\n",
       "| 2016-05-08 | 199 |\n",
       "| 2016-05-09 | 181 |\n",
       "| 2016-05-10 | 184 |\n",
       "| 2016-05-11 | 180 |\n",
       "| 2016-05-12 | 152 |\n",
       "\n"
      ],
      "text/plain": [
       "   date       max_d_hrtrate\n",
       "1  2016-04-12 176          \n",
       "2  2016-04-13 160          \n",
       "3  2016-04-14 172          \n",
       "4  2016-04-15 191          \n",
       "5  2016-04-16 172          \n",
       "6  2016-04-17 174          \n",
       "7  2016-04-18 177          \n",
       "8  2016-04-19 195          \n",
       "9  2016-04-20 181          \n",
       "10 2016-04-21 203          \n",
       "11 2016-04-22 169          \n",
       "12 2016-04-23 171          \n",
       "13 2016-04-24 171          \n",
       "14 2016-04-25 176          \n",
       "15 2016-04-26 154          \n",
       "16 2016-04-27 163          \n",
       "17 2016-04-28 174          \n",
       "18 2016-04-29 158          \n",
       "19 2016-04-30 189          \n",
       "20 2016-05-01 145          \n",
       "21 2016-05-02 180          \n",
       "22 2016-05-03 169          \n",
       "23 2016-05-04 174          \n",
       "24 2016-05-05 165          \n",
       "25 2016-05-06 177          \n",
       "26 2016-05-07 166          \n",
       "27 2016-05-08 199          \n",
       "28 2016-05-09 181          \n",
       "29 2016-05-10 184          \n",
       "30 2016-05-11 180          \n",
       "31 2016-05-12 152          "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "max_d_htrate"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "id": "8d5204f5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-12T12:05:48.176367Z",
     "iopub.status.busy": "2022-10-12T12:05:48.174566Z",
     "iopub.status.idle": "2022-10-12T12:05:48.192323Z",
     "shell.execute_reply": "2022-10-12T12:05:48.190286Z"
    },
    "papermill": {
     "duration": 0.032469,
     "end_time": "2022-10-12T12:05:48.195180",
     "exception": false,
     "start_time": "2022-10-12T12:05:48.162711",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "extremes_htrates <- data.frame(min_d_htrate, max_d_hrtrate=max_d_htrate$max_d_hrtrate)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7d836d12",
   "metadata": {
    "papermill": {
     "duration": 0.009449,
     "end_time": "2022-10-12T12:05:48.213940",
     "exception": false,
     "start_time": "2022-10-12T12:05:48.204491",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### The table below shows the Minimum and Maximum daily heart rate"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 22,
   "id": "47152ea4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-12T12:05:48.236243Z",
     "iopub.status.busy": "2022-10-12T12:05:48.234509Z",
     "iopub.status.idle": "2022-10-12T12:05:48.277263Z",
     "shell.execute_reply": "2022-10-12T12:05:48.274584Z"
    },
    "papermill": {
     "duration": 0.057592,
     "end_time": "2022-10-12T12:05:48.280625",
     "exception": false,
     "start_time": "2022-10-12T12:05:48.223033",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 31 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>date</th><th scope=col>min_d_hrtrate</th><th scope=col>max_d_hrtrate</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>2016-04-12</td><td>41</td><td>176</td></tr>\n",
       "\t<tr><td>2016-04-13</td><td>43</td><td>160</td></tr>\n",
       "\t<tr><td>2016-04-14</td><td>43</td><td>172</td></tr>\n",
       "\t<tr><td>2016-04-15</td><td>39</td><td>191</td></tr>\n",
       "\t<tr><td>2016-04-16</td><td>43</td><td>172</td></tr>\n",
       "\t<tr><td>2016-04-17</td><td>40</td><td>174</td></tr>\n",
       "\t<tr><td>2016-04-18</td><td>41</td><td>177</td></tr>\n",
       "\t<tr><td>2016-04-19</td><td>42</td><td>195</td></tr>\n",
       "\t<tr><td>2016-04-20</td><td>44</td><td>181</td></tr>\n",
       "\t<tr><td>2016-04-21</td><td>42</td><td>203</td></tr>\n",
       "\t<tr><td>2016-04-22</td><td>43</td><td>169</td></tr>\n",
       "\t<tr><td>2016-04-23</td><td>40</td><td>171</td></tr>\n",
       "\t<tr><td>2016-04-24</td><td>40</td><td>171</td></tr>\n",
       "\t<tr><td>2016-04-25</td><td>43</td><td>176</td></tr>\n",
       "\t<tr><td>2016-04-26</td><td>40</td><td>154</td></tr>\n",
       "\t<tr><td>2016-04-27</td><td>38</td><td>163</td></tr>\n",
       "\t<tr><td>2016-04-28</td><td>40</td><td>174</td></tr>\n",
       "\t<tr><td>2016-04-29</td><td>42</td><td>158</td></tr>\n",
       "\t<tr><td>2016-04-30</td><td>41</td><td>189</td></tr>\n",
       "\t<tr><td>2016-05-01</td><td>39</td><td>145</td></tr>\n",
       "\t<tr><td>2016-05-02</td><td>43</td><td>180</td></tr>\n",
       "\t<tr><td>2016-05-03</td><td>42</td><td>169</td></tr>\n",
       "\t<tr><td>2016-05-04</td><td>36</td><td>174</td></tr>\n",
       "\t<tr><td>2016-05-05</td><td>42</td><td>165</td></tr>\n",
       "\t<tr><td>2016-05-06</td><td>47</td><td>177</td></tr>\n",
       "\t<tr><td>2016-05-07</td><td>41</td><td>166</td></tr>\n",
       "\t<tr><td>2016-05-08</td><td>43</td><td>199</td></tr>\n",
       "\t<tr><td>2016-05-09</td><td>44</td><td>181</td></tr>\n",
       "\t<tr><td>2016-05-10</td><td>41</td><td>184</td></tr>\n",
       "\t<tr><td>2016-05-11</td><td>40</td><td>180</td></tr>\n",
       "\t<tr><td>2016-05-12</td><td>44</td><td>152</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 31 × 3\n",
       "\\begin{tabular}{lll}\n",
       " date & min\\_d\\_hrtrate & max\\_d\\_hrtrate\\\\\n",
       " <chr> & <int> & <int>\\\\\n",
       "\\hline\n",
       "\t 2016-04-12 & 41 & 176\\\\\n",
       "\t 2016-04-13 & 43 & 160\\\\\n",
       "\t 2016-04-14 & 43 & 172\\\\\n",
       "\t 2016-04-15 & 39 & 191\\\\\n",
       "\t 2016-04-16 & 43 & 172\\\\\n",
       "\t 2016-04-17 & 40 & 174\\\\\n",
       "\t 2016-04-18 & 41 & 177\\\\\n",
       "\t 2016-04-19 & 42 & 195\\\\\n",
       "\t 2016-04-20 & 44 & 181\\\\\n",
       "\t 2016-04-21 & 42 & 203\\\\\n",
       "\t 2016-04-22 & 43 & 169\\\\\n",
       "\t 2016-04-23 & 40 & 171\\\\\n",
       "\t 2016-04-24 & 40 & 171\\\\\n",
       "\t 2016-04-25 & 43 & 176\\\\\n",
       "\t 2016-04-26 & 40 & 154\\\\\n",
       "\t 2016-04-27 & 38 & 163\\\\\n",
       "\t 2016-04-28 & 40 & 174\\\\\n",
       "\t 2016-04-29 & 42 & 158\\\\\n",
       "\t 2016-04-30 & 41 & 189\\\\\n",
       "\t 2016-05-01 & 39 & 145\\\\\n",
       "\t 2016-05-02 & 43 & 180\\\\\n",
       "\t 2016-05-03 & 42 & 169\\\\\n",
       "\t 2016-05-04 & 36 & 174\\\\\n",
       "\t 2016-05-05 & 42 & 165\\\\\n",
       "\t 2016-05-06 & 47 & 177\\\\\n",
       "\t 2016-05-07 & 41 & 166\\\\\n",
       "\t 2016-05-08 & 43 & 199\\\\\n",
       "\t 2016-05-09 & 44 & 181\\\\\n",
       "\t 2016-05-10 & 41 & 184\\\\\n",
       "\t 2016-05-11 & 40 & 180\\\\\n",
       "\t 2016-05-12 & 44 & 152\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 31 × 3\n",
       "\n",
       "| date &lt;chr&gt; | min_d_hrtrate &lt;int&gt; | max_d_hrtrate &lt;int&gt; |\n",
       "|---|---|---|\n",
       "| 2016-04-12 | 41 | 176 |\n",
       "| 2016-04-13 | 43 | 160 |\n",
       "| 2016-04-14 | 43 | 172 |\n",
       "| 2016-04-15 | 39 | 191 |\n",
       "| 2016-04-16 | 43 | 172 |\n",
       "| 2016-04-17 | 40 | 174 |\n",
       "| 2016-04-18 | 41 | 177 |\n",
       "| 2016-04-19 | 42 | 195 |\n",
       "| 2016-04-20 | 44 | 181 |\n",
       "| 2016-04-21 | 42 | 203 |\n",
       "| 2016-04-22 | 43 | 169 |\n",
       "| 2016-04-23 | 40 | 171 |\n",
       "| 2016-04-24 | 40 | 171 |\n",
       "| 2016-04-25 | 43 | 176 |\n",
       "| 2016-04-26 | 40 | 154 |\n",
       "| 2016-04-27 | 38 | 163 |\n",
       "| 2016-04-28 | 40 | 174 |\n",
       "| 2016-04-29 | 42 | 158 |\n",
       "| 2016-04-30 | 41 | 189 |\n",
       "| 2016-05-01 | 39 | 145 |\n",
       "| 2016-05-02 | 43 | 180 |\n",
       "| 2016-05-03 | 42 | 169 |\n",
       "| 2016-05-04 | 36 | 174 |\n",
       "| 2016-05-05 | 42 | 165 |\n",
       "| 2016-05-06 | 47 | 177 |\n",
       "| 2016-05-07 | 41 | 166 |\n",
       "| 2016-05-08 | 43 | 199 |\n",
       "| 2016-05-09 | 44 | 181 |\n",
       "| 2016-05-10 | 41 | 184 |\n",
       "| 2016-05-11 | 40 | 180 |\n",
       "| 2016-05-12 | 44 | 152 |\n",
       "\n"
      ],
      "text/plain": [
       "   date       min_d_hrtrate max_d_hrtrate\n",
       "1  2016-04-12 41            176          \n",
       "2  2016-04-13 43            160          \n",
       "3  2016-04-14 43            172          \n",
       "4  2016-04-15 39            191          \n",
       "5  2016-04-16 43            172          \n",
       "6  2016-04-17 40            174          \n",
       "7  2016-04-18 41            177          \n",
       "8  2016-04-19 42            195          \n",
       "9  2016-04-20 44            181          \n",
       "10 2016-04-21 42            203          \n",
       "11 2016-04-22 43            169          \n",
       "12 2016-04-23 40            171          \n",
       "13 2016-04-24 40            171          \n",
       "14 2016-04-25 43            176          \n",
       "15 2016-04-26 40            154          \n",
       "16 2016-04-27 38            163          \n",
       "17 2016-04-28 40            174          \n",
       "18 2016-04-29 42            158          \n",
       "19 2016-04-30 41            189          \n",
       "20 2016-05-01 39            145          \n",
       "21 2016-05-02 43            180          \n",
       "22 2016-05-03 42            169          \n",
       "23 2016-05-04 36            174          \n",
       "24 2016-05-05 42            165          \n",
       "25 2016-05-06 47            177          \n",
       "26 2016-05-07 41            166          \n",
       "27 2016-05-08 43            199          \n",
       "28 2016-05-09 44            181          \n",
       "29 2016-05-10 41            184          \n",
       "30 2016-05-11 40            180          \n",
       "31 2016-05-12 44            152          "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "extremes_htrates"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6f61ea8d",
   "metadata": {
    "papermill": {
     "duration": 0.010367,
     "end_time": "2022-10-12T12:05:48.301139",
     "exception": false,
     "start_time": "2022-10-12T12:05:48.290772",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### The heart rate table"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6b39a0f0",
   "metadata": {
    "papermill": {
     "duration": 0.00961,
     "end_time": "2022-10-12T12:05:48.320142",
     "exception": false,
     "start_time": "2022-10-12T12:05:48.310532",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "##### Con"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 23,
   "id": "7b7ce8d2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-12T12:05:48.343120Z",
     "iopub.status.busy": "2022-10-12T12:05:48.341133Z",
     "iopub.status.idle": "2022-10-12T12:05:48.360088Z",
     "shell.execute_reply": "2022-10-12T12:05:48.357881Z"
    },
    "papermill": {
     "duration": 0.033523,
     "end_time": "2022-10-12T12:05:48.362863",
     "exception": false,
     "start_time": "2022-10-12T12:05:48.329340",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "  heart_rate <- cbind(extremes_htrates, avg_d_hrtrate=df_v2_a1$avg_d_hrtrate)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 24,
   "id": "60689a08",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-10-12T12:05:48.385833Z",
     "iopub.status.busy": "2022-10-12T12:05:48.384092Z",
     "iopub.status.idle": "2022-10-12T12:05:48.425997Z",
     "shell.execute_reply": "2022-10-12T12:05:48.423442Z"
    },
    "papermill": {
     "duration": 0.05693,
     "end_time": "2022-10-12T12:05:48.429309",
     "exception": false,
     "start_time": "2022-10-12T12:05:48.372379",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 31 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>date</th><th scope=col>min_d_hrtrate</th><th scope=col>max_d_hrtrate</th><th scope=col>avg_d_hrtrate</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>2016-04-12</td><td>41</td><td>176</td><td>79.70778</td></tr>\n",
       "\t<tr><td>2016-04-13</td><td>43</td><td>160</td><td>75.40048</td></tr>\n",
       "\t<tr><td>2016-04-14</td><td>43</td><td>172</td><td>76.15573</td></tr>\n",
       "\t<tr><td>2016-04-15</td><td>39</td><td>191</td><td>79.98256</td></tr>\n",
       "\t<tr><td>2016-04-16</td><td>43</td><td>172</td><td>80.39683</td></tr>\n",
       "\t<tr><td>2016-04-17</td><td>40</td><td>174</td><td>78.22742</td></tr>\n",
       "\t<tr><td>2016-04-18</td><td>41</td><td>177</td><td>76.66505</td></tr>\n",
       "\t<tr><td>2016-04-19</td><td>42</td><td>195</td><td>78.78663</td></tr>\n",
       "\t<tr><td>2016-04-20</td><td>44</td><td>181</td><td>77.69463</td></tr>\n",
       "\t<tr><td>2016-04-21</td><td>42</td><td>203</td><td>78.52549</td></tr>\n",
       "\t<tr><td>2016-04-22</td><td>43</td><td>169</td><td>76.65653</td></tr>\n",
       "\t<tr><td>2016-04-23</td><td>40</td><td>171</td><td>78.76555</td></tr>\n",
       "\t<tr><td>2016-04-24</td><td>40</td><td>171</td><td>76.00000</td></tr>\n",
       "\t<tr><td>2016-04-25</td><td>43</td><td>176</td><td>77.96417</td></tr>\n",
       "\t<tr><td>2016-04-26</td><td>40</td><td>154</td><td>76.29034</td></tr>\n",
       "\t<tr><td>2016-04-27</td><td>38</td><td>163</td><td>75.09062</td></tr>\n",
       "\t<tr><td>2016-04-28</td><td>40</td><td>174</td><td>75.42431</td></tr>\n",
       "\t<tr><td>2016-04-29</td><td>42</td><td>158</td><td>76.30370</td></tr>\n",
       "\t<tr><td>2016-04-30</td><td>41</td><td>189</td><td>78.69650</td></tr>\n",
       "\t<tr><td>2016-05-01</td><td>39</td><td>145</td><td>71.42175</td></tr>\n",
       "\t<tr><td>2016-05-02</td><td>43</td><td>180</td><td>75.76589</td></tr>\n",
       "\t<tr><td>2016-05-03</td><td>42</td><td>169</td><td>75.98495</td></tr>\n",
       "\t<tr><td>2016-05-04</td><td>36</td><td>174</td><td>77.21575</td></tr>\n",
       "\t<tr><td>2016-05-05</td><td>42</td><td>165</td><td>78.95644</td></tr>\n",
       "\t<tr><td>2016-05-06</td><td>47</td><td>177</td><td>76.56293</td></tr>\n",
       "\t<tr><td>2016-05-07</td><td>41</td><td>166</td><td>82.46379</td></tr>\n",
       "\t<tr><td>2016-05-08</td><td>43</td><td>199</td><td>77.76340</td></tr>\n",
       "\t<tr><td>2016-05-09</td><td>44</td><td>181</td><td>79.40444</td></tr>\n",
       "\t<tr><td>2016-05-10</td><td>41</td><td>184</td><td>74.30761</td></tr>\n",
       "\t<tr><td>2016-05-11</td><td>40</td><td>180</td><td>76.67129</td></tr>\n",
       "\t<tr><td>2016-05-12</td><td>44</td><td>152</td><td>73.94382</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 31 × 4\n",
       "\\begin{tabular}{llll}\n",
       " date & min\\_d\\_hrtrate & max\\_d\\_hrtrate & avg\\_d\\_hrtrate\\\\\n",
       " <chr> & <int> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 2016-04-12 & 41 & 176 & 79.70778\\\\\n",
       "\t 2016-04-13 & 43 & 160 & 75.40048\\\\\n",
       "\t 2016-04-14 & 43 & 172 & 76.15573\\\\\n",
       "\t 2016-04-15 & 39 & 191 & 79.98256\\\\\n",
       "\t 2016-04-16 & 43 & 172 & 80.39683\\\\\n",
       "\t 2016-04-17 & 40 & 174 & 78.22742\\\\\n",
       "\t 2016-04-18 & 41 & 177 & 76.66505\\\\\n",
       "\t 2016-04-19 & 42 & 195 & 78.78663\\\\\n",
       "\t 2016-04-20 & 44 & 181 & 77.69463\\\\\n",
       "\t 2016-04-21 & 42 & 203 & 78.52549\\\\\n",
       "\t 2016-04-22 & 43 & 169 & 76.65653\\\\\n",
       "\t 2016-04-23 & 40 & 171 & 78.76555\\\\\n",
       "\t 2016-04-24 & 40 & 171 & 76.00000\\\\\n",
       "\t 2016-04-25 & 43 & 176 & 77.96417\\\\\n",
       "\t 2016-04-26 & 40 & 154 & 76.29034\\\\\n",
       "\t 2016-04-27 & 38 & 163 & 75.09062\\\\\n",
       "\t 2016-04-28 & 40 & 174 & 75.42431\\\\\n",
       "\t 2016-04-29 & 42 & 158 & 76.30370\\\\\n",
       "\t 2016-04-30 & 41 & 189 & 78.69650\\\\\n",
       "\t 2016-05-01 & 39 & 145 & 71.42175\\\\\n",
       "\t 2016-05-02 & 43 & 180 & 75.76589\\\\\n",
       "\t 2016-05-03 & 42 & 169 & 75.98495\\\\\n",
       "\t 2016-05-04 & 36 & 174 & 77.21575\\\\\n",
       "\t 2016-05-05 & 42 & 165 & 78.95644\\\\\n",
       "\t 2016-05-06 & 47 & 177 & 76.56293\\\\\n",
       "\t 2016-05-07 & 41 & 166 & 82.46379\\\\\n",
       "\t 2016-05-08 & 43 & 199 & 77.76340\\\\\n",
       "\t 2016-05-09 & 44 & 181 & 79.40444\\\\\n",
       "\t 2016-05-10 & 41 & 184 & 74.30761\\\\\n",
       "\t 2016-05-11 & 40 & 180 & 76.67129\\\\\n",
       "\t 2016-05-12 & 44 & 152 & 73.94382\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 31 × 4\n",
       "\n",
       "| date &lt;chr&gt; | min_d_hrtrate &lt;int&gt; | max_d_hrtrate &lt;int&gt; | avg_d_hrtrate &lt;dbl&gt; |\n",
       "|---|---|---|---|\n",
       "| 2016-04-12 | 41 | 176 | 79.70778 |\n",
       "| 2016-04-13 | 43 | 160 | 75.40048 |\n",
       "| 2016-04-14 | 43 | 172 | 76.15573 |\n",
       "| 2016-04-15 | 39 | 191 | 79.98256 |\n",
       "| 2016-04-16 | 43 | 172 | 80.39683 |\n",
       "| 2016-04-17 | 40 | 174 | 78.22742 |\n",
       "| 2016-04-18 | 41 | 177 | 76.66505 |\n",
       "| 2016-04-19 | 42 | 195 | 78.78663 |\n",
       "| 2016-04-20 | 44 | 181 | 77.69463 |\n",
       "| 2016-04-21 | 42 | 203 | 78.52549 |\n",
       "| 2016-04-22 | 43 | 169 | 76.65653 |\n",
       "| 2016-04-23 | 40 | 171 | 78.76555 |\n",
       "| 2016-04-24 | 40 | 171 | 76.00000 |\n",
       "| 2016-04-25 | 43 | 176 | 77.96417 |\n",
       "| 2016-04-26 | 40 | 154 | 76.29034 |\n",
       "| 2016-04-27 | 38 | 163 | 75.09062 |\n",
       "| 2016-04-28 | 40 | 174 | 75.42431 |\n",
       "| 2016-04-29 | 42 | 158 | 76.30370 |\n",
       "| 2016-04-30 | 41 | 189 | 78.69650 |\n",
       "| 2016-05-01 | 39 | 145 | 71.42175 |\n",
       "| 2016-05-02 | 43 | 180 | 75.76589 |\n",
       "| 2016-05-03 | 42 | 169 | 75.98495 |\n",
       "| 2016-05-04 | 36 | 174 | 77.21575 |\n",
       "| 2016-05-05 | 42 | 165 | 78.95644 |\n",
       "| 2016-05-06 | 47 | 177 | 76.56293 |\n",
       "| 2016-05-07 | 41 | 166 | 82.46379 |\n",
       "| 2016-05-08 | 43 | 199 | 77.76340 |\n",
       "| 2016-05-09 | 44 | 181 | 79.40444 |\n",
       "| 2016-05-10 | 41 | 184 | 74.30761 |\n",
       "| 2016-05-11 | 40 | 180 | 76.67129 |\n",
       "| 2016-05-12 | 44 | 152 | 73.94382 |\n",
       "\n"
      ],
      "text/plain": [
       "   date       min_d_hrtrate max_d_hrtrate avg_d_hrtrate\n",
       "1  2016-04-12 41            176           79.70778     \n",
       "2  2016-04-13 43            160           75.40048     \n",
       "3  2016-04-14 43            172           76.15573     \n",
       "4  2016-04-15 39            191           79.98256     \n",
       "5  2016-04-16 43            172           80.39683     \n",
       "6  2016-04-17 40            174           78.22742     \n",
       "7  2016-04-18 41            177           76.66505     \n",
       "8  2016-04-19 42            195           78.78663     \n",
       "9  2016-04-20 44            181           77.69463     \n",
       "10 2016-04-21 42            203           78.52549     \n",
       "11 2016-04-22 43            169           76.65653     \n",
       "12 2016-04-23 40            171           78.76555     \n",
       "13 2016-04-24 40            171           76.00000     \n",
       "14 2016-04-25 43            176           77.96417     \n",
       "15 2016-04-26 40            154           76.29034     \n",
       "16 2016-04-27 38            163           75.09062     \n",
       "17 2016-04-28 40            174           75.42431     \n",
       "18 2016-04-29 42            158           76.30370     \n",
       "19 2016-04-30 41            189           78.69650     \n",
       "20 2016-05-01 39            145           71.42175     \n",
       "21 2016-05-02 43            180           75.76589     \n",
       "22 2016-05-03 42            169           75.98495     \n",
       "23 2016-05-04 36            174           77.21575     \n",
       "24 2016-05-05 42            165           78.95644     \n",
       "25 2016-05-06 47            177           76.56293     \n",
       "26 2016-05-07 41            166           82.46379     \n",
       "27 2016-05-08 43            199           77.76340     \n",
       "28 2016-05-09 44            181           79.40444     \n",
       "29 2016-05-10 41            184           74.30761     \n",
       "30 2016-05-11 40            180           76.67129     \n",
       "31 2016-05-12 44            152           73.94382     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "heart_rate"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "560942bb",
   "metadata": {
    "papermill": {
     "duration": 0.010106,
     "end_time": "2022-10-12T12:05:48.449203",
     "exception": false,
     "start_time": "2022-10-12T12:05:48.439097",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 152.94207,
   "end_time": "2022-10-12T12:05:48.683988",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2022-10-12T12:03:15.741918",
   "version": "2.3.4"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
