# Script untuk mengekstraksi DDL tabel saja dari file SQL
$inputFile = "scriptwbcp.sql"
$outputFile = "ddl_tables_only.sql"

# Baca file SQL per 1000 baris
$lineNumber = 0
$batchSize = 1000
$ddlContent = @()
$inCreateTable = $false
$currentTable = ""

Write-Host "Memulai ekstraksi DDL tabel dari $inputFile..."

try {
    $reader = [System.IO.File]::OpenText($inputFile)
    
    while (($line = $reader.ReadLine()) -ne $null) {
        $lineNumber++
        
        # Cek apakah ini adalah CREATE TABLE
        if ($line -match "CREATE TABLE") {
            $inCreateTable = $true
            $currentTable = $line
            $ddlContent += $line
            Write-Host "Ditemukan CREATE TABLE di baris $lineNumber"
        }
        # Jika sedang dalam CREATE TABLE, tambahkan baris
        elseif ($inCreateTable) {
            $ddlContent += $line
            
            # Cek apakah ini adalah akhir CREATE TABLE (biasanya diakhiri dengan GO atau ;)
            if ($line -match "^GO" -or $line -match "^\s*GO\s*$" -or $line.Trim() -eq "") {
                $inCreateTable = $false
                $ddlContent += ""  # Tambah baris kosong untuk pemisah
            }
        }
        
        # Progress indicator setiap 1000 baris
        if ($lineNumber % $batchSize -eq 0) {
            Write-Host "Memproses baris $lineNumber..."
        }
    }
    
    $reader.Close()
    
    # Tulis hasil ke file
    $ddlContent | Out-File -FilePath $outputFile -Encoding UTF8
    
    Write-Host "Ekstraksi selesai!"
    Write-Host "Total baris yang diproses: $lineNumber"
    Write-Host "Total DDL tabel yang ditemukan: $($ddlContent.Count)"
    Write-Host "Hasil disimpan di: $outputFile"
    
} catch {
    Write-Host "Error: $($_.Exception.Message)"
    if ($reader) {
        $reader.Close()
    }
} 