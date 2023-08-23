
FROM python:3.10

RUN apt-get update && apt-get upgrade -y  # Use apt-get instead of apt
RUN apt-get install git -y  # Use apt-get instead of apt
COPY requirements.txt /requirements.txt

WORKDIR /  # Remove unnecessary line (cd /)
RUN pip3 install -U pip && pip3 install -U -r requirements.txt

WORKDIR /Elsa
COPY start.sh /start.sh

# Expose port 8080
EXPOSE 8080  # Corrected the exposed port number

CMD ["/bin/bash", "/start.sh"]
