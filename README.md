# CIS-4130-Big-Data-Technologies-Semester-Project
Processing and insight finding for large amounts of data via google cloud platform. Based on the New York Taxi Data for yellow taxi's.

https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page
First time using pyspark and google cloud platform so there are some rookie mistakes.

Note the standard MIT License.
In summary, this project was gathering data from a source, in my case the taxi cab database for the New York state and surrounding areas for yellow taxi cabs. 

First is the data acquisition, the code is in the folder labeled ‘dataExtraction’. I used selenium at the time but I have since learned it would have been more efficient to use curl to accomplish the data transfer, so I would use that in future. Also, I renamed the files in my selenium code, but have since been told that it's best to just leave the files with the default names. In the data cleaning step I would rename the files back to their normal names when uploading them to the cloud.

Next is data exploitation. Google cloud dataproc was not functioning for me during this section of the project, so I was forced to download the files manually for exploration, but with minor modifications you could get this code to access the files through the cloud. Example exploration file is called ‘Exploratory Data Analysis_2017_April’ for the same year.

Following, I cleaned the data. The list of changes is located in the repository under “m3 change notes”. The data for 2009 and 2010 were unusable within the time limits due to missing data and changes to the structure of the data that were impossible to process with my skill set at the time. Due to this being the first time I used pyspark and worked with such large amounts of data I forgot to remove outliers during this step of the code. I ended up doing that during the aggregation and model building steps.

Continuing was feature engineering. I am trying to predict the tip amount. The transformation graph excel file contains a representation of my process. The model I made is about 50% accurate. I notice that it produces a less accurate model when I try to make one based on more recent data, so I will have to continue changing the way the model is created post semester. Various graphs in relation to my models accuracy are located in the folder labeled model in addition to the model itself.

Lastly was data aggregation and visualization. Initially I wanted to aggregate every file together and then upload the finished aggregation to gcs, but the system actually ran out of ram repeatedly so I was forced to aggregate each file and upload it before moving on to the next. In retrospect I should have aggregated about five hundred thousand rows together at a time before uploading them to gcs. After that I proceed to make a series of graphs that attempt to draw insight into the data.
