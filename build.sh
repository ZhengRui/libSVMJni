#!/usr/bin/env sh

mkdir -p build
cd build

ACMAKEFD="${HOME}/Work/Libs/android-cmake"
NDK_ROOT="${HOME}/Work/Libs/android-ndk-r10e"

cmake -DCMAKE_TOOLCHAIN_FILE=${ACMAKEFD}/android.toolchain.cmake \
      -DANDROID_NDK=${NDK_ROOT} \
      -DCMAKE_BUILD_TYPE=Release \
      -DANDROID_ABI="armeabi-v7a with NEON" \
      -DANDROID_NATIVE_API_LEVEL=21 \
      ..

make VERBOSE=1

cp libsvm_jni.so ${HOME}/AndroidStudioProjects/visionapps/caffe-android-app/src/main/jniLibs/armeabi-v7a/
