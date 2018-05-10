#!/bin/bash
path=$1
> $path/../bin/Player.java
grep -rEh --include "*.java" 'import' $path > $path/../bin/Player.java
grep -rvh --include "*.java" 'import' $path | grep -v 'package' >> $path/../bin/Player.java
