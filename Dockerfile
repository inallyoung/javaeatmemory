#Pull the Java base image
FROM java:8

#Set the working directory
WORKDIR /app

#Copy the build context
COPY JavaEatMemory.java /app

#Compile the Java application
RUN javac JavaEatMemory.java

#Run the executable
CMD ["java", "-Xmx16m", "-XX:+HeapDumpOnOutOfMemoryError", "-XX:HeapDumpPath=/app/crashes", "JavaEatMemory"]