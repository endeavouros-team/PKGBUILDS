**PKGBUILDS for EndeavourOS**

[![Maintenance](https://img.shields.io/maintenance/yes/2026.svg)]()

# PKGBUILDS **of interest** to EndeavourOS.

The source for packages we maintain in our repository.

* **4th of February 2025**
  Setting package to PKGBUILD.unused
    * eos-plasma-sddm-config

* **17th of dec 2024:**
Adding info.md to some questionable packages.
  * openswap
  * endeavouros-theming
  * endeavouros-mirrorlist-testing
  * endeavouros-developer-mirrorlist
  * b43-firmware

* **9th of sept 2021:**
cleaned up from unused PKGBUILDS
Created backup branch:
  * [backup-before-08-2021](https://github.com/endeavouros-team/PKGBUILDS/tree/backup-before-08-2021)

**13th March of  2022:** 

creating new **release tags scheme** to be used for some packages like calamares and calamares config packages and others with branding or purposes that are changed for ISO release in any other matter:

Naming convention for the tags. 
This would only be for packages that can change as part of the release of a new ISO.

example version: **22.03.1.1**

**22** - The year of Release

**03** - The month of Release  -- up from cassini it will be the Month of the initial Release

**1** - 1 for the main release, 2 for neo, 3 for nova (bug fix releases)

**1** - The current iteration of the package

**Not used for the ISO release names!**

---

# License

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://github.com/endeavouros-team/PKGBUILDS/blob/main/LICENSE) 

Unless stated otherwise, all files in this repository (PKGBUILDs, patches,
and other packaging-related files) are licensed under the
[GNU General Public License v3.0](LICENSE) (GPL-3.0-or-later).

Individual packages may be released under a different license. In that case,
the license is stated in the package's own subdirectory and applies to that
package's files.

Note that the software built by these PKGBUILDs is not covered by this
license. It remains under its respective upstream license(s), as declared in
the `license=()` array of each PKGBUILD.
