#!/bin/sh
PATH="$(dirname "$0")":$PATH
config-standalone.sh $@
add-user.sh -r ManagementRealm -u admin -p kinjirou@123 

if [ -d $JBOSS_HOME/standalone/deployments/nts.uk.com.web.war ]
then
	touch $JBOSS_HOME/standalone/deployments/nts.uk.com.web.war.dodeploy
fi

if [ -d $JBOSS_HOME/standalone/deployments/nts.uk.at.web.war ]
then
	touch $JBOSS_HOME/standalone/deployments/nts.uk.at.web.war.dodeploy
fi

if [ -d $JBOSS_HOME/standalone/deployments/nts.uk.mobile.web.war ]
then
	touch $JBOSS_HOME/standalone/deployments/nts.uk.mobile.web.war.dodeploy
fi

standalone.sh -b 0.0.0.0 -bmanagement 0.0.0.0