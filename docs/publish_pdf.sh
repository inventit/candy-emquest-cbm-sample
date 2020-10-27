#!/bin/bash

if [ ${MSYSTEM} = "MINGW64" ]; then
    # Workaround for Git bash on Windows 10
    docker run -v /${PWD}:/data -w //data --rm pandoc_ja:0.1 cbm-sample_hands-on.md \
        --from markdown \
        --toc \
        --number-sections \
        --pdf-engine=lualatex \
        --template eisvogel \
        --variable=documentclass:ltjsarticle \
        --variable=CJKmainfont:IPAexGothic \
        --output=cbm-sample_hands-on.pdf
else
    docker run -v ${PWD}:/data -w /data --rm pandoc_ja:0.1 cbm-sample_hands-on.md \
        --from markdown \
        --toc \
        --number-sections \
        --pdf-engine=lualatex \
        --template eisvogel \
        --variable=documentclass:ltjsarticle \
        --variable=CJKmainfont:IPAexGothic \
        --output=cbm-sample_hands-on.pdf
fi
