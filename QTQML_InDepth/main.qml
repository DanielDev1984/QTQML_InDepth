import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    id: root;
    visible: true
    width: 420
    height: 420
    title: "QTQML_InDepth"
    color: "black";


    Item {
        width: parent.width;
        height: parent.height;
        Rectangle {
            id: imageFrame
            x: 0;
            width:height;
            height:200;
            color:root.color
            Image {
                id:clockBackground;
                source: "file:///C:/Users/strai/source/repos/QTQML_InDepth/QTQML_InDepth/clock_background.png";
                height: imageFrame.height*2;
                fillMode: Image.PreserveAspectFit;
            }
            Image {
            id: notRotatedImage;
            transform: Rotation {
                id: rotation;
                origin.x : notRotatedImage.width*0.5;
                origin.y : notRotatedImage.height;
                angle:0;
            }
                x: clockBackground.x + clockBackground.width * 0.5 - width * 0.5;
                y: clockBackground.y + clockBackground.height * -0.0;
                height: clockBackground.height*0.5;
                fillMode: Image.PreserveAspectFit;
                source: "file:///C:/Users/strai/source/repos/QTQML_InDepth/QTQML_InDepth/rocket.png";
                Component.onCompleted: console.log("image loaded");
                /*Rectangle {
                    id: centerOfRotation;
                    x: rotation.origin.x - centerOfRotation.width*0.5;
                    y: rotation.origin.y - centerOfRotation.height*0.5;
                    width: 10;
                    height: 10;
                    color:"lime";
                }*/
                SequentialAnimation {
                    running: true
                     loops: Animation.Infinite
                    NumberAnimation { target: rotation; property: "angle"; to: 360; duration: 10000 }
                }
            }
        }

    }
}

