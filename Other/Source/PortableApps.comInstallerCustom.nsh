/*
From PortableApps.com Format™ 3.5 (2019-01-07)
Custom Code may be included with your installer by including a file called PortableApps.comInstallerCustom.nsh within the Other\Source directory. This file is coded in NSIS and can include 3 macros: CustomCodePreInstall (which is run before installation), CustomCodePostInstall (which is run after installation) and CustomCodeOptionalCleanup (which is run at the beginning of installation if the optional section of an installer is not selected, intended for use in app upgrades when the existing app may have had the optional section included). In addition to the standard NSIS functions, the following NSIS features are available: ConfigRead, ConfigReadS, ConfigWrite, ConfigWriteS, GetParent, GetRoot, VersionCompare and the LogicLib features of NSIS. Please ensure that the file is Unicode encoded (not ANSI/DOS).
*/

/*

; Store additional NSIS plugins/headers, you can't just use Other\Source dir, must be subdir in Other\Source, eg. Other\Source\CUSTOM_PLUGIN, Other\Source\CUSTOM_INCLUDE
!addincludedir '.\CUSTOM_INCLUDE'
!addplugindir '.\CUSTOM_PLUGIN'

!macro CustomCodeOptionalCleanup
	...
!macroend

!macro CustomCodePreInstall
	...
!macroend

!macro CustomCodePostInstall
	...
!macroend

*/

/*
# sample upgrade older version...

!define CUSTOM_APPINFOINI '$INSTDIR\App\AppInfo\appinfo.ini'

Var CUSTOM_PREVVER

!macro CustomCodePreInstall
	ReadINIStr $CUSTOM_PREVVER ${CUSTOM_APPINFOINI} Version PackageVersion
!macroend

!macro CustomCodePostInstall
	${If} $CUSTOM_PREVVER != ''
		${VersionCompare} '$CUSTOM_PREVVER' '2.4.5.0' $R9 ; 0: equal, 1: 2.4.5.0 is older, 2: 2.4.5.0 is newer
		${If} $R9 == '2'
			...
		${EndIf}
	${EndIf}
!macroend
*/