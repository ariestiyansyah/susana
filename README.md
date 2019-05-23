# susana
Auto create open edx android app release


## Usage
```
→ bash susana.sh 
    usage: susana [option]

    Options:
	susana config		setup config for open edx app
	susana build		build APK
	susana update		update git sub module
	susana help		show this message
```

## Setup

Edit file `config/setup.properties` to config APPLICATION_ID, KEYSTORE and Resources for example

```
APPLICATION_ID=org.onto.mobile
RELEASE_STORE_FILE=/Users/ariestiyansyah/keystore.jks
RELEASE_STORE_PASSWORD=password
RELEASE_KEY_PASSWORD=password
RELEASE_KEY_ALIAS=ariestiyansyah
```

## Configuration Flags

## TODO

- [ ] Auto generate logo based on an image
- [ ] iOS Automation