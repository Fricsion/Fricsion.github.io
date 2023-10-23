---
title: How to Rice Ranger
header-includes:
- \usepackage[whole]{bxcjkjatype}
	<meta charset="utf-8"/>
	<title>Racing Ranger</title>

---
# Ranger Rice
Most of the configurations are done inside `~/config/ranger` directory
## show borders
- search for `set draw_borders none` in `rc.conf`
- Set `none` to `both` or something else

## colorscheme
- search for `set colorscheme default` in `rc.conf`
- Change `default` to something like `solarized`

## Image preview
- Install ueberzug with `yay -S ueberzug`
- search for `set preview_images false` in `rc conf`
- change `false` to `true`
- scroll down and spot ` set preview_images_method w3m`
- change `w3m` to `ueberzug
- restart ranger and it should be working


## Video thumbnail preview (requires Image preview working)
- `sudo pacman -S ffmpegthumbnailer`
- search for`set preview_script ~/.config/ranger/scope.sh` in `rc.conf` which should be commented out
- remove the comment
- search for `video` in `scope.sh`
- ```
156         ## Video
157          video/*)
158              # Thumbnail
159              ffmpegthumbnailer -i "${FILE_PATH}" -o "${IMAGE_CACHE_PATH}" -s 0 && exit 6
160              exit 1;;
``` These lines should be commented out. So remove those comments
- restart ranger and done.

## PDF thumbnail preview (requires Image preview working)
- search for`set preview_script ~/.config/ranger/scope.sh` in `rc.conf` which should be commented out
- remove the comment
- search for `application/pdf` in `scope.sh`
- ```
162         ## PDF
163          application/pdf)
164              pdftoppm -f 1 -l 1 \
165                       -scale-to-x "${DEFAULT_SIZE%x*}" \
166                       -scale-to-y -1 \
167                       -singlefile \
168                       -jpeg -tiffcompression jpeg \
169                       -- "${FILE_PATH}" "${IMAGE_CACHE_PATH%.*}" \
170                  && exit 6 || exit 1;;
```These lines should be commented out. So remove those comments
- restart ranger and done

