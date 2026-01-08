#!/bin/bash
echo "=== Building DevOps Application ==="

# Compile all Java source files (main + test)
find src -name "*.java" > sources.txt
javac -d bin @sources.txt   # compile to bin folder

echo "=== Running Tests ==="
java -cp bin com.example.HelloDevOpsTest

echo "=== Creating JAR ==="
jar cfe app.jar com.example.HelloDevOps -C bin .

echo "=== Running Application ==="
java -cp bin com.example.HelloDevOps
