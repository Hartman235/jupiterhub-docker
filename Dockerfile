FROM python

RUN apt install curl
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install nodejs-legacy
RUN npm install -g configurable-http-proxy
RUN pip install jupyterhub
RUN pip install --upgrade notebook

EXPOSE 8000

RUN useradd -ms /bin/bash admin
RUN echo 'admin:admin' | chpasswd

CMD jupyterhub