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
    Item {
    Rectangle {
        id: leftTopImageContainer;
        anchors {
            left: root.left;
            top: root.top;
            leftMargin: 20;
            topMargin: 20;
        }
        color: activeFocus? "red" : root.color;
        width: 80;
        height: 80;
        Image {
            anchors {
                fill: parent;
            }
            source: rootpath + "/tintin.png";
            fillMode: Image.PreserveAspectFit
            visible: parent.activeFocus ? true : false;
        }
        // use the KeyNavigation attached properties for conveniently setting the focus to a dedicated item
        //KeyNavigation.right: rightTopImageContainer;
        // use the Keys-attached signal handlers to e.g. trigger a dedicated function or set multiple object-properties (as done here)
        // Key.onSignal: *Container.focus = true is equivalent to KeyNavigation.key: *Container
        Keys.onRightPressed: interactionText.text = "pressed right-arrow", rightTopImageContainer.focus = true;
        Keys.onDownPressed: interactionText.text = "pressed down-arrow", leftBottomImageContainer.focus = true;
        focus: true;
    }
    Rectangle {
        id: rightTopImageContainer;
        anchors {
            left: leftTopImageContainer.right;
            top: root.top;
            leftMargin: 20;
            topMargin: 20;
        }
        color: activeFocus? "red" : root.color;
        width: 80;
        height: 80;
        Image {
            anchors {
                fill: parent;
            }
            source: rootpath + "/tintin.png";
            fillMode: Image.PreserveAspectFit
            visible: parent.activeFocus ? true : false;
        }
        Keys.onLeftPressed: interactionText.text = "pressed left-arrow", leftTopImageContainer.focus = true;
        Keys.onDownPressed: interactionText.text = "pressed down-arrow", rightBottomImageContainer.focus = true;
        
    }
    Rectangle {
        id: leftBottomImageContainer;
        anchors {
            left: root.left;
            top: leftTopImageContainer.bottom;
            leftMargin: 20;
            topMargin: 20;
        }
        color: activeFocus? "red" : root.color;
        width: 80;
        height: 80;
        Image {
            anchors {
                fill: parent;
            }
            source: rootpath + "/tintin.png";
            fillMode: Image.PreserveAspectFit
            visible: parent.activeFocus ? true : false;
        }
        Keys.onRightPressed: interactionText.text = "pressed right-arrow", rightBottomImageContainer.focus = true;
        Keys.onUpPressed: interactionText.text = "pressed up-arrow", leftTopImageContainer.focus = true;
        
    }
    Rectangle {
        id: rightBottomImageContainer;
        anchors {
            left: leftBottomImageContainer.right;
            top: rightTopImageContainer.bottom;
            leftMargin: 20;
            topMargin: 20;
        }
        color: activeFocus? "red" : root.color;
        width: 80;
        height: 80;
        Image {
            anchors {
                fill: parent;
            }
            source: rootpath + "/tintin.png";
            fillMode: Image.PreserveAspectFit
            visible: parent.activeFocus ? true : false;
        }
        Keys.onLeftPressed: interactionText.text = "pressed left-arrow", leftBottomImageContainer.focus = true;
        Keys.onUpPressed: interactionText.text = "pressed up-arrow", rightTopImageContainer.focus = true;
        
    }
        Rectangle {
            x: root.height * 0.5;
            y: root.width * 0.5;
            width:interactionText.width;
            height:20;
            color: "white"
            Text {
            id: interactionText;
            color: "red";
        }
        }
    }
}

