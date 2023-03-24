run:
	poetry run python csv_play.py

build:
	pip install --target ./package openpyxl
	cd package
	zip -r ../pack.zip .
	cd ..
	zip pack.zip lambda_function.py