FROM maven:3.6.0-jdk-8

RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" \
    && unzip awscli-bundle.zip
    && ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws \
    && $(aws ecr get-login --no-include-email --region eu-central-1)
