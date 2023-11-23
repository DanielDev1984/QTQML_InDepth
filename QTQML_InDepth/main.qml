import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    id: root;
    visible: true
    width: 640
    height: 480
    title: "QTQML_InDepth"

    Item {
        width: parent.width;
        height: parent.height;
        Rectangle {
            id: rectangle;
            x: 100; y: 50;
            height: 100; width: getWidth();
            color: "red";
        }
    }
    function getWidth() {
        console.log("getWidth returned: ", 2*rectangle.height);
        return rectangle.height * 2;
    }
}

