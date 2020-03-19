# grub-tools
A small collection of tools and related features for grub.

Name | Description
---- | -----------
grub-update-after-kernel.hook | Automatically updates grub.cfg after a kernel is installed/uninstalled.
grub-fix-initrd-generation | Fixes generation of 'initrd' lines in grub.cfg.
grub-fix-initrd-generation.hook | Runs the fixer when <b>grub</b> or <b>os-prober</b> is updated.


## grub-update-after-kernel.hook
This pacman hook automatically updates **/boot/grub/grub.cfg** after a kernel is installed or uninstalled.
Also microcode install (or uninstall) causes grub.cfg to be updated.

## grub-fix-initrd-generation
Command grub-mkconfig may generate file **/boot/grub/grub.cfg** incorrectly for some operating systems.
The problem is that the generated **initrd** line may lack the initramfs parameter.
The reason is in packages **grub** and **os-prober** as they don't work well together
to generate the initrd line properly.
*grub-fix-initrd-generation* fixes both 'grub' and 'os-prober' in order to produce correct 'initrd' generation.

You should run grub-fix-initrd-generation once. Later, if grub' or 'os-prober' is updated, the hook grub-fix-initrd-generation.hook takes care of re-fixing grub-mkconfig.

But when 'grub' and 'os-prober' have been fixed upstream, grub-fix-initrd-generation.hook is no more needed. Then simply reinstall packages grub and os-prober.
