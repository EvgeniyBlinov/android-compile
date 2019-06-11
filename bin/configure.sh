#!/bin/bash

[ -d "./android-ndk-r20" ] ||
    {
        curl -O \
            https://dl.google.com/android/repository/android-ndk-r20-linux-x86_64.zip &&
        unzip android-ndk-r20-linux-x86_64.zip
    }

./android-ndk-r20/build/tools/make_standalone_toolchain.py \
  --arch arm64 \
  --api 28 \
  --install-dir ~/arm2
