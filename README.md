## (Source) Work based on the python tool available here :
[https://github.com/davidnemec/bitwarden-to-keepass](https://github.com/davidnemec/bitwarden-to-keepass)

# bitwarden-to-keepass
Export (most of) your Bitwarden items into KeePass database.

## How it works?
It uses official [bitwarden-cli](https://help.bitwarden.com/article/cli/) client to export your items from Bitwarden vault and move them into your KeePass database - that includes logins (with TOTP seeds, URIs, custom fields, attachments, notes) and secure notes.

## Install
Clone this repository
```
git clone https://github.com/Pschittt/bitwarden-to-keepass.git
```
Run docker-compose
```
docker-compose up -d
```
Initialize the Bitwarden Session variable **BW_SESSION**
```
docker-compose run bitwarden-to-keepass bw login
```

Edit **.env** file :

 - $BW_SESSION : Bitwarden session token
 - $DB_PATH : Keepass kdbx file
 - $DB_PWD : Keepass passphrase
 - $BW_PATH : Bitwarden cli path. (Should be /usr/local/bin/bw)

## Run/usage
- First you will need to **create new (empty) KeePass database** (tested with [KeePassXC](https://github.com/keepassxreboot/keepassxc) but it will probably work with others)

- Run
```
docker-compose run bitwarden-to-keepass bash
python3 bitwarden-to-keepass.py --bw-session $BW_SESSION --database-path $DB_PATH --database-password $DB_PWD --bw-path $BW_PATH
```
