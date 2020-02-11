﻿
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://download.wavebox.app/core/win/Install%20Wavebox%2010.0.69.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64

  softwareName  = 'Wavebox'

  checksum64    = 'bd12240f42792002a5e2897f8eae7467'
  checksumType64= 'md5'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '--disable-progress --do-not-launch-chrome'
}

Install-ChocolateyPackage @packageArgs










    








