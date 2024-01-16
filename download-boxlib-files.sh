#!/bin/bash

download_boxlib() {
    mkdir -p ".gradle/loom-cache/remapped_mods/dev/boxadactle/boxlib/$2/5.4.2/"
    pushd "$_"
    curl --remote-name-all https://maven.boxadactle.dev/dev/boxadactle/$1/5.4.2/$2-5.4.2{.pom,.module,.jar,-sources.jar}
    popd
}

download_boxlib "Boxlib" "BoxLib"
download_boxlib "Boxlib-fabric" "BoxLib-fabric"
download_boxlib "Boxlib-forge" "BoxLib-forge"
