FROM payara/server-full:latest
COPY target/amazon.war $DEPLOY_DIR