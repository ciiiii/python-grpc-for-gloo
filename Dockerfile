FROM python:3.6

WORKDIR /hello_world
COPY . .
RUN pip install --upgrade pip -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com
RUN pip install -r requirements.txt -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com
EXPOSE 50051
CMD [ "python", "-u", "-m", "greeter_server" ]