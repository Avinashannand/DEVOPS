URL MONITORING 

This is a project of Monitor URLs for reachability and create a report on the basis of thier total time taken in accessing the URL.
This project is written by using bash scripting.

Name of Project  - monitoring_url_reacheability

This project consists of 5 files.
1) url.csv
2) curl-format.txt
3) monitoring_url.sh
4) responsetime.csv_2020_04_17_04:40:57
5) httpresponsecode.csv_2020_04_17_04:40:57

First file url.csv is the input file in which multiple urls are stored for which we have to check the response time and their accessibility as per the http response code.

Second file curl-format.txt is the file for formatting and calculating total time taken in accessing the URL.

Third file is the main file which is a bash script file. This file perform all the jobs of monitoring URL response time as well as response code and generating alerts and sending it to some email_id.

Fourth and Fifth file is basically the output which will gets generated after executing this "monitoring_url.sh" file. These two files are basically time based generated output file, which will help us in analyzing long term performance of URL as per the generated stored output in these two files.

From 4th and 5th file we can analyze the response time as well as http response code of the URL.

Alerts will gets generated when http response code of URL will not 200. As soon as it gets other response code than 200, an alerts will gets triggerd on the provided email_id.

WE need to set the cron job for this job by following below mentioned steps: -

1) crontab -e  //This command is basically used for opening and editing the crontab file.
2) */30 * * * *  sh /avinash/Python_code/Devops_Practice/monitoring_url_reacheability/monitoring_url.sh  // This cronjob will execute this scripts periodically after every 30 min.
