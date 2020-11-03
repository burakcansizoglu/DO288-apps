#!/bin/sh

oc new-app --template burakcanredhat-common/cakephp-mysql-example \
-p NAME=quotesapi \
-p APPLICATION_DOMAIN=quote-burakcanredhat.apps.eu45.prod.nextcle.com \
-p SOURCE_REPOSITORY_URL=https://github.com/burakcansizoglu/DO288-apps \
-p SOURCE_REPOSITORY_REF=master \
-p CONTEXT_DIR=quotes \
-p DATABASE_SERVICE_NAME=quotesdb \
-p DATABASE_NAME=quotesdatabase \
-p DATABASE_USER=quotesuser \
-p DATABASE_PASSWORD=mypassword55 \
-p NAMESPACE=burakquotes \
-p DATABASE_ENGINE=mysql \
--name quotes \
--namespace burakquotes