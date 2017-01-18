from fareoffice/base
RUN yum install wget -y
WORKDIR /
RUN wget https://github.com/containous/traefik/releases/download/v1.1.2/traefik_linux-amd64
RUN mv traefik_linux-amd64 traefik
RUN chmod 700 traefik
ADD traefik.toml /traefik.toml
CMD ./traefik -c traefik.toml
