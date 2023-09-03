#membuat direktori
C:\Users\USER>md
Path[0]:"C:\Users\USER\hdfs
Path[1]:"C:\Users\USER\hdfs\data
Path[2]:"C:\Users\USER\hdfs\data\data1
#melakukan cek direktori apa sudah atau belum
$data1 = "C:\Users\USER\hdfs\data"

if ( Test-Path $data1 ) {
    echo "There is data1 Directory Exists!"
} else {
    echo "There is data1 Directory not Exists"
    md data1
}
#buat crontab daily sintax
action = New-ScheduledTaskAction -Execute 'powershell_ise' -Argument 'C:\Users\USER\hdfs\data\data1\bash main 1.txt'

$trigger = New-ScheduledTaskTrigger -Daily -At 7am

Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "bash main 1" -Description "Chris Hadir"