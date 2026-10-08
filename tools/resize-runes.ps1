param(
    [int]$Size = 128
)

$ErrorActionPreference = "Stop"

Add-Type -AssemblyName System.Drawing

$repoRoot = Split-Path -Parent $PSScriptRoot
$runesDir = Join-Path $repoRoot "assets\customguimod\textures\gui\runes"

if (-not (Test-Path $runesDir)) {
    throw "Rune texture directory not found: $runesDir"
}

$files = Get-ChildItem -Path $runesDir -Filter "*.png" -File
if ($files.Count -eq 0) {
    throw "No PNG files found in: $runesDir"
}

$beforeBytes = ($files | Measure-Object -Property Length -Sum).Sum

foreach ($file in $files) {
    $source = [System.Drawing.Image]::FromFile($file.FullName)
    try {
        $bitmap = New-Object System.Drawing.Bitmap($Size, $Size, [System.Drawing.Imaging.PixelFormat]::Format32bppArgb)
        try {
            $bitmap.SetResolution(96, 96)
            $graphics = [System.Drawing.Graphics]::FromImage($bitmap)
            try {
                $graphics.CompositingMode = [System.Drawing.Drawing2D.CompositingMode]::SourceCopy
                $graphics.CompositingQuality = [System.Drawing.Drawing2D.CompositingQuality]::HighQuality
                $graphics.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
                $graphics.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::HighQuality
                $graphics.PixelOffsetMode = [System.Drawing.Drawing2D.PixelOffsetMode]::HighQuality
                $graphics.Clear([System.Drawing.Color]::Transparent)
                $graphics.DrawImage($source, 0, 0, $Size, $Size)
            }
            finally {
                $graphics.Dispose()
            }

            $tempPath = "$($file.FullName).tmp.png"
            $bitmap.Save($tempPath, [System.Drawing.Imaging.ImageFormat]::Png)
        }
        finally {
            $bitmap.Dispose()
        }
    }
    finally {
        $source.Dispose()
    }

    Move-Item -Path $tempPath -Destination $file.FullName -Force
    Write-Host ("Resized {0} -> {1}x{1}" -f $file.Name, $Size)
}

$afterFiles = Get-ChildItem -Path $runesDir -Filter "*.png" -File
$afterBytes = ($afterFiles | Measure-Object -Property Length -Sum).Sum

$beforeMb = [Math]::Round($beforeBytes / 1MB, 2)
$afterMb = [Math]::Round($afterBytes / 1MB, 2)
$reduction = if ($beforeBytes -gt 0) {
    [Math]::Round((1 - ($afterBytes / [double]$beforeBytes)) * 100, 1)
} else {
    0
}

Write-Host ""
Write-Host "Done."
Write-Host "Before: $beforeMb MiB"
Write-Host "After:  $afterMb MiB"
Write-Host "Saved:  $reduction%"
Write-Host ""
Write-Host "Review the icons in Minecraft before committing the resized PNG files."
