FROM java:8

RUN mkdir -p /home/admin/workspace/package && \
    mkdir -p /home/admin/logs && \
    mkdir -p /home/admin/data

COPY target/${artifactId}-${version}-package.tar.gz /home/admin/workspace/package

RUN cd /home/admin/workspace && tar zxf /home/admin/workspace/package/${artifactId}-${version}-package.tar.gz

CMD /home/admin/workspace/bin/start.sh