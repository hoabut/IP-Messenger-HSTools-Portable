![image info](./ipmessengerhstoolsportable_readme_version_5.1.1_gh_files/media/image1.png)

IP Messenger HSTools Portable

Sidenotes, highlights, and more:

paf_binaries folder: contains all .paf.exe releases (i.e. releases)

paf_templates folder: contains all PortableApps.com Format template
releases (i.e. sources)

ipmessengerhstoolsportable_readme_version_5.1.1_gh.docx file: this file
in .docx

README.md file: this file in .md

[Download latest
release](https://github.com/hoabut/IP-Messenger-HSTools-Portable/releases/tag/v5.1.1)

[Go to the IP Messenger HSTools Portable
Homepage](https://portableapps.com/node/62011)

2021-12-3: 5.1.1:

-   Changes to portability notes are documented below

For IP Messenger HSTools release notes, go ahead and consult
<https://ipmsg.org/en/>

.

.

.

IP Messenger HSTools Portable is the serverless pop up style LAN message
communication software packaged with a PortableApps.com launcher as a
portable app. You can send and receive messages with embedded images and
files all with RSA2048/AES256/SHA-256 (or SHA-1) encryption on your
cloud folder, portable drive, or local folder without needing to install
it on each PC. It has all the same features as IP Messenger HSTools,
plus, it leaves no personal information behind on the machine you run it
on, so you can take it with you wherever you go. A noted feature among
its many features is folder/file transfers are among the fastest since
it uses FastCopy codes which achieve reading/writing performance that is
close to device limit. Learn more about IP Messenger HSTools at
<https://ipmsg.org/en/> ...

IP Messenger HSTools uses Windows registry to store its settings.
Specifically,

HKCU\\Software\\HSTools

registry keys are use. There are subtle differences in the registry keys
depending 64-bit or 32-bit versions being used. Therefore, the INI files
are split for each respective versions.

To make the app portable, the PortableApps.com launcher
..\\App\\AppInfo\\Launcher\\IPMessengerHSToolsPortable64bit.ini has the

\[RegistryKeys\]

IPMessengerHSTools64=HKCU\\Software\\HSTools

With 32-bit, the PortableApps.com launcher
..\\App\\AppInfo\\Launcher\\IPMessengerHSToolsPortable32bit.ini has the

\[RegistryKeys\]

IPMessengerHSTools32=HKCU\\Software\\HSTools

which puts the registry keys in the
..\\Data\\settings\\IPMessengerHSTools64.reg (or
IPMessengerHSTools32.reg) inside the portable app directory.

IP Messenger HSTools also uses the

\\Users\\\<username>\\Documents\\IPMsg

directory to store ipmsg.log file, ipmsg.db file, AutoSave folder, and
ipmsg_img folder.

To remedy this, parameters,

\[DirectoriesMove\]

IPMsg=%DOCUMENTS%\\IPMsg

are set in ..\\App\\AppInfo\\Launcher\\IPMessengerHSToolsPortable64.ini
(or IPMessengerHSToolsPortable32bit.ini) among a host of other
parameters to make the app work portably.

It is believed that since this app uses encryption for safety
communication, a pair of public encryption keys (e.g. MachineKeys) in

\\ProgramData\\Microsoft\\Crypto\\RSA\\MachineKeys\\????????????????????????????????\_????????-????-????-????-????????????

\\ProgramData\\Microsoft\\Crypto\\RSA\\MachineKeys\\????????????????????????????????\_????????-????-????-????-????????????

get generated on first run on the machine itself.

Note the private encryption keys are generated in the registry which is
stored in ..\\Data\\settings\\IPMessengerHSTools64.reg (or
IPMessengerHSTools32.reg) in the portable app directory only.

On first run (or even subsequent runs if not added on the first run) the
app pops up a dialog box giving the user a chance to add firewall rules
pertaining to 2425/UDP port for member detection and message
communication, and 2425/TCP port for file and image transfer. It will
require an elevated privilege in order to add the app or the ports
required in the firewall.

This can also be accomplish by elevated command line,

netsh advfirewall firewall add rule name="IP Messenger" dir=in
action=allow program="..\\App\\IPMessengerHSTools64\\IPMsg.exe"
enable=yes

netsh advfirewall firewall add rule name="IP Messenger" dir=out
action=allow program="..\\App\\IPMessengerHSTools64\\IPMsg.exe"
enable=yes

or

netsh advfirewall firewall add rule name="IP Messenger" dir=in
action=allow program="..\\App\\IPMessengerHSTools32\\IPMsg.exe"
enable=yes

netsh advfirewall firewall add rule name="IP Messenger" dir=out
action=allow program="..\\App\\IPMessengerHSTools32\\IPMsg.exe"
enable=yes

or by ports,

netsh advfirewall firewall add rule name="Open TCP Port 2425" dir=in
action=allow protocol=TCP localport=2425

netsh advfirewall firewall add rule name="Open UDP Port 2425" dir=in
action=allow protocol=UDP localport=2425

Besides meeting the portable app definition at
https://portableapps.com/about/what_is_a\_portable_app, it is very
workable in other OS/platform such as Linux, UNIX, BSD, etc. via Wine
(winehq.org) & Mac OS X via CrossOver, Wineskin, WineBottler, PlayOnMac.

Finally, "Why PortableApps.com Format and a PortableApps.com Installer?"
Perhaps, a read at
[[https://portableapps.com/about/what_is_a\_portable_app#whypaf]{.underline}](https://portableapps.com/about/what_is_a_portable_app#whypaf)
would suffice.
