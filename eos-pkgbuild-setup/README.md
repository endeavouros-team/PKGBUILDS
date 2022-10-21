# EOS pkgbuild setup

The build process relies mainly on github release assets instead of git folders. However, both are used for saving the built packages and can be used directly as pacman repositories.<br>
Although git folders are faster and easier to manage, they will (eventually) consume much more space than release assets.

## Apps and files involved in building EOS packages.

These are the main parts of the build process.

Name | Description | Parameters
---- | ------- | ------
EndeavourOS-packages-buildlist | Lists the names of packages (=folders of packages!) to build. | -
assets.make | The main app to build EOS packages. Builds both native EndeavourOS packages, and packages adapted from the AUR. | 
assets.conf.\* | Configuration files required for building EOS packages. Binds package list and the build tool above.<br>File naming: assets.conf.\<repo-folder-name\>.\<release-tag\> | -
eos-pkgbuild-setup | Creates an environment (a build folder) for building EOS packages. | -

## Apps purely for managing github release assets

These are still used as a part of the build process, but they are not needed by the users of the repo packages.

Name | Description | Parameters
---- | ------- | ------
add-release-assets | Uploads selected files to repo's release assets at github. | TAG asset(s)<br>Note: assets with file paths.
delete-release-assets | Deletes selected release assets from a repo. | TAG asset(s)<br>Note: assets without file paths.
release-asset-names | Shows the names of the release assets. |
