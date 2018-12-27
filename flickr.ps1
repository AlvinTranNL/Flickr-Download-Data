Import-Module BitsTransfer

$FirstUrl = "https://s.yimg.com/kt/d/data_26100360_8d1fdb7b4d1b3f812f60832e903b62bba94d76dce68be80cc2ed5f10be0dbee7_1.zip"
$BaseUrl = $FirstUrl.TrimEnd("1.zip")
$BaseFolder = "C:\Users\alvin\Pictures"

Write-Host "BEGIN TIME:" $(Get-Date)

$FileRange = 1..51
$FileRange | ForEach-Object {

    $url = ("$BaseUrl" + $_ + ".zip")
    $output = ("$BaseFolder" + "\" + $_ + ".zip")
    Write-Host $url
    Write-Host $output

    #Start-BitsTransfer -Source $url -Destination $output    

}

Write-Host "END TIME:" $(Get-Date)
