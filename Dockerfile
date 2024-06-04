FROM python:3.11

RUN pip3 install ktoolbox

WORKDIR /downloads

RUN groupadd -r appuser \
    && useradd -r -g appuser appuser

USER appuser

VOLUME [ "/downloads" ]

ENTRYPOINT [ "ktoolbox" ]