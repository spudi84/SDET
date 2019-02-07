# SDET
##Files Included in the Repository and the working
-------------------------------------------------
-------------------------------------------------

1)	Sort_csv.py – Python script to sort input.csv in descending order
2)	Dockerfile
3)	Sort_csv.feature – Gherkin test for the python script
4)	Gherkin_explanations.txt – Gherkin Test explanations
5)	Q&A.txt – Answers for the Tools and Testing Methodology sections
6)	input.csv – Sample input file to test the working

###How to run the Sort_csv.py script using docker
----------------------------------------------
1) Copy the Dockerfile, Sort_csv.py and input.csv to your local machine
2) Browse to the local path on command line
3) Run the following command to create an image "docker build -t *image-name* ."
4) Run the following command to run the image "docker run *image-name*"
5) The output.csv will be created on the image and can be copied to the local machine using the following command
"docker cp *container_id*:output.csv ."
6) The log file is **Sort_csv.log** and can be copied using the same docker command as above.
