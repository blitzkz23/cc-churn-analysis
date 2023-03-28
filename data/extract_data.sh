#!/bin/bash

# Download the ZIP file
wget https://rakamin-lms.s3.ap-southeast-1.amazonaws.com/files/Data_Task_5-ff9872f9-5f5c-4f6d-8579-cc8530951b8a.zip

# Extract the contents of the ZIP file
unzip Data_Task_5-ff9872f9-5f5c-4f6d-8579-cc8530951b8a.zip -d raw/

# Clean up by removing the ZIP file
rm Data_Task_5-ff9872f9-5f5c-4f6d-8579-cc8530951b8a.zip

