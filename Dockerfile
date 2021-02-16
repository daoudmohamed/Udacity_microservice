FROM python:3.7.3-stretch

## Step 1:
RUN mkdir app

WORKDIR /app/

## Step 2:
COPY app.py /app/
COPY requirements.txt /app/
COPY model_data /app/model_data

RUN ls

## Step 3:
# hadolint ignore=DL3013
RUN pip install --upgrade --no-cache-dir pip &&\
    pip install --trusted-host pypi.python.org --no-cache-dir -r requirements.txt


## Step 4:
Expose 80

## Step 5:
CMD ["python", "app.py"]

