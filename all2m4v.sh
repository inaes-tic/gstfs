#! /bin/sh

set -x

x264opts="psy-tune=1 speed-preset=9"

./gstfs -f -osrc=$1,dst_ext=m4v,pipeline="filesrc name=\"_source\" ! decodebin name=d \
        { qtmux name=mux ! fdsink name=\"_dest\" sync=false } \
        { d. ! audioconvert ! vorbisenc ! queue ! mux. } \
        { d. ! videoconvert ! x264enc $x264opts ! mux. }" \
        $2
