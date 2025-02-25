FROM jepthoniq/jepthon:slim-buster

#clonning repo 
RUN git clone https://github.com/Comanda56/hero.git /root/jepthon
#working directory 
WORKDIR /root/jepthon

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/HuRe/bin:$PATH"

CMD ["python3","-m","HuRe"]