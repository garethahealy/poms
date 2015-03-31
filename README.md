![Image of Travis-CI](https://travis-ci.org/garethahealy/poms.svg?branch=master)
[![Dependency Status](https://www.versioneye.com/user/projects/5519a65931b89bd07b000002/badge.svg?style=flat)](https://www.versioneye.com/user/projects/5519a65931b89bd07b000002)

poms
========================
Collection of POMs which are used by all projects i am working on

projects-pom <= plugins-parent <= commons-parent <= osgi-plugins-parent <= osgi-parent 

<= camel-parent
<= brms-parent
<= springboot-parent

How to build projects
========================
- mvn clean install -DskipTests
- mvn cobertura:cobertura
- mvn sonar:sonar

How to deploy
========================
- mvn versions:set -DnewVersion=X.Y.Z
- mvn deploy -Prelease-ossrh


