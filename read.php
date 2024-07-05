<?php
$con = mysqli_connect("localhost", "root", "", "upload_image");
if ($con) {
    $sql = "SELECT * FROM images ORDER BY id DESC LIMIT 1";
    $result = mysqli_query($con, $sql);

    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            $path = $row['path'];
            $confidence = $row['confidence'];
            echo "Confidence: $confidence%<br>";
            echo '<img src="' . $path . '" alt="Uploaded Image" style="width:200px;height:200px;"><br><br>';
        }
    } else {
        echo "No images found";
    }
} else {
    echo "Database connection failed";
}
mysqli_close($con);
?>
