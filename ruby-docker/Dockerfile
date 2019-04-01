FROM ruby:2.5.0-slim

RUN apt-get update && \
    apt-get install -y gnupg build-essential wget unzip sudo curl xvfb \
    && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list \
    && apt-get update -y && apt-get install -y google-chrome-stable

# Set up Chromedriver Environment variables
ENV CHROMEDRIVER_VERSION 73.0.3683.68

# Download and install Chromedriver
RUN rm -rf ~/chromedriver \
    && wget -N "http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_VERSION/chromedriver_linux64.zip" -P ~/ \
    && unzip ~/chromedriver_linux64.zip -d ~/ \
    && rm ~/chromedriver_linux64.zip \
    && sudo mv -f ~/chromedriver /usr/local/bin \
    && sudo chown root:root /usr/local/bin\
    && sudo chmod 0755 /usr/local/bin

WORKDIR /app

COPY Gemfile* ./

RUN mkdir features

RUN bundle install

CMD cucumber