# eos-manual-intervention

The Arch news page occasionally announces *manual interventions* that will be needed
in a system to function properly.<br>
`eos-manual-intervention` implements essential interventions
as a script users can run.<br>
`eos-manual-intervention` remembers which interventions have been taken care of on a system
and does not re-execute them.

## Usage

```
eos-manual-intervention [options]
```

## Options

Option | Description
:--- | :---
`-h, --help` | Help about the parameters.
`-n, --show-arch-news` | Show the Arch news page in a browser.

## Files

The handled interventions will be saved in file<br>
`~/.config/eos-manual-intervention/eos-manual-intervention.handled`.

## Example


```
$ eos-manual-intervention
MI_20250621: linux-firmware
  ==> linux-firmware already OK
  ==> marking 'MI_20250621' as handled
MI_20250620: x11 plasma session
  ==> plasma-x11-session already OK
  ==> marking 'MI_20250620' as handled
```
