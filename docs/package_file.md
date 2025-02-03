
### Nublar Package Especification

The nublar package file , must contains all the especifications of your packages  
containing the followin functions 

```lua 
    local function package_exist(package_name)
        --search for the package in the way you want
        return true
    end
    
    local function package_versions(package_name)
        --search for the package versions in the way you want
        return { "1.0.0", "1.0.1", "1.0.2" }
    end

    local function intall_package(package_name, version)
        --implement the install logic here
    end
    local function remove_package(package_name, version)
        --implement the remove logic here
    end
    local function update_package(package_name, version)
        --implement the update logic here
    end
    local function describe_package(package_name, version)
        --implement the describe logic here
        return 'the description of the package'
    end

    local function list_packages()
        --implement the list logic here
        return { "package1", "package2", "package3" }
    end
```

