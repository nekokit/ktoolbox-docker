FROM python:3.11

RUN pip3 install ktoolbox

WORKDIR /work
COPY ./entrypoint.sh /work/

RUN chmod u+x entrypoint.sh

ENV KEMONO_CREATOR_URL=NONE
ENV PUID=1000
ENV PGID=1000

ENTRYPOINT [ "./entrypoint.sh" ]