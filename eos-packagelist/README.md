usage: eos-packagelist [-h] [--list] [--arch ARCH] [--install] [profile ...]

The EndeavourOS package list handler gets package information from the current installer files and allows you to optionally
install them

positional arguments:

  profile      The name of the profile you want to see packages for

example: eos-packagelist "BSPWM Edition"

or to save the list:
eos-packagelist "BSPWM Edition" >> awesome-packages.list
  

options:

  -h, --help   show this help message and exit
  
  --list       Lists the available options
  
  --arch ARCH  Only include packages available on ARM
  
  --install    Install the packages on the list using pacman instead of just listing them

example:
`eos-packagelist --install "BSPWM Edition"`
