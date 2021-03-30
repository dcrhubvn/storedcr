Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
& {$P = $env:TEMP + '\chromeremotedesktophost.msi'; Invoke-WebRequest 'https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi' -OutFile $P; Start-Process $P -Wait; Remove-Item $P}
& {$P = $env:TEMP + '\chrome_installer.exe'; Invoke-WebRequest 'https://dl.google.com/chrome/install/latest/chrome_installer.exe' -OutFile $P; Start-Process -FilePath $P -Args '/install' -Verb RunAs -Wait; Remove-Item $P}
& {$P = $env:TEMP + '\ngrok.exe'; Invoke-WebRequest 'https://firebasestorage.googleapis.com/v0/b/apps-pc.appspot.com/o/ngrok.exe?alt=media&token=25c94f2d-0e85-4b92-8c0c-76e0d72bfd3a' -OutFile $P; Start-Process -FilePath $P  -Verb RunAs -Wait}
