# EOS pkgbuild setup
Name | Description | Parameters
---- | ------- | ------
eos-pkgbuild-setup | Creates an environment (a build folder) for building EOS packages. | -
assets.make | Builds EOS packages. | -
assets.conf.* | Configuration files required for building EOS packages. File naming: assets.conf.\<repo-folder-name\>.\<release-tag\> | -
add-release-assets | Uploads selected release assets to a repo. | TAG asset(s)<br>Note: assets with file paths.
delete-release-assets | Deletes selected release assets from a repo. | TAG asset(s)<br>Note: assets without file paths.
