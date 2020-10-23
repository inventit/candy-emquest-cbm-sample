#!/bin/bash

if [ ${MSYSTEM} = "MINGW64" ]; then
    # Workaround for Git bash on Windows 10
    docker run -v /${PWD}:/data -w //data --rm pandoc_ja:0.1 \
        -s \
        --toc \
        --metadata title="振動解析装置を用いたCBMサンプル" \
        --metadata author="インヴェンティット株式会社" \
        --metadata date="2020年10月23日" \
        cbm-sample_hands-on.md \
    -o cbm-sample_hands-on.html
else
    docker run -v ${PWD}:/data -w /data --rm pandoc_ja:0.1 \
        -s \
        --toc \
        --metadata title="振動解析装置を用いたCBMサンプル" \
        --metadata author="インヴェンティット株式会社" \
        --metadata date="2020年10月23日" \
        cbm-sample_hands-on.md \
        -o cbm-sample_hands-on.html
fi
