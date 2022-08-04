$webResult = Invoke-WebRequest -Uri 'https://reddit.com/r/powershell.json'
$rawJSON = $webResult.Content
$objData = $rawJSON | ConvertFrom-Json
$posts = $objData.data.children.data
$posts | Select-Object Title, Score | Sort-Object Score -Descending 

#############################################################################

[int]$numPosts = Read-Host -Prompt "Please enter number of posts to read"

$posts | Select-Object Title, url | Sort-Object Score -Descending | Select-Object -First $numPosts 

###################################################################################################
Write-Host 'Text output to console'
$hostInfo = Get-Host
Write-Host $hostInfo
Write-Host $hostInfo.Version

###################################################################################################3
$process = Get-Process
Write-Output $process

#####################################################################################################
