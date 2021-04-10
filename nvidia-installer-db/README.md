# Nvidia Installer
Setup nvidia drivers in EndeavourOS

For up to date details regarding your NVIDIA GPU:
- go to: https://www.nvidia.com/en-us/drivers/unix
- follow one of the links under **Linux x86_64/AMD64/EM64T**:
  - Latest Long Lived Branch Version
    - optionally: Latest Short Lived Branch Version
  - Latest Legacy GPU version
- click the **SUPPORTED PRODUCTS** tab

For full details:
- click the **ADDITIONAL INFORMATION** tab
- click **README** near the end of that page
- click *Appendix A*: **Supported NVIDIA GPU Products**
- find your card in the list

On your system, find your NVIDIA card id with command:
<pre>
lspci -vnn | grep -P 'VGA|Display|3D' | grep 10de | sed 's|.* \[10de:\([0-9a-f]*\)\] .*|\1|'
</pre>

[**Changelog**](https://github.com/endeavouros-team/PKGBUILDS/commits/master/nvidia-installer-db)
