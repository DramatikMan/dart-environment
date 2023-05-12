FROM dart
SHELL ["/bin/bash", "-c"]
WORKDIR /project

COPY pubspec.yaml \
    analysis_options.yaml \
    pubspec.lock* \
    ./

RUN dart --disable-analytics && dart pub get --enforce-lockfile 
CMD sleep infinity
