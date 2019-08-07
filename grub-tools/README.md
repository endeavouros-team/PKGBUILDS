# grub-tools
A small collection of tools and related features for grub.

Name | Description
---- | -----------
grub-update-after-kernel.hook | Automatically updates grub.cfg after a kernel is installed/uninstalled.
grub-fix-initrd-generation | Fixes generation of 'initrd' lines in grub.cfg.

## grub-update-after-kernel.hook
This pacman hook automatically updates **/boot/grub/grub.cfg** after a kernel is installed or uninstalled.

## grub-fix-initrd-generation
Command grub-mkconfig may not generate file **/boot/grub/grub.cfg** correctly for every operating system.
The problem is that the generated **initrd** line may lack the initramfs parameter.
The reason is in packages **grub** and **os-prober** as they don't work well together
to generate the initrd line properly.
*grub-fix-initrd-generation* fixes both 'grub' and 'os-prober' in order to produce correct 'initrd' generation.

Run grub-fix-initrd-generation once, and always after updating 'grub' or 'os-prober',
unless 'grub' and 'os-prober' have been fixed by upstream.
