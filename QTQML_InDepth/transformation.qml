import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    readonly property string rootpath: "file:///C:/Users/strai/source/repos/QTQML_InDepth/QTQML_InDepth/data/images/transformations"

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
                source: rootpath + "/clock_background.png";
                height: imageFrame.height*2;
                fillMode: Image.PreserveAspectFit;
            }
            Item {
            id: asteroidContainer
            transform: Rotation {
                id: rotationAsteroid;
                origin.x : 210
                origin.y : 210;
                angle:0;
                RotationAnimation on angle {
                    from: 0;
                    to: 360;
                    duration: 60 * 1000;
                    loops: Animation.Infinite;
                }
            }
            /*Rectangle {
                    id: centerOfRotationAsteroidGlobal;
                    x: rotationAsteroid.origin.x - centerOfRotationAsteroidGlobal.width*0.5;
                    y: rotationAsteroid.origin.y - centerOfRotationAsteroidGlobal.height*0.5;
                    width: 10;
                    height: 10;
                    color:"lime";
                }*/
            Image {
            id: asteroid;
            
                x: clockBackground.x + clockBackground.width * 0.5 - width * 0.5;
                y: 0;
                height: clockBackground.height*0.2;
                fillMode: Image.PreserveAspectFit;
                source: rootpath + "/asteroid.png";
                Component.onCompleted: console.log("image loaded");
                transform: Rotation {
                id: rotationAsteroid2;
                origin.x : 40//clockBackground.x + clockBackground.width * 0.5 - width * 0.5;
                origin.y : 40;
                angle:0;
                RotationAnimation on angle {
                    from: 0;
                    to: -360;
                    duration: 6000;
                    loops: Animation.Infinite;
                }
            }
            /*Rectangle {
                    id: centerOfRotationAsteroidLocal;
                    x: rotationAsteroid2.origin.x - centerOfRotationAsteroidLocal.width*0.5;
                    y: rotationAsteroid2.origin.y - centerOfRotationAsteroidLocal.height*0.5;
                    width: 10;
                    height: 10;
                    color:"red";
                }*/
                
            }
            }
            

            Image {
            id: rocket;
            transform: Rotation {
                id: rocketRotation;
                origin.x : rocket.width*0.5;
                origin.y : rocket.height;
                angle:0;
                RotationAnimation on angle {
                    from: 0;
                    to: 360;
                    duration: 1000 * 60* 60;
                    loops: Animation.Infinite;
                }
            }
                x: clockBackground.x + clockBackground.width * 0.5 - width * 0.5;
                y: clockBackground.y + clockBackground.height * -0.0;
                height: clockBackground.height*0.5;
                fillMode: Image.PreserveAspectFit;
                source: rootpath + "/rocket.png";
                Component.onCompleted: console.log("image loaded");
                /*Rectangle {
                    id: centerOfRocketRotation;
                    x: rocketRotation.origin.x - centerOfRocketRotation.width*0.5;
                    y: rocketRotation.origin.y - centerOfRocketRotation.height*0.5;
                    width: 10;
                    height: 10;
                    color:"lime";
                }*/
            }
        }

    }
}

