# Design

## Background

This design document are created based on this (ticket)[https://github.com/BlankOn/Verbeek/issues/106].

## Requirements

- Simple version of Ubuntu's upgrade tool
- Distribute the binary using Flatpak and or AppImage
- Can be run as CLI program

## States

### Preparation

![Preparation Flow](docs/preparation-flow.png?raw=true)

* Release Check
    * Related to IRGSH-GO release management to get BlankOn release version
    * Get information about release
* Latest Version
    * Distribution already in the most current version
    * Show `Check Now` button for rechecking
* Upgrade Available
    * Display release code name as a title text (ex. Upgrade your OS to BlankOn Verbeek)
    * Give preparation instruction such as connect the battery adapter when using laptop
    * Show `Release Notes` button as a link to the release notes
    * Show `Upgrade` button as primary button
* Prepare and Download
    * Inject the release key
    * Backup and disable third party sources list
    * Download the upgrade into caches
    * Put something to start application before the login manager
* Reboot Countdown
    * Display information the upgrade ready to applied
    * Show `Reboot (10)` button with countdown

### Upgrade

![Upgrade Flow](docs/upgrade-flow.png?raw=true)

* Booting
* Upgrade Process
    * Application started as KIOSK mode
    * Do the upgrade process
    * Display the upgrade process information
    * Show progress bar
    * Show collapsable verbose mode under the progress bar
* Reboot

## Wireframe

## Architecture

This tool should can be run as a CLI program or using the GUI for the users that are less used to operating in a terminal.
The real upgrade state always run after reboot the system and in KIOSK mode.

CLI and GUI mode are interface to the `scripts` for doing the jobs.

### CLI

* Release Check
    * `blankon-upgrade-cli check` should return current release version, next release version, and are the new release available
* Upgrade (Prepare and Download)
    * `blankon-upgrade-cli upgrade` to run preparation and download the upgrades

## References

[0] https://wiki.debian.org/AutomatedUpgrade
[1] https://wiki.koumbit.net/JessieUpgrade
[2] https://dsa.debian.org/howto/upgrade-to-jessie
