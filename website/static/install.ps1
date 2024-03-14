$URL_PREFIX = "https://github.com/old-juniors/qltrq/releases/download/2.3"
$INSTALL_DIR = "$env:ProgramFiles\jprq"
$FILENAME = "qltrq-windows-$(if ((Get-WmiObject -Class Win32_Processor).AddressWidth -eq 64) { 'amd64' } else { '386' }).exe"

Write-Host "Started installing qltrq ..."

# Create the installation directory if it doesn't exist
if (-not (Test-Path -Path $INSTALL_DIR)) {
    try {
        New-Item -Path $INSTALL_DIR -ItemType Directory -Force -ErrorAction Stop | Out-Null
    }
    catch {
        Write-Host "Failed to create installation directory $INSTALL_DIR" -ForegroundColor Red
        Start-Sleep -Seconds 5
        exit 1
    }
}

# Download qltrq from releases for detected processor arch
try {
    Write-Host "Downloading $FILENAME from GitHub releases"
    Invoke-WebRequest -Uri "$URL_PREFIX/$FILENAME" -OutFile "$INSTALL_DIR\qltrq.exe" -UseBasicParsing -ErrorAction Stop
}
catch {
    Write-Host "Failed to download qltrq from GitHub releases" -ForegroundColor Red
    Start-Sleep -Seconds 5
    exit 1
}

# Add the installation directory to the system PATH
try {
    $symlinkPath = "$env:SystemRoot\System32\qltrq.exe"
    New-Item -Path $symlinkPath -ItemType SymbolicLink -Value "$INSTALL_DIR\qltrq.exe" -Force -ErrorAction Stop | Out-Null
    Write-Host "qltrq is successfully installed to $INSTALL_DIR" -ForegroundColor Green
    Write-Host "Added $INSTALL_DIR to the system PATH"
}
catch {
    Write-Host "Failed to set executable permission on $INSTALL_DIR\jprq" -ForegroundColor Red
    Start-Sleep -Seconds 5
    exit 1
}

Start-Sleep -Seconds 3