FROM python:3.11

RUN pip3 install ktoolbox

WORKDIR /work
COPY ./entrypoint.sh /work/

RUN chmod a+x entrypoint.sh \
    && groupadd -r appuser && useradd -r -g appuser appuser

USER appuser

ENV KEMONO_CREATOR_URL=NONE

VOLUME [ "/work/output" ]

ENTRYPOINT [ "./entrypoint.sh" ]