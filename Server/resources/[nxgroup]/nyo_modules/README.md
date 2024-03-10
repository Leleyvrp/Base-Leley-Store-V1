- [Getting Started](#getting-started)
  - [Purchase for Free in Tebex](#purchase-for-free-in-tebex)
  - [Initial Setup](#initial-setup)
    - [nyo_modules_debug](#nyo_modules_debug)
    - [nyo_modules_marker_debug](#nyo_modules_marker_debug)
    - [nyo_modules_framework](#nyo_modules_framework)
    - [nyo_modules_token](#nyo_modules_token)
  - [Configuration](#configuration)
    - [Activate / deactivate modules](#activate--deactivate-modules)
    - [Change threads time](#change-threads-time)

# Getting Started

## Purchase for Free in Tebex
This resource uses the Fivem Escrow, so you need to purchase it for free on https://nyonetwork.tebex.io/package/4928244 with the same Cfx.re account of your server license key.
## Initial Setup
  
Open your server config file, usually `server.cfg`, and add the following commands.
```cfg
setr nyo_modules_debug 1
setr nyo_modules_marker_debug 1
setr nyo_modules_framework "your framework"
set nyo_modules_token "your license token"
```
  - [nyo_modules_debug](#nyo_modules_debug)
  - [nyo_modules_marker_debug](#nyo_modules_marker_debug)
  - [nyo_modules_framework](#nyo_modules_framework)
  - [nyo_modules_token](#nyo_modules_token)

### nyo_modules_debug
Activate debug mode. Prints debug information to the console.
> It's not recommended to enable it in production version

![](https://media.discordapp.net/attachments/888173642222030858/958075213248094218/unknown.png)
### nyo_modules_marker_debug
Activate marker debug mode. Will only works if debug mode is enabled. Prints debug information about marker to the console.
> It's not recommended to enable it in production version

![](https://media.discordapp.net/attachments/888173642222030858/958075949012901969/unknown.png)
### nyo_modules_framework
Sets the framework that will be used by the resource. Currently available frameworks ready to use:

- [x] Vrpex
- [ ] Esx
- [ ] Qbus

Still you can integrate your own framework. Take a look at [frameworks](#frameworks) to know how to do it.

> Soon will be released new versions with new frameworks ready to use.

### nyo_modules_token
Sets the license token for your script. Without a valid license the resource won't works.

## Configuration
### Activate / deactivate modules
Open the file `@nyo_modules/config/modules.lua`. Is the module is already there, to activate you can just change it to `true` or to deactivate change it to `false`, otherwise, if is a Nyo Module add it to the `config.modules` block, else, if is a custom module, add it to the `config.custom_modules` block.

### Change threads time
Open the file `@nyo_modules/config/threads.lua`. Look at which thread you want to change the wait time and just write there, but remember it's in milliseconds.
> Using smaller values can interfere in resource's performance.
