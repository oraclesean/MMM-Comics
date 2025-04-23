# MMM-Comics
Retrieves current GoComic comics
## Background
My wife loves "Peanuts" and "Calvin and Hobbes" so I decided to add the ability to display the daily comics for her on our Magic Mirror. This is a somewhat hacked-together solution, and not exactly a MagicMirror module in its own right, but it works.
## Implementation
A script, getComics.sh, called from `cron`, retrieves the daily strip for one or more comics from GoComics.com and places it in the MMM-ImageSlideshow/images folder. MMM-ImageSlideshow then handles displaying and/or rotating the comics on MagicMirror.
## Caveats
This scrapes the content from GoComics. If they change the page format, it stops working. :(
