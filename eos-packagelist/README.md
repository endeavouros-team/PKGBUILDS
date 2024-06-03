usage: `eos-packagelist [-h] [--list] [--install] [profile ...]`

The EndeavourOS package list handler gets package information from the current installer files and allows you to optionally
install them

positional arguments:

  profile      The name of the profile you want to see packages for

example: `eos-packagelist "KDE-Desktop"`

or to save the list:
`eos-packagelist "KDE-Desktop" >> kde-packages.list`
  

options:

  `-h, --help`   show this help message and exit
  
  `--list`       Lists the available options
  
  `--install`    Install the packages on the list using pacman instead of just listing them

example:
`eos-packagelist --install "KDE-Desktop"`
