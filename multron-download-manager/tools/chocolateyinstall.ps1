$ErrorActionPreference = 'Stop'

$packageName  = 'multron-download-manager'
$installerType = 'exe'
$url64        = 'https://github.com/Multron-Community/Multron-Download-Manager/releases/download/v1.0.3/Multron-Download-Manager-1.0.3-x64-Setup.exe'
$checksum64   = '7d306decbbda79bb5bb0e66def490ba2131f51394d614f79f7ea2075e31b288e'
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
