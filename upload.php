<?php
$con = mysqli_connect("localhost", "root", "", "upload_image");
if ($con) {
    if (!empty($_POST['image']) && !empty($_POST['confidence'])) {
        $path = 'images/' . date("d-m-Y") . '-' . time() . '-' . rand(10000, 100000) . '.jpg';
        if (file_put_contents($path, base64_decode($_POST['image']))) {
            $confidence = floatval($_POST['confidence']);
            $sql = "INSERT INTO images (path, confidence) VALUES ('$path', '$confidence')";
            if (mysqli_query($con, $sql)) {
                echo 'success';
            } else {
                echo 'Failed to insert into Database';
            }
        } else {
            echo 'Failed to upload image';
        }
    } else {
        echo 'No image or confidence found';
    }
} else {
    echo "Database connection failed";
}
mysqli_close($con);
?>
