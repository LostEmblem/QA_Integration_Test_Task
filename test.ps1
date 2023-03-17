Stop-Transcript | out-null #Stop any transcripts that may be running

$logDir = Read-Host -Prompt "Input your log folder path"
Start-Transcript -path $logDir\output.txt -append

$sourceDir = Read-Host -Prompt "Input your source folder path" #Source folder has to already exist
$replicaDir = Read-Host -Prompt "Input your target folder path"

Copy-Item -Path $sourceDir -Destination $replicaDir -Recurse -Container -Verbose -Force

Stop-Transcript