#membuat direktori 
Path[0]:"C:\Users\USER\local
Path[1]:"C:\Users\USER\local\data
Path[2]:"C:\Users\USER\local\data\market
#membuat file excel
$Myexcel = New-Object -ComObject excel.application
$Myexcel.visible = $true
$Myworkbook = $Myexcel.workbooks.add()
$Myfile = 'C:\Users\USER\local\data\market\daily_market_price.xlsx'
$Myexcel.displayalerts = $false
$Myworkbook.Saveas($Myfile)
$Myexcel.displayalerts = $true
#melakukan copy file ke direktori market ke data1 dan melakukan cek berhasil dipindahkan dengan sintax passthru
Copy-Item -Path C:\Users\USER\local\data\market\daily_market_price.xlsx -Destination C:\Users\USER\hdfs\data\data1 -recurse -PassThru