# Copy python image
FROM python:3.6.3
MAINTAINER JASON.CHEN <jason.chen@senseinfosys.com>

# Updating pip
RUN pip install --upgrade pip

# Set the work directory
WORKDIR /image_base

# Copy all the file from root (.) to root (.)
copy . .

# Install python libraries you need
RUN pip3 install --no-cache -r requirements.txt

# Changing back to working directory
WORKDIR /image_base

# Activate API
# template => gunicorn <module.py>:<Flask(__name__)>
#CMD gunicorn --bind 0.0.0.0:$FLASK_PORT ER_REPRESENT_API:app
CMD app.py




