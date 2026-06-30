FROM gcc:latest

WORKDIR /app

# Copy all project files into the container
COPY . .

# Compile the C++ program on Linux with thread support
RUN g++ -std=c++17 -O2 main.cpp -o db -lpthread

# Expose the server port
EXPOSE 8080

# Run the compiled database server
CMD ["./db"]
