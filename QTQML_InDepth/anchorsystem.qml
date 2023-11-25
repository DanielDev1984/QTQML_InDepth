import QtQuick 2.9
import QtQuick.Window 2.2



Window {
    readonly property string rootpath: "file:///C:/Users/strai/source/repos/QTQML_InDepth/QTQML_InDepth/data/images/anchorsystem"
    readonly property int marginSize: 10
    id: root;
    visible: true
    width: 600
    height: 450
    title: "QTQML_InDepth"
    color: "black";

    Image {
                id:background;
                source: rootpath + "/background.png";
                
                anchors {
                    top: root.top;
                    right: root.right;
                    left: root.left;
                    bottom: root.bottom;
                }
            }

    Rectangle {
        id:leftRectangle;
        x: 0;
        height: 200;
        width: 30;
        color:"darkblue";
        border {
            color: "black";
            width: 6;
        }
    }

    Rectangle {
        id:topRectangle;
        x: 100;
        height: 100;
        width: 200;
        color:"white";
        border {
            color: "black";
            width: 6;
        }
        NumberAnimation on y {
            from: 0; 
            to: 50;
            loops: Animation.Infinite
            duration: 6*1000}
    }

    Rectangle {
        id:rightRectangle;
        y:100;
        height: 100;
        width: 200;
        color:"crimson";
        border {
            color: "black";
            width: 6;
        }
        NumberAnimation on x {
            from: 200; 
            to: 250;
            loops: Animation.Infinite
            duration: 6*1000
        }
    }

    Rectangle {
        id:bottomRectangle;
        x: 0;
        y: 350;
        height: 30;
        width: 200;
        color:"gold";
        border {
            color: "black";
            width: 6;
        }
    }
    Image {
        id:borders;
        source: rootpath + "/borders.png";
        anchors {
            right: rightRectangle.left;
            rightMargin: marginSize;
            top: topRectangle.bottom;
            topMargin: marginSize;
            left: leftRectangle.right;
            leftMargin: marginSize;
            bottom: bottomRectangle.top;
            bottomMargin: marginSize;
        }
    }
}

