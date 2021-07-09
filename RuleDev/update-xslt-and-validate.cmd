@echo off
export PATH=/opt/apache-maven-3.6.2/bin:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-13.jdk/Contents/Home


rem preprocess first - catches errors quickers
mvn -f pom-preprocess.xml generate-resources

rem convert to XSLT - takes forever
mvn -f pom-xslt.xml process-resources

rem Add license headers to all relevant files
mvn -f pom-license.xml license:format

rem validate afterwards
mvn -f pom-validate.xml validate

