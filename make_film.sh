frame_count=128
if [ ! -e makePNG ]; then
    make
fi

if [ ! -d frames ]; then
    mkdir frames
fi

#rm frames/*

cp first.png frames/frame0001.png

for frame_number in $(seq 23 $frame_count) ; do
    echo $frame_number
    new_name="frames/frame$(printf %04d $frame_number).png"
    if [ ! -f $new_name ]; then
        ./makePNG $new_name $frame_number
    fi
done

if [ -f fractal.mp4 ]; then
    rm fractal.mp4
fi

ffmpeg -r 4 -pattern_type glob -i "frames/frame*.png" -c:v libx264 -pix_fmt yuv420p fractal.mp4
