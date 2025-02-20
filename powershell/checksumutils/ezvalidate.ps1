#ezvalidate.ps1

#colors
$RED = "`e[31m"
$GRN = "`e[32m"
$RES = "`e[0m"

#default Algorithm is SHA256
$algorithm = "sha256"
$file = ""
$expected_checksum = ""

#Funktion -> show success message in green
function Write-Success {
    Write-Host "$GRN$($args[0])$RES"
}

#Function -> Error message in red
function Write-Error {
    Write-Host "$RED$($args[0])$RES"
}

#Parse CLI args
param (
    [string]$file,
    [string]$expected_checksum,
    [string]$algorithm = "sha256"
)

#validate args
if (-not $file -or -not $expected_checksum){
    Write-Error "[ERROR]: Missing required arguments."
    exit 1
}

function Get-Checksum {
    param (
        [string]$file,
        [string]$algorithm
    )

    $checksum = ""
    if ($checksum -eq "sha256"){
        $checksum = Get-FileHash -Path $file -Algorithm SHA256 | Select-Object -ExpandProperty Hash
    } elseif ($algorithm -eq "sha1"){
        $checksum = Get-FileHash -Path $file -Algorithm MD5 | Select-Object -ExpandProperty Hash
    } elseif ($algorithm -eq "sha384"){
        $checksum = Get-FileHash -Path $file -Algorithm SHA384 | Select-Object -ExpandProperty Hash
    } elseif ($algorithm -eq "sha512"){
        $checksum = Get-FileHash -Path $file -Algorithm SHA512 | Select-Object -ExpandProperty Hash
    } elseif ($algorithm -eq "md5"){
        $checksum = Get-FileHash -Path $file -Algorithm MD5 | Select-Object -ExpandProperty Hash
    } else {
        Write-Error "[ERROR]: Unsupported algorithm $algorithm."
        exit 1
    }
    return $checksum
}

#compare checksum
$hashed_checksum = Get-Checksum -file $file -algorithm $algorithm

if ($hashed_checksum -eq $expected_checksum){
    Write-Success "Checksums match!"
} else {
    Write-Error "[ERROR]: Validation failed. Expected: $expected_checksum, Hashed: $hashed_checksum"
}