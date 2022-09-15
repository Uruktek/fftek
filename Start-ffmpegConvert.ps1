# Getting the file names from the samples - CL 9/14/22
[array]$_samplesPath = Get-ChildItem "./samples/" | Select-Object Name

$_convertedPath = "./converted" # Converted file path - CL 9/14/22
$_FullSamplespath = "./samples/" # Samples File path - CL 9/14/22

# Loop for each file in samples, however it only pulls the name of the sample so the full path needs to be added. - CL 9/14/22
# Since we wanted to keep the files the same name after being converted we just chane the directory - CL 9/14/22
foreach ($file in $_samplesPath.Name) {
    ffmpeg -y -i "$_FullSamplespath/$file" -filter:a "atempo=1.4000689" "$_convertedPath/$file"

}