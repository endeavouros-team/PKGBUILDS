# EOS pkgbuild setup
Name | Description | Parameters
---- | ------- | ------
eos-pkgbuild-setup | Creates an environment (a build folder) for building EOS packages. | -
assets.make | Builds EOS packages. | -
assets.conf.\* | Configuration files required for building EOS packages.<br>File naming: assets.conf.\<repo-folder-name\>.\<release-tag\> | -
assets.conf.\*.sha512 | Sha512sum files. | -
add-release-assets | Uploads selected release assets to a repo. | TAG asset(s)<br>Note: assets with file paths.
delete-release-assets | Deletes selected release assets from a repo. | TAG asset(s)<br>Note: assets without file paths.
