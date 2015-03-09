![Image of Travis-CI](https://travis-ci.org/garethahealy/poms.svg?branch=master)

poms
========================
Collection of POMs which are used by all projects i am working on

projects-pom <= plugins-parent <= commons-parent <= osgi-plugins-parent <= osgi-parent <= camel-parent

How to build projects
========================
- mvn clean install -DskipTests
- mvn cobertura:cobertura
- mvn sonar:sonar

Release to mvn central
=======================
http://java.dzone.com/articles/deploy-maven-central
http://central.sonatype.org/pages/ossrh-guide.html


