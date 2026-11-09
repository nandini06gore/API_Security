param([Parameter(Mandatory=$true)][string]$Path)
$ErrorActionPreference = "Stop"
if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) {
    throw "File not found: $Path"
}
Get-FileHash -LiteralPath $Path -Algorithm SHA256
