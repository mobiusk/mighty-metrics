all:
	cat --number Makefile

build:
	./gradlew assembleDist

checkDependencies:
	./gradlew dependencyUpdates

checkSource: clean test
	./gradlew sonar

checkVulnerabilities:
	./gradlew dependencyCheckAnalyze

clean:
	./gradlew clean

run:
	./gradlew run

tasks:
	./gradlew tasks

test:
	./gradlew test

testIntegrations:
	./gradlew test --tests '*IntegrationTest'

testUnits:
	./gradlew test --tests '*UnitTest'
