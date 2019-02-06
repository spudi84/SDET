FROM python:3
ADD Sort_csv.py /
ADD input.csv /
CMD [ "python", "./Sort_csv.py" ]