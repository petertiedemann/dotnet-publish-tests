#!/bin/bash
echo Running assemblies in $1
testAssemblies="$(find $1 -name *.*Test.dll)"
echo $testAssemblies
for f in $testAssemblies ; do 
    dotnet vstest $f
done;
