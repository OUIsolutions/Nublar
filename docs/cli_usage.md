
### Add a Font 
fonts are organizations that provide the packages ,to add the font just pass the url of the font to the `add` command, you need to specify the font name with the `--fontname` flags
```shell
nublar add_font <url> --fontname <fontname>
```

### Install 
To install a package just pass the name of the package to the `install` command
```shell
nublar install <package_name>
```
you also can set a especific version of the package to install
```shell
nublar install <package_name> --version <version>
```


### Remove
To remove a package just pass the name of the package to the `remove` command
```shell
nublar remove <package_name>
```
you also can set a especific version of the package to remove
```shell
nublar remove <package_name> --version <version>
```
### Update
To update a package just pass the name of the package to the `update` command
```shell
nublar update <package_name>
```
you also can set a especific version of the package to update
```shell
nublar update <package_name> --version <version>
```



### Update All
To update all packages just pass the `all` to the `update` command
```shell
nublar update all
```
