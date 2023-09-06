<?xml version="1.0" encoding="ISO-8859-1"?>

<!--
  Licensed to the Apache Software Foundation (ASF) under one
  or more contributor license agreements.  See the NOTICE file
  distributed with this work for additional information
  regarding copyright ownership.  The ASF licenses this file
  to you under the Apache License, Version 2.0 (the
  "License"); you may not use this file except in compliance
  with the License.  You may obtain a copy of the License at
  
  http://www.apache.org/licenses/LICENSE-2.0
  
  Unless required by applicable law or agreed to in writing,
  software distributed under the License is distributed on an
  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
  KIND, either express or implied.  See the License for the
  specific language governing permissions and limitations
  under the License.
-->

<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <parent>
    <groupId>org.apache.mina</groupId>
    <artifactId>mina-parent</artifactId>
    <version>2.1.8</version>
  </parent>

  <artifactId>mina-filter-compression</artifactId>
  <name>Apache MINA Compression Filter</name>
  <packaging>bundle</packaging>  

  <dependencies>
    <dependency>
      <groupId>${project.groupId}</groupId>
      <artifactId>mina-core</artifactId>
      <version>${project.version}</version>
      <type>bundle</type>
    </dependency>

    <dependency>
      <groupId>com.jcraft</groupId>
      <artifactId>jzlib</artifactId>
    </dependency>

    <dependency>
      <groupId>org.easymock</groupId>
      <artifactId>easymock</artifactId>
    </dependency>
  </dependencies>
  
  <build>
    <plugins>
      <plugin>
        <groupId>org.apache.felix</groupId>
        <artifactId>maven-bundle-plugin</artifactId>
        <inherited>true</inherited>
        <extensions>true</extensions>
        <configuration>
          <manifestLocation>META-INF</manifestLocation>
          <instructions>
            <Bundle-SymbolicName>${project.groupId}.filter.compression</Bundle-SymbolicName>
            <Export-Package>
              org.apache.mina.filter.compression;version=${project.version};-noimport:=true
            </Export-Package>
            <Import-Package>
              org.apache.mina.core.buffer;version=${project.version},
              org.apache.mina.core.filterchain;version=${project.version},
              org.apache.mina.core.session;version=${project.version},
              org.apache.mina.core.write;version=${project.version},
              org.apache.mina.filter.util;version=${project.version},
              com.jcraft.jzlib;version=${version.jzlib},
              org.slf4j;version=${osgi-min-version.slf4j.api}
            </Import-Package>
          </instructions>
        </configuration>
      </plugin>
    </plugins>
  </build>
</project>

