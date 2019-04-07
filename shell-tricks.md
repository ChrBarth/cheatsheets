# misc shell tricks

## print sum of all numbers in one file:
[https://cmdchallenge.com/?utm_source=cronweekly.com#/sum_all_numbers](https://cmdchallenge.com/?utm_source=cronweekly.com#/sum_all_numbers)

``` cat sum-me.txt | tr "\n" "+" | sed -e "s/+$/\n/" | bc ```

## remove all file-extensions recursively in current directory:
[https://cmdchallenge.com/?utm_source=cronweekly.com#/remove_extensions_from_files](https://cmdchallenge.com/?utm_source=cronweekly.com#/remove_extensions_from_files)
(file.txt => file; file.2.doc => file.2; ...)

``` for f in **/*.*; do mv $f ${f%.*}; done ```

## read aliases from .bashrc and print them out nicely:

``` <.bashrc sed -ne "s/alias \(.*\)='\(.*\)'/\1\t\2/g p" | awk -F"\t" '{ printf("%-20s %-55s\n", $1, $2) }' ```

## find mp3-files in current directory and write tags to csv-file:
[https://www.reddit.com/r/linuxquestions/comments/7trx9p/program_to_export_mp3_library_as_csv/](https://www.reddit.com/r/linuxquestions/comments/7trx9p/program_to_export_mp3_library_as_csv/)

``` find . -type f -name *.mp3 -printf "%p\t" -exec exiftool -T -Artist -Album -Title \{\} \; > songs.csv ```

or:

``` find . -type f -name *.mp3 -exec mp3info -p "%F\t%a\t%l\t%t\n" \{\} \; > songs.csv ```

## show terminal colors:

``` for i in {0..255}; do printf "\x1b[38;5;${i}mcolour${i}\x1b[0m  "; done ```

## list installed packages:

``` dpkg -l | awk '/^[hi]i/ { print $2}' ```

## show summary of man-page (`apt install tldr`)

``` tldr ffmpeg ```

## convert single CD-track to mp3 on the fly:

``` icedax -t 1 -D /dev/cdrom - | lame - file.mp3 ```

## copy every file matching a pattern and changed in the last 2 hours via scp to remote host:

``` scp $(find . -maxdepth 1 -type f -cmin -120 -name "*pic*.php" -printf "%p ") user@host:/ ```

## convert recursively all filenames from windows-encoding to utf-8:

``` convmv -r -f 'cp1253' -t 'utf8' --notest . ```

## find non-ascii characters in textfile:
[https://stackoverflow.com/a/13596571)[https://stackoverflow.com/a/13596571]

```grep -P '[^\x00-\x7f]' file```
