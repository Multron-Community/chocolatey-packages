$ErrorActionPreference = 'Stop'

$packageName  = 'multron-download-manager'
$installerType = 'exe'
$url64        = 'https://github.com/Multron-Community/Multron-Download-Manager/releases/download/v1.0.2/Multron-Download-Manager-1.0.2-x64-Setup.exe'
$checksum64   = 'f272004428e3b4c8d7135f53be0a3d44409b9f182a4bc70d12279e0594d3e23b'
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
