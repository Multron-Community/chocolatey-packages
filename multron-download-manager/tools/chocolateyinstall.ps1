$ErrorActionPreference = 'Stop'

$packageName  = 'multron-download-manager'
$installerType = 'exe'
$url64        = 'https://github.com/Multron-Community/Multron-Download-Manager/releases/download/v0.0.11/Multron-Download-Manager-0.0.11-x64-Setup.exe'
$checksum64   = '73933520487828432854f26006d18fec56b2a47a7feed036d8dc35e6bca64add'
$checksumType64 = 'sha256'
$silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)

Install-ChocolateyPackage `
  -PackageName "$packageName" `
  -FileType "$installerType" `
  -SilentArgs "$silentArgs" `
  -Url64bit "$url64" `
  -Checksum64 "$checksum64" `
  -ChecksumType64 "$checksumType64" `
  -ValidExitCodes $validExitCodes
