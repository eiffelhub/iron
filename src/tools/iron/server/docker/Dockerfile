FROM eiffel/develop:dev
MAINTAINER Jocelyn Fiat
LABEL description="									\
IRON repository service.							\
To use it:											\
  docker run -t -i eiffel/iron						\
  open a browser on http://localhost:$IRON_PORT/	\
Iron default credential= $IRON_USER:$IRON_PASSWORD	\
													\
The linux account is eiffel:eiffel					\
													\
To open an xterm, add the following argument 		\
	-e DISPLAY=:0 -v /tmp/.X11-unix:/tmp/.X11-unix 	\
and append "xterm" to the docker command line.		\
."

USER eiffel
ENV HOME /home/eiffel
ENV IRON_DIR ${HOME}/iron
ENV IRON_PORT 8080

EXPOSE 8080

USER root
#RUN apt-get install -y apache2 libapache2-mod-fcgid libfcgi-dev
#RUN a2enmod rewrite
#RUN a2enmod suexec
#RUN a2enmod include
#RUN a2enmod fcgid
#RUN service apache2 restart

# Copy iron related scripts

USER root
COPY www ${IRON_DIR}/www
COPY scripts ${IRON_DIR}/scripts
RUN /bin/chown eiffel -R ${IRON_DIR}

USER eiffel
RUN /bin/chmod u+x ${IRON_DIR}/scripts/*.sh
WORKDIR ${IRON_DIR}/scripts/

RUN /bin/bash ${IRON_DIR}/scripts/iron_install.sh ${IRON_DIR} ${IRON_PORT} ${IRON_USER} ${IRON_PASSWORD} --clean

# Entrypoint 
USER eiffel
WORKDIR ${IRON_DIR}/www
CMD ${IRON_DIR}/bin/irond

