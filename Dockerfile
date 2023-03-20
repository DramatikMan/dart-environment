FROM dart
SHELL ["/bin/bash", "-c"]
WORKDIR /project
COPY pubspec.* ./
RUN dart pub get
CMD sleep infinity
