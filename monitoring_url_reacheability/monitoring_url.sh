#!/bin/bash
#set -x

today=$(date +%Y_%m_%d_%H:%M:%S)
#input_file="/avinash/Python_code/Devops_Practice/monitoring_url_reacheability/url.csv"
#output_file="/avinash/Python_code/Devops_Practice/monitoring_url_reacheability/responsetime.csv_$today"
#output_file1="/avinash/Python_code/Devops_Practice/monitoring_url_reacheability/httpresponsecode.csv_$today"

#echo "output_file"

function response_time() {

while IFS= read -r line
do

for i in `echo "$line"`;
do

#response_time=`/usr/bin/curl -w "@/avinash/Python_code/Devops_Practice/monitoring_url_reacheability/curl-format.txt" -o /dev/null -s $i | tail -1 | awk '{print $2}'`		
echo "$i", "$response_time" >> $output_file
		 

done
done < "$input_file"
}

function response_code() { 
while IFS= read -r line
do

for i in `echo "$line"`;
do

response_code=`/usr/bin/curl -i "$i" | head -1 | awk '{print $2}'`
echo $response_code

if [ "$response_code" == "200"  ]; then

	echo "URL" $i "is accessible" >> $output_file1
else

	echo "URL" $i "is not accessible and giving error with" $response_code "http response code." >> $output_file1
	echo|/bin/mail -s "URL $i is Down with http_response code $response_code" 'avinash.kumar2@lionresources.com' <<< 'Please check URL is not accessible right now and giving error with http_response code.'
fi


done
done < "$input_file"
}
response_time
response_code
