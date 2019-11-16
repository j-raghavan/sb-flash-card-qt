import QtQuick 2.4
import QtQuick.Controls 2.0
import QtQuick.Window 2.1
import QtQuick.Layouts 1.0

PageBackground {
    width: 300
    height: Screen.height
    property alias button1: button1
    title: "Samskrita Bharati"
    visible: true
    id: sb


    CustomLabel {
        id: customLabel1
        x: 31
        y: 69
        text: Qt.formatDateTime(new Date(), "dd MMM yy : ddd : hh:mm a")
        font.pixelSize: 18
    }

    Timer {
        id: timer
        interval:  60000
        repeat: true
        running: true

        onTriggered:
        {
            customLabel1.text = Qt.formatDateTime(new Date(), "dd MMM yy : ddd : hh:mm a")
        }
    }

    Image {
        id: logo
        width: 250
        height: 250
        x: 30
        y: 140
        source: "qrc:/images/namaste.jpeg"
    }


    Button {
        id: button1
        x: 31
        y: 728
        width: 212
        text: qsTr("Configure")
        anchors.leftMargin: 15
        anchors.bottomMargin: 100
        anchors.rightMargin: 15

    }
}
