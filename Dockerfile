FROM ruby:2.7

RUN mkdir -m777 /app && \
    apt-get update && \
    apt-get install -y \
        sudo git \
        build-essential zlib1g-dev &&\
    apt-get clean && \
    cd /tmp/ && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    adduser --system --group --uid 1000 appuser && \
    usermod -aG sudo appuser && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER appuser

RUN echo 'set completion-ignore-case on' >> ~/.inputrc && \
    echo 'export GEM_HOME="/app/gems"' >> ~/.profile && \
    echo 'export PATH="/app/gems/bin:$PATH"' >> ~/.profile

EXPOSE 4000
