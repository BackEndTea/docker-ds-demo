# We will use a basic python image
FROM python:2.7-jessie

# Update packages
RUN apt-get update -y && apt-get install wget -y

# Create an src direcotry where we will keep our source code
RUN mkdir /src
# Make it our current direcotry
WORKDIR /src


# Add ourselves as a user so we don't get conflicts when running thing within our container
RUN useradd --shell /bin/bash science
USER science

#Copy our requirements.txt and install the packages in our container
COPY requirements.txt /src/requirements.txt
RUN pip install -r requirements.txt
