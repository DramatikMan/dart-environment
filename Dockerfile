FROM dart
SHELL ["/bin/bash", "-c"]
WORKDIR /project

COPY pubspec.yaml \
    analysis_options.yaml \
    pubspec.lock* \
    ./

RUN dart pub get
CMD sleep infinity
