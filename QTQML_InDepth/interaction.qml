import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    readonly property string rootpath: "file:///C:/Users/strai/source/repos/QTQML_InDepth/QTQML_InDepth/data/images/interactions"

    id: root;
    visible: true
    width: 210
    height: 210
    title: "QTQML_InDepth"
    color: "black";
    
    Flickable {
        id: flick
        anchors {
            fill: parent;
        }
        contentWidth: 420*2;
        contentHeight:420*2;
        // child of the content!
        Image {
            id:background;
            source: rootpath + "/tintin.png";
            width: flick.contentWidth; 
            height: flick.contentHeight;
        }
    }
    Rectangle {
        id: windowScaleUpButton;
        width: 40;
        height: 15;
        anchors {
            top: root.top;
            left: root.left;
        }
        color: scaleUpMouseArea.pressed ? "red" : "gray";
        MouseArea {
            id: scaleUpMouseArea;
            anchors {
                fill: parent;
            }
            onClicked: root.width = root.width*1.1,  root.height = root.height*1.1;
        }
    }
    Rectangle {
        id: windowScaleDownButton;
        width: 40;
        height: 15;
        anchors {
            top: windowScaleUpButton.top;
            left: windowScaleUpButton.right;
        }
        color: scaleDownMouseArea.pressed ? "darkred" : "darkgray";
        MouseArea {
            id: scaleDownMouseArea;
            anchors {
                fill: parent;
            }
            onClicked: root.width = root.width*(1.0/1.1),  root.height = root.height*(1.0/1.1);
        }
    }
}

