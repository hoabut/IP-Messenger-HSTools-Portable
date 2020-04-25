# IP-Messenger-HSTools-Portable
IP Messenger HSTools Portable is the serverless pop up style LAN message communication software packaged with a PortableApps.com launcher as a portable app.

You can send and receive messages with embedded images and files all with RSA2048/AES256/SHA-256 (or SHA-1) encryption on your iPod, USB flash drive, portable hard drive, cloud drive, etc.  It has all the same features as IP Messenger HSTools, plus, it leaves no personal information behind on the machine you run it on, so you can take it with you wherever you go.  A noted feature among its many features is folder/file transfers are among the fastest since it uses FastCopy codes which achieve reading/writing performance that is close to device limit.  Learn more about IP Messenger HSTools at https://ipmsg.org/en/ …

IP Messenger HSTools uses Windows registry to store its settings.  Specifically,

HKCU\Software\HSTools

registry keys are use.
To make the app portable, the PortableApps.com launcher ..\App\AppInfo\Launcher\IPMessengerHSToolsPortable.ini has the

[RegistryKeys]

IPMessengerHSTools=HKCU\Software\HSTools

which puts the registry keys in the ..\Data\settings\IPMessengerHSTools.reg inside the portable app directory.

IP Messenger HSTools also uses the

\Users\<username>\Documents\IPMsg

directory to store ipmsg.log file, ipmsg.db file, AutoSave folder, and ipmsg_img folder.
To remedy this, parameters,
[Environment]

USERPROFILE=%PAL:DataDir%

ALLUSERSAPPDATA=%PAL:DataDir%

[DirectoriesMove]

-=%DOCUMENTS%\IPMsg

are set in ..\App\AppInfo\Launcher\IPMessengerHSToolsPortable.ini among a host of other parameters to make the app work portably.  Currently, it seems to be the only way to get it to work properly.

It is believed that since this app uses encryption for safety communication, a pair of public encryption keys (e.g. MachineKeys) in

\ProgramData\Microsoft\Crypto\RSA\MachineKeys\????????????????????????????????_????????-????-????-????-????????????

\ProgramData\Microsoft\Crypto\RSA\MachineKeys\????????????????????????????????_????????-????-????-????-????????????

get generated on first run on the machine itself.
Note the private encryption keys are generated in the registry which is stored in ..\Data\settings\IPMessengerHSTools.reg in the portable app directory only.

On first run (or even subsequent runs if not added on the first run) the app pops up a dialog box giving the user a chance to add firewall rules pertaining to 2425/UDP port for member detection and message communication, and 2425/TCP port for file and image transfer.  It will require an elevated privilege in order to add the app or the ports required in the firewall.
This can also be accomplish by elevated command line,
netsh advfirewall firewall add rule name=”IP Messenger” dir=in action=allow program=”..\app\ ipmessengerhstools64\ipmsg.exe” enable=yes
netsh advfirewall firewall add rule name=”IP Messenger” dir=out action=allow program=”..\app\ ipmessengerhstools64\ipmsg.exe” enable=yes
or by ports,
netsh advfirewall firewall add rule name=”Open TCP Port 2425” dir=in action=allow protocol=TCP localport=2425
netsh advfirewall firewall add rule name=”Open UDP Port 2425” dir=in action=allow protocol=UDP localport=2425

Besides meeting the portable app definition at https://portableapps.com/about/what_is_a_portable_app, it is very workable in other OS/platform such as Linux, Unix, BSD, etc via Wine & Mac OS X via CrossOver, Wineskin, WineBottler, PlayOnMac.
