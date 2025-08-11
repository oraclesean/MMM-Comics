#!/bin/bash

path=~/MagicMirror/modules/MMM-ImageSlideshow/Images

 for comic in $(cat comic.lst)
  do curl -s -o "${path}"/"${comic}".jpg https://featureassets.gocomics.com/assets/"$(curl -s https://www.gocomics.com/"${comic}" \
   | sed -e "s|^.*\\\"comicBlobName\\\\\":\\\\\"\([A-Za-z0-9]*\)\\\\\".*$|\1|")"?optimizer=image\&width=1200\&quality=85
done
