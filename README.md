# MMM-Comics
Retrieves the current GoComic comics
## Background
My wife loves "Peanuts" and "Calvin and Hobbes" so I decided to add the ability to display the daily comics for her on our Magic Mirror. This is a somewhat hacked-together solution, and not exactly a MagicMirror module in its own right, but it works.
## Implementation
A script, getComics.sh, called from `cron`, retrieves the daily strip for one or more comics from GoComics.com and places it in the MMM-ImageSlideshow/images folder. MMM-ImageSlideshow then handles displaying and/or rotating the comics on MagicMirror.
### Prerequisites
Install the [MMM-ImageSlideshow](https://github.com/AdamMoses-GitHub/MMM-ImageSlideshow) module and configure the images folder.
### Add comics
Edit `comic.lst` to include the source name of all the comics you want to display. Each comic should be on a separate line in the file. See the [full list of available comics](https://www.gocomics.com/comics/a-to-z) and get the source name from the URL. For example, the URL for Peanuts is "https://www.gocomics.com/peanuts" and its source name is "peanuts". (Case doesn't matter.)
### Add `getComics.sh`
Place the `getComics.sh` file on the Pi and make it executable. The script reads the contents of `comic.lst`, pulls the daily comic, and saves it to the slideshow `Images` folder with the comic name. (Overwriting the comic(s) each time prevents the filesystem from filling up over time and keeps content fresh.)
### Add a cron job
Add a line to your `cron` that runs the `getComics.sh` script. The script gets the daily comic, so there's no need to run this more than once per day. (The site used to have a "random" option that refreshed the comics every time, but it's been removed.)
## Caveats
- This scrapes the content from GoComics. If they change the page format, it stops working. :(
- The script formats the comic width, but some Sunday comics are tall. This can cause the comic to cover other modules.
