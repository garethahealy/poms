[![Build Status](https://travis-ci.org/garethahealy/poms.svg?branch=master)](https://travis-ci.org/garethahealy/poms)
[![Release Version](https://img.shields.io/maven-central/v/com.garethahealy.poms/poms-parent.svg?maxAge=2592000)](https://mvnrepository.com/artifact/com.garethahealy.poms/poms-parent)
[![License](https://img.shields.io/hexpm/l/plug.svg?maxAge=2592000)]()

# POMs
Collection of POMs which are used by all projects i am working on. Structure is as follows:

- projects-pom
    - building-tools
    - commons-bom
    - plugins-parent
        - rh-jboss-eap-parent
            - rh-dm-parent
        - springboot-parent
    - osgi-plugins-parent
        - osgi-parent
            - rh-fuse-on-karaf-parent

# How to build projects
- mvn clean install
- mvn clean org.jacoco:jacoco-maven-plugin:prepare-agent package sonar:sonar -Dsonar.host.url=https://sonarcloud.io -Dsonar.organization=garethahealy-github -Dsonar.login={removed}

# How to deploy
## Update version
- mvn versions:set -DnewVersion=X.Y.Z
- mvn versions:commit

## Deploy to maven central
- export GPG_TTY=$(tty)
- mvn clean install deploy -Prelease-ossrh

## Deploy to local
- mvn deploy -DaltDeploymentRepository=local-nexus-releases::default::http://localhost:8081/nexus/content/repositories/releases
- mvn deploy -DaltDeploymentRepository=local-nexus-snapshots::default::http://localhost:8081/nexus/content/repositories/snapshots

## Travis CI
- http://www.debonair.io/post/maven-cd/
