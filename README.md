[![Build Status](https://travis-ci.org/garethahealy/poms.svg?branch=master)](https://travis-ci.org/garethahealy/poms)

# POMs
Collection of POMs which are used by all projects i am working on. Strucutre is as follows:

- projects-pom
    - commons-bom
    - building-tools
    - plugins-parent
      - jboss-brms-parent
      - jboss-eap-parent
      - springboot-parent
      - camel-parent
      - jboss-fuse-on-openshift-parent
    - osgi-plugins-parent
        - osgi-parent
            - jboss-fuse-parent
            - karaf-parent

# How to build projects
- mvn clean install -DskipTests
- mvn cobertura:cobertura
- mvn sonar:sonar

# How to deploy
## Update version
- mvn versions:set -DnewVersion=X.Y.Z
- mvn versions:commit

## Deploy to maven central
- mvn clean install deploy -Prelease-ossrh

## Deploy to local
- mvn deploy -DaltDeploymentRepository=local-nexus-releases::default::http://localhost:8081/nexus/content/repositories/releases
- mvn deploy -DaltDeploymentRepository=local-nexus-snapshots::default::http://localhost:8081/nexus/content/repositories/snapshots


