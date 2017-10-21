FROM cptactionhank/atlassian-jira

USER root:root

RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get update --quiet \
    && apt-get install --quiet --yes --no-install-recommends vim less nano sudo screen tmux \
    && apt-get clean

RUN echo "daemon:daemon" | chpasswd && adduser daemon sudo

USER daemon:daemon
