FROM danielgtaylor/apisprout


RUN mkdir -p ~/swagger


COPY ./scripts/mock-server.sh .
RUN chmod +x mock-server.sh

COPY fake-api/swagger/ /swagger

