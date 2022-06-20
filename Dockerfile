FROM ubuntu

WORKDIR /server

RUN apt update
RUN apt upgrade -y
RUN apt install -y \
  ca-certificates \
  xz-utils

# Install Cfx.re
ADD https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/5659-c96f739ec9445a969f9eca8eff71b933aaaad4d4/fx.tar.xz /tmp
RUN tar -xJf /tmp/fx.tar.xz -C /server

VOLUME [ "/server/txData" ]

EXPOSE 40120
EXPOSE 30120/tcp
EXPOSE 30120/udp

CMD [ "/server/run.sh" ]