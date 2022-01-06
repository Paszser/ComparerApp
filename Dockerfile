FROM ruby:3.1.0-slim

LABEL maintainer "Daniel Ballesteros <dbpaszser@correo.ugr.es>"

ENV PROJECT_DIR=/app/test

ENV HOME_DIR=/home/usuarioestandar/

RUN adduser -D usuarioestandar \
    && chown usuarioestandar $HOME_DIR && chmod 751 $HOME_DIR

USER usuarioestandar

COPY Gemfile $HOME_DIR

COPY Gemfile.lock $HOME_DIR

WORKDIR $HOME_DIR

RUN bundle install \
    && rm ${HOME_DIR}Gemfile && rm ${HOME_DIR}Gemfile.lock

WORKDIR $PROJECT_DIR

ENTRYPOINT ["rake", "test"]
