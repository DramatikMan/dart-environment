FROM dart
SHELL ["/bin/bash", "-c"]
WORKDIR /project

COPY pubspec.yaml \
    pubspec.lock \
    analysis_options.yaml \
    ./

RUN dart pub get --enforce-lockfile
CMD sleep infinity
