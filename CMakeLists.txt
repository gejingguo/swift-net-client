cmake_minimum_required(VERSION 3.4)
project(swift-net-client)

add_custom_target(swift-net-client
        COMMAND /Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin/swift build
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
        SOURCES Package.swift Sources/main.swift Sources/ClientTCPDelegate.swift)
