FROM ubuntu:20.04
ENV BASE_DIR=/opt/capillary/dronahq-poc
RUN echo $BASE_DIR
RUN mkdir -p $BASE_DIR
WORKDIR $BASE_DIR
CMD '"$(curl -fsSL https://studio.dronahq.com/onprem/install_sh.sh)" <<(echo "1F2891EB-0C79-11EE-B65F-0E71B101E9A3")'
EXPOSE 80 443 22 8080
