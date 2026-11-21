$ErrorActionPreference = 'Stop'

$packageName  = 'multron-download-manager'
$installerType = 'exe'
$url64        = 'https://github.com/Multron-Community/Multron-Download-Manager/releases/download/v1.0.1/Multron-Download-Manager-1.0.1-x64-Setup.exe'
$checksum64   = '4068321b567182a320a148bfbfe6a013ae2944b05a66d1b02df72ddacf91f5b7'
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
