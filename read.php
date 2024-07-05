<?php
$con = mysqli_connect("localhost", "root", "", "upload_image");
if ($con) {
    $sql = "SELECT * FROM images ORDER BY id DESC LIMIT 1";
    $hasil = mysqli_query($con, $sql);

    if (mysqli_num_rows($hasil) > 0) {
        while ($row = mysqli_fetch_assoc($hasil)) {
            $path = $row['path'];
            $confidence = $row['confidence'];
            $result = $row['result'];
            echo "Result: $result<br>";
            echo "Confidence: $confidence<br>";
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
