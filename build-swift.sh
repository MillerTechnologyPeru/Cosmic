export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-21.jdk/Contents/Home
export JVM_LIBRARY_PATH=$JAVA_HOME/lib/server

swift build -Xlinker -L$JVM_LIBRARY_PATH -Xlinker -rpath -Xlinker $JVM_LIBRARY_PATH -Xlinker -ljvm