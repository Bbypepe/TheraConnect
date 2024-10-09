#!/bin/bash

# Install Flutter SDK
git clone https://github.com/flutter/flutter.git -b stable --depth 1
export PATH="$PATH:`pwd`/flutter/bin"

# Check Flutter installation
flutter --version

# Get dependencies
flutter pub get

# Build web
flutter build web
