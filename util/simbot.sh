#!/usr/bin/bash

export LD_LIBRARY_PATH="$(pwd)/build/bindings"
export LUA_PATH="$(pwd)/build/bindings/lua/?.lua"
export LUA_PATH="$LUA_PATH;$(pwd)/build/bindings/lua/?/init.lua"
export LUA_PATH="$LUA_PATH;/usr/local/share/lua/5.1/?.lua"
export LUA_PATH="$LUA_PATH;/usr/local/share/lua/5.1/?/init.lua"

export HALSIM_EXTENSIONS="halsim_ds_socket:halsim_gui" # :halsim_ws_client:halsim_ws_core:halsim_ws_server"
build/luabot util/simbot.lua
exit $?
