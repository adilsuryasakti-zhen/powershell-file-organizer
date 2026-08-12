$filePath="X:\TestEnviroment\data"

$x= "photo", "video", "exel", "Word", "rar", "gif"    

foreach ($type in $x){
    New-Item -Path $filePath -ItemType Directory -Name $type
}

$data=Get-ChildItem -Path $filePath -File
$data

foreach($itemtype in $data){
       if($itemtype.Extension -eq ".jpg"){
        Move-Item -Path $itemtype.FullName -Destination ($filePath +"\photo")
       }elseif ($itemtype.Extension -eq ".mkv") {
         Move-Item -Path $itemtype.FullName -Destination ($filePath +"\video")
       }elseif ($itemtype.Extension -eq ".xlsx") {
         Move-Item -Path $itemtype.FullName -Destination ($filePath +"\exel")
       }elseif ($itemtype.Extension -eq ".docx") {
         Move-Item -Path $itemtype.FullName -Destination ($filePath +"\word")
       }elseif ($itemtype.Extension -eq ".rar") {
         Move-Item -Path $itemtype.FullName -Destination ($filePath +"\rar")
       }elseif ($itemtype.Extension -eq ".gif") {
         Move-Item -Path $itemtype.FullName -Destination ($filePath +"\gif")
       }     
}

