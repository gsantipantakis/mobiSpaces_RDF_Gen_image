# Use the OpenJDK 11 image as the base image
FROM openjdk:11

# Create a new app directory
RUN mkdir /RDFGen

# create input/output folders
RUN mkdir /inputData
RUN mkdir /output

# Copy the app files from host machine to image filesystem
COPY RDFGen/ /RDFGen

# Set the directory for executing future commands
WORKDIR /RDFGen

# Run the main class
#CMD java -jar RDF-Gen.jar
# we do not run the main class by default, we reside on the -it option
# run with: docker run --rm -it --entrypoint bash <image-name-or-id>

