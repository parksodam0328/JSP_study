<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
	<link rel="stylesheet" href="css/custorm.css">
    <link rel="stylesheet" href="video.css">
</head>
<div id="content">
    <div id="box">
        <section id="section1">
                <hr>
            <div class="w3-content">

                <img class="mySlides" src="https://firebasestorage.googleapis.com/v0/b/hosting-b2e49.appspot.com/o/video_img1.png?alt=media&token=2f165feb-5292-49cc-8f6e-fd021b5f4757">
                <img class="mySlides" src="https://firebasestorage.googleapis.com/v0/b/hosting-b2e49.appspot.com/o/video_img2.png?alt=media&token=2d880d5c-efdd-47c2-8248-6c9755fc30ea">
                <img class="mySlides" src="https://firebasestorage.googleapis.com/v0/b/hosting-b2e49.appspot.com/o/video_img3.png?alt=media&token=182539b5-5a3a-4b4a-af6c-778ac51bbfbe">
                <img class="mySlides" src="https://firebasestorage.googleapis.com/v0/b/hosting-b2e49.appspot.com/o/video_img4.png?alt=media&token=00742733-c346-43fa-add0-8b3c71e75d6a">
                <img class="mySlides" src="https://firebasestorage.googleapis.com/v0/b/hosting-b2e49.appspot.com/o/video_img5.png?alt=media&token=cda7a936-20ff-4f78-8d1d-30c8c65a8bda">

                <img class="direction" src="https://firebasestorage.googleapis.com/v0/b/hosting-b2e49.appspot.com/o/left.png?alt=media&token=553c80a7-5ce4-4fde-95ad-1b00ef23f505" style="position:absolute;left:10%;top:38%;" onclick="plusDivs(-1)">
                <img class="direction" src="https://firebasestorage.googleapis.com/v0/b/hosting-b2e49.appspot.com/o/right.png?alt=media&token=7fd26a74-2473-4dde-9773-6ff989959b7f" style="position:absolute;top:38%;right:10%;" onclick="plusDivs(1)">
            </div>
        
        <hr>
    </section>
        <section id="section2">
            <table width="80%" align="center">
                <tr>
                    <td>
                        <iframe class="videoHome" src="https://www.youtube.com/embed/nfs8NYg7yQM" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                    </td>
                    <td>
                        <iframe class="videoHome" src="https://www.youtube.com/embed/3tmd-ClpJxA" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                    </td>
                    <td>
                        <iframe class="videoHome" src="https://www.youtube.com/embed/hKDMFw7B7o4" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="text">Music</span>
                    </td>
                    <td>
                        <span class="text">Lyrics</span>
                    </td>
                    <td>
                        <span class="text">Collaboration</span>
                    </td>
                </tr>
            </table>
        </section>
    </div>
</div>

<script src="video.js"></script>
</body>

</html>