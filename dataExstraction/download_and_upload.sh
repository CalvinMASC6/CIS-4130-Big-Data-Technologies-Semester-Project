#!/bin/bash

for YEAR in 2023 2022 2021 2020 2018 2017 2016 2015 2014 2013 2012 2011
do
   for MONTH in 01 02 03 04 05 06 07 08 09 10 11 12
   do
      FILENAME=yellow_tripdata_${YEAR}-${MONTH}.parquet
      curl -L -o ${FILENAME} https://d37ci6vzurychx.cloudfront.net/trip-data/${FILENAME}
      gcloud storage cp  ${FILENAME} gs://my-bigdata-project-cm/landing/${FILENAME}
   done
done