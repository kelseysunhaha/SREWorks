FROM {{ POSTRUN_IMAGE }}

RUN apk add mariadb-dev python3-dev gcc musl-dev

# RUN pip config set global.index-url http://mirrors.aliyun.com/pypi/simple && pip config set global.trusted-host mirrors.aliyun.com

RUN pip install mysqlclient

COPY ./APP-META-PRIVATE/postrun /app/postrun
