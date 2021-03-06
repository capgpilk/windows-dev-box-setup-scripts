# Description: Boxstarter Script  
# Author: Garry Pilkington based off Microsoft scripts
# Common dev settings for web dev

Disable-UAC

#--- Windows Features ---
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions

#--- File Explorer Settings ---
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneExpandToCurrentFolder -Value 1
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneShowAllFolders -Value 1
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name LaunchTo -Value 1
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name MMTaskbarMode -Value 2

#--- Browsers ---
choco install -y googlechrome
choco install -y firefox

#--- Tools ---
choco install -y ccleaner
choco install -y sublimetext3
choco install -y windirstat
choco install -y speccy

Enable-UAC
Enable-MicrosoftUpdate
Install-WindowsUpdate -acceptEula
