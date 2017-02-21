FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.0.3

RUN gem install latest_branch --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["alias_all_projects"]
CMD ["--help"]
