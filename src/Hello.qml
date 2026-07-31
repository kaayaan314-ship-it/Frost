import QtQuick
import QtQuick.Window

Window {
    visible: true
    width: 1200
    height: 700
    title: "Frost"

    Rectangle {
        anchors.fill: parent
        color: "#0F172A"
    }

    Rectangle {
        id: panel

        width: 520
        height: 300
        radius: 28

        anchors.centerIn: parent

        color: "#33FFFFFF"

        border.color: "#55FFFFFF"
        border.width: 1

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 40

            text: Qt.formatTime(new Date(), "hh:mm")
            color: "white"
            font.pixelSize: 60
            font.bold: true
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 120

            text: Qt.formatDate(new Date(), "dddd, d MMMM")
            color: "#DDFFFFFF"
            font.pixelSize: 22
        }

        Rectangle {
            width: 320
            height: 52

            radius: 14

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 40

            color: "#22FFFFFF"

            Text {
                anchors.centerIn: parent
                text: "Enter Password"
                color: "#88FFFFFF"
                font.pixelSize: 20
            }
        }
    }
}