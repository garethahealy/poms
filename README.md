[![Build Status](https://travis-ci.org/garethahealy/poms.svg?branch=master)](https://travis-ci.org/garethahealy/poms)

# POMs
Collection of POMs which are used by all projects i am working on. Strucutre is as follows:

- projects-pom
    - plugins-parent
    - commons-parent
        - brms-parent
        - eap-parent
        - springboot-parent
    - osgi-plugins-parent
        - osgi-parent
            - camel-parent

# How to build projects
- mvn clean install -DskipTests
- mvn cobertura:cobertura
- mvn sonar:sonar

# How to deploy
- mvn versions:set -DnewVersion=X.Y.Z
- mvn versions:commit
- mvn deploy -Prelease-ossrh


