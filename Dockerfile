FROM ubuntu:latest
# extra metadata
LABEL version="1.0"
LABEL description="First image with Dockerfile."
ENV PYTHONUNBUFFERED 1
ENV PYTHONIOENCODING UTF-8
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt-get install -y software-properties-common
RUN add-apt-repository main
RUN add-apt-repository universe
RUN add-apt-repository restricted
RUN add-apt-repository multiverse
RUN apt-get install -y libmysqlclient-dev gunicorn 
RUN apt-get install -y libcairo2-dev 
RUN apt-get install -y python-imaging
RUN apt-get install -y libpango1.0-dev
RUN apt-get install -y libgif-dev 
RUN apt-get upgrade -y && apt-get install -y \
libsqlite3-dev 
RUN apt-get install -y --no-install-recommends apt-utils build-essential sudo git
RUN apt install -y python2.7 python-pip
RUN apt install -y python3-pip
RUN pip install -U pip
RUN pip install -U gunicorn
RUN mkdir /code
COPY requirements.txt /code
ADD composeexample /code
WORKDIR /code
RUN pip install -r requirements.txt
CMD ["bash"]
EXPOSE 8000