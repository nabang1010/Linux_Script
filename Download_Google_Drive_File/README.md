# Download Google Drive Command
---
[***@nabang1010***](https://github.com/nabang1010)

1. Right click file and select share. Create share link to any one
```txt
https://drive.google.com/drive/folders/[_________FILE_ID__________]?usp=sharing
```
2. Run the following command to download,change FILE_ID -> your FILE_ID and NAME-FILE -> your file name you want to save.

```bash
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate "https://docs.google.com/uc?export=download&id=FILE_ID" -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=FILE_ID" -O NAME_FILE f /tmp/cookies.txt
```
----
# References
- [Sử dụng wget để tải file từ Google Drive](https://raspberrypi.vn/su-dung-wget-de-tai-file-tu-google-drive-13020.pi)