toplevel-poms
========================
Collection of POMs which are used by all projects

root <- nonosgi-parent <- osgi-parent

How to build projects
========================
mvn clean install -DskipTests
mvn cobertura:cobertura
mvn sonar:sonar
