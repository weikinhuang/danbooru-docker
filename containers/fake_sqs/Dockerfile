FROM ruby:2.4-alpine

RUN set -x \
    && gem install fake_sqs

EXPOSE 4568

CMD ["/usr/local/bundle/bin/fake_sqs", "--database", "/database.yml"]
