SDVerify
========
### Compile stable software on Linux, Apple Mac, Windows/Cygwin, and FreeBSD

* make

### Use example of SDread and SDwrite

## MAC

SDread /Volumes/Nate_Storage
SDwrite /Volumes/Nate_Storage

Replace "/Volumes/Nate_Storage" with the correct path.


## LINUX

* ./SDread /media/nate/3OWE-FAJ9/
* ./SDwrite /media/nate/3OWE-FAJ9/

Replace "/media/nate/3OWE-FAJ9/" with the correct path.

### Files

changelog	- Change log.
SDverify.1	- Manual page for SDread and SDwrite.
		  To read the manual, run 'man ./SDverify.1'.
		  To install the page, run
		  'install --owner=root --group=root --mode=644 SDverify.1 /usr/share/man/man1'.
LICENSE		- License (GPLv3).
Makefile	- make(1) file.
README		- This file.

*.h and *.c	- C code of SDverify.

## Bash scripts

Although the simple scripts listed in this section are ready for use,
they are really meant to help you to write your own scripts.
So you can personalize SD to your specific needs.

SDwrite.h2w	- Script to create files exactly like H2testw.
            Example: 'SDwrite.h2w /Volumes/Nate_Storage'

log-SDwr	- Script that runs SDwrite and SDread, and records
		  their output into a log file.
		  Use example: 'log-SDwr log-filename /Volumes/Nate_Storage'

Please notice that all scripts and use examples above assume that
SDwrite, SDread, and the scripts are reachable from
your environment PATH variable.
If that is not the case, but all of them are in your current path,
prefix the use examples above with 'PATH=$PATH:./' as shown below
for the script log-SDwr:

PATH=$PATH:./ log-SDwr log-filename /Volumes/Nate_Storage

The current path is represented by './' in the previous example.
