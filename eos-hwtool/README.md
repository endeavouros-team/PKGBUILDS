usage: eos-hwtool [-h] [--list] [--free] [--no32] [--recommended] [--install-recommended] [--install [Profile ...]] [--remove [Profile ...]]

The EndeavourOS hardware management tool is used to manage VM and GPU drivers.

options:
  -h, --help            show this help message and exit
  --list                Show all the profiles valid for your devices
  --free                Exclude proprietary drivers(Currently only nvidia-open
  --no32                Exclude 32-bit libraries
  --recommended         Show the recommended profiles for each device
  --install-recommended
                        Install or repair the selected profile
  --install, --repair [Profile ...]
                        Install or repair the selected profile
  --remove [Profile ...]
                        Remove the selected profile

example: eos-hwtool --install nvidia_open
