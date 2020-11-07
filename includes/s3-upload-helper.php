<?php
require '../vendor/aws-autoloader.php';

use Aws\S3\S3Client;
use Aws\Exception\AwsException;

if (isset($_POST['s3-submit'])){

    $bucketName = 'cs230lab';
    $file = $_FILES['s3-image'];
    $file_name = $file['name'];
    $file_tmp_name = $file['tmp_name'];
    $file_error = $file['error'];
    $file_size = $file['size'];
    $ext = strtolower(pathinfo($file_name, PATHINFO_EXTENSION));

    try {

        $s3client = S3Client::factory(
            array('region' =>'us-east-1',
            'version'=>'latest',
            'credentials'=> array(
                'key'=>'',
                'secret'=>''
            ))
        );

        $result = $s3client->putObject([
            'Bucket'=>$bucketName,
            'Key'=>'uploads/'.uniqid('',true).'.'.$ext,
            'SourceFile'=>$file_tmp_name,
            'ACL'=>'public-read'
        ]);

        echo 'Upload success: '.$result->get('ObjectURL');

    } catch (Aws\S3\Exception\S3Exception $e) {
        die("Error uploading: ".$e->getMessage());
    }

}