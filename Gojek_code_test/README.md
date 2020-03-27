# GOJEK_CODE_TEST

There are two scripts for two jobs.

1) alphaserver.sh
2) alphaclient.sh

alphaserver.sh and alphaclient.sh both scripts will be places on alphaserver machine with the same folder. 
We just have to clone this folder from the repository - https://github.com/Avinashannand/Devops_Practice.git on the alphaserver machine.

command used to clone this repo - git clone https://github.com/Avinashannand/Devops_Practice.git


After cloning, we need to make some changes as mentined in both the scripts and execute it.

After execution it will reflects the results as per the example mentioned in the test question set.

For example : - 

Say, AlphaClient is running on 2 machines (nodeABC and nodeXYZ).

3 ssh log-in attempts were made at nodeABC
2 ssh log-in attempts were made at nodeXYZ

Then AlphaServer shows a web-page or console message similar to

Metrics for ssh log-in attempts
* nodeABC had 3 attempt
* nodeXYZ had 2 attempt


