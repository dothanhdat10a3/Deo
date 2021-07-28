import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        width: 400; height: 400
        color:"blue"
        Rectangle {
            id: square
            width:100
            height:100
            x: 8; y: 8
            color:"yellow"
            //anchors.centerIn: parent

        }
        focus: true
        Keys.onLeftPressed: square.x -= 20
        Keys.onRightPressed: square.x += 20
        Keys.onUpPressed: square.y -= 8
        Keys.onDownPressed: square.y += 8
        Keys.onPressed: {
            switch(event.key) {
                case Qt.Key_Plus:
                    square.scale += 0.2
                    break;
                case Qt.Key_Minus:
                    square.scale -= 0.2
                    break;
            }

        }
    }
}


