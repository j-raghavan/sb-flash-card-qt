import QtQuick 2.4
import QtQuick.Controls 2.0
import QtQuick.Window 2.1
import QtQuick.Layouts 1.0

PageBackground {
    title: "FlashCard"
    width: 500
    height: 500
    visible: true
    id: dialPad
   
    function addText(t) {
        var len = sipUriField.length;
        sipUriField.insert(len,t);
    }

    GridLayout {
        x: 148
        y: 135
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        columnSpacing: 20
        rowSpacing: 20
        rows: 5
        columns: 3

        Button {
            id: numpad1
            width: 40
            text: qsTr("1")
            onClicked: {
                addText("1");
            }
        }

        Button {
            id: numpad2
            width: 40
            text: qsTr("2")
            onClicked: {
                addText("2");
            }
        }

        Button {
            id: numpad3
            width: 40
            text: qsTr("3")
            onClicked: {
                addText("3");
            }
        }

        Button {
            id: numpad4
            width: 40
            text: qsTr("4")
            onClicked: {
                addText("4");
            }
        }

        Button {
            id: numpad5
            width: 40
            text: qsTr("5")
            onClicked: {
                addText("5");
            }
        }

        Button {
            id: numpad6
            width: 40
            text: qsTr("6")
            onClicked: {
                addText("6");
            }
        }

        Button {
            id: numpad7
            width: 40
            text: qsTr("7")
            onClicked: {
                addText("7");
            }
        }

        Button {
            id: numpad8
            width: 40
            text: qsTr("8")
            onClicked: {
                addText("8");
            }
        }

        Button {
            id: numpad9
            width: 40
            text: qsTr("9")
            onClicked: {
                addText("9");
            }
        }

        Button {
            id: numpad10
            width: 40
            text: qsTr("*")
            onClicked: {
                addText("*");
            }
        }

        Button {
            id: numpad11
            width: 40
            text: qsTr("0")
            onClicked: {
                addText("0");
            }
        }

        Button {
            id: numpad12
            width: 40
            text: qsTr("#")
            onClicked: {
                addText("#");
            }
        }

        Button {
            id: numpad13
            width: 40
            text: qsTr("@")
            onClicked: {
                addText("@");
            }
        }

        Button {
            id: numpad14
            width: 40
            text: qsTr(".")
            onClicked: {
                addText(".");
            }
        }

        Button {
            id: numpad15
            width: 40
            text: qsTr("/")
            onClicked: {
                addText("/");
            }
        }
    }

    TextField {
        id: sipUriField
        x: 80
        y: 42
        width: 289
        height: 40
        text: qsTr("")
        placeholderText: "SIP URI TO DIAL"
        font.capitalization: Font.MixedCase
        font.pointSize: 12
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Button {
        id: callButton
        x: 200
        y: 465
        text: qsTr("Call")
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter

        onClicked: {
            console.log("Making Call to: " + sipUriField.text);
            jcf.makeCall(sipUriField.text, true);
            swipeView.currentIndex = 4;
        }
    }

    Button {
        id: delButton
        x: 375
        y: 42
        width: 48
        height: 40
        text: qsTr("Del")
        anchors.left: sipUriField.right
        onClicked: {
            var len = sipUriField.length;
            if (len > 0) {
                sipUriField.remove(len-1, len);
            }
        }
    }
}
