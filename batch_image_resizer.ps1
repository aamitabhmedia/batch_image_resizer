# TODO: Need to parameterize the src and destimation folders
# -----------------------------------------------------------

$image_path = "D:\\picsHres\\2021\\2021-06-11 Shasta Vacation\*.jpg"
$image_files = Get-ChildItem -PAth $image_path

$out_folder="D:\\picsHres\\2021\\2021-06-11 Shasta Vacation_resized"

foreach ($image_file in $image_files) {
    $out_image_file = Join-Path -Path $out_folder -ChildPath $image_file.Name
    magick convert $image_file -resize 50% $out_image_file
    # magick $image_file -gravity Center -background Black -extent "%[fx:max(2880,2160)]x%[fx:max(2160,2880)]" $out_image_file
}