# xlsx-combiner

This will combine two xlsx files that are located in an s3 bucket.
This code is used to generate a zip file for a s3 function.

## prereqs

- create a template file in an s3 bucket
- ensure there is a xlsx file that has data you wish to combine into another xlsx

## generate zip file manually

1. pip install --target ./package openpyxl
2. cd package
3. zip -r ../pack.zip .
4. cd ..
5. zip pack.zip lambda_function.py

## create lambda function and upload zipfile

do this yourself, im lazy

## add environment variables

Env vars are: 
  - BUCKET: s3 bucket that contains these files
  - NEW_DATA_FILE: name of the xlsx that is auto generated
  - TEMPLATE_FILE: template to add the new data too
  - DESTINATION_FILE: destination filename, will be created in the bucket
  - NEW_DATA_WORKSHEET_NAME: worksheet name (at the bottom of the xlsx) for the new incoming data
  - TEMPLATED_WORKSHEET_NAME: worksheet name for the sheet to be updated with new data
