#!/bin/bash

echo "=== Building DevOps Application ==="

find src -name "*.java" > sources.txt
javac @sources.txt

echo "=== Running Tests ==="
java -cp src/main/java com.example.HelloDevOpsTest

echo "=== Creating JAR ==="
jar cfe app.jar com.example.HelloDevOps -C src/main/java .

echo "=== Running Application ==="
java -jar app.jar
