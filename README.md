toplevel-poms
========================
Collection of POMs which are used by all projects

projects-pom <= plugins-parent <= commons-parent <= osgi-plugins-parent <= osgi-parent <= camel-parent

How to build projects
========================
mvn clean install -DskipTests
mvn cobertura:cobertura
mvn sonar:sonar

Release to mvn central
=======================
http://java.dzone.com/articles/deploy-maven-central
