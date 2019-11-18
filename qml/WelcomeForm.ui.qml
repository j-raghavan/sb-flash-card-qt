import QtQuick 2.4
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Window 2.0
import QtWebEngine 1.4


PageBackground {
    id: welcomePage
    width: parent.width
    height: parent.height

    Image {
        id: sbLogo
        width: parent.width
        anchors.top: parent.top
        anchors.topMargin: 20
        fillMode: Image.PreserveAspectFit
        source: "qrc:/images/san.png"
    }

    /*
    WebEngineView {
        anchors.fill: parent
        url: "https://www.samskritabharatiusa.org/"
    }
    */

    CustomLabel {
        id: welcomeLabel
        text: qsTr("Hi!")
        font.pixelSize: 72
        color: "ivory"
        anchors.centerIn: parent
    }

    Button {
        id: makeCall
        text: qsTr(" Call ")
        anchors.top: welcomeLabel.bottom
        anchors.topMargin: 20
        x: (welcomePage.width) / 2 - 40
        y: (welcomePage.height) / 2 - 40

        onClicked: {
            swipeView.currentIndex = 2
        }
    }

    Component.onCompleted: {

    }
}
