FROM python:3.7-slim

RUN apt-get update && apt-get install -y cmake build-essential

# Create techproguser (task 4.b)
RUN useradd -ms /bin/bash techproguser
USER techproguser

WORKDIR /home/techproguser/cmake_with_flask
COPY . .

# Build a cmake project, execute launch by bin/C (task 4.a)
USER root
RUN mkdir build

WORKDIR /home/techproguser/cmake_with_flask/build
RUN cmake build ..
RUN cmake --build .
WORKDIR /home/techproguser/cmake_with_flask
RUN bin/C

# Start the Flask app (task 4.c)
RUN pip install flask

# Run on port 5000
EXPOSE 5000

CMD ["python3", "app.py", "--host=0.0.0.0", "--port=5000"]