cmake_minimum_required(VERSION 2.8)
project(libSVMNative)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(source_files
    common.cpp
    jnilibsvm.cpp
    libsvm/svm-train.cpp
    libsvm/svm-predict.cpp
    libsvm/svm.cpp
    )

set(LIBS log dl)
include_directories(. libsvm)
add_library(svm_jni SHARED ${source_files})
target_link_libraries(svm_jni ${LIBS})

