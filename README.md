Maven repository
================

Quick Configuration
-------------

To add this repository to your [Maven][maven] project, add the following lines to your `pom.xml` file.

### Dependency repository

	<repositories>
		<repository>
			<id>swifth-snapshot-repository</id>
			<url>https://github.com/swifth/maven-repo/raw/master/snapshots</url>
			<snapshots>
				<enabled>true</enabled>
			</snapshots>
		</repository>

		<repository>
			<id>swifth-releases-repo</id>
			<url>https://github.com/swifth/maven-repo/raw/master/releases</url>
			<snapshots>
				<enabled>false</enabled>
			</snapshots>
		</repository>
	</repositories>
	

The following artifacts are available
-------------
	
	<dependency>
		<groupId>de.mxro.process</groupId>
		<artifactId>java-start-process</artifactId>
		<version>0.1.1</version>				
	</dependency>
	usage: [https://github.com/swifth/java-start-process][java-start-process]
	
	<dependency>
		<groupId></groupId>
		<artifactId></artifactId>
		<version></version>	
	</dependency>
	
	...


## More advanced topics
						
### Plugin repository

	<pluginRepositories>
		<pluginRepository>
			<id>swifth-snapshots-plugins-repository</id>
			<url>https://github.com/swifth/maven-repo/raw/master/snapshots</url>
			<layout>default</layout>
			<snapshots>
				<enabled>true</enabled>
			</snapshots>
		</pluginRepository>

		<pluginRepository>
			<id>swifth-releases-plugins-repository</id>
			<url>https://github.com/swifth/maven-repo/raw/master/releases</url>
			<layout>default</layout>
			<snapshots>
				<enabled>false</enabled>
			</snapshots>
			<releases>
				<updatePolicy>never</updatePolicy>
			</releases>
		</pluginRepository>
	</pluginRepositories>
	
	
Configuration
-------------

* [CloudReports](https://github.com/thiagotts/CloudReports/)
* [CloudReports Maven Plugin](https://github.com/alessandroleite/cloudreports-maven-plugin)
* [CloudSim](http://www.cloudbus.org/cloudsim/)
* [Flanagan's Java Scientific Library](http://www.ee.ucl.ac.uk/~mflanaga/java/)


Maven Plugins
-------------
		<plugin>
			<groupId>cloudreports</groupId>
			<artifactId>cloudreports-maven-plugin</artifactId>
			<version>1.0.0-SNAPSHOT</version>		
		</plugin>
			
Deploy
-------------

```
mvn deploy:deploy-file
-Durl=file:PATH_TO_LOCAL/maven-repository/releases -Dfile=YOUR_FILE -DgroupId=GROUP_ID -DartifactId=ARTIFACT_ID -Dversion=VERSION -Dpackaging=PACKAGING
```
[maven on github]:https://github.com/alessandroleite/maven-repository/blob/master/README.md			
[maven]:http://maven.apache.org/			
[cloudreports]:https://github.com/thiagotts/CloudReports/
[cloudreports-maven-plugin]:https://github.com/alessandroleite/cloudreports-maven-plugin
[cloudsim]:http://www.cloudbus.org/cloudsim/
[flanagan]:http://www.ee.ucl.ac.uk/~mflanaga/java/
[java-start-process]:https://github.com/swifth/java-start-process
