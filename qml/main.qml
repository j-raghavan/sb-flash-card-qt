import QtQuick 2.6
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0
import QtQuick.Window 2.1
import QtQuick.Controls.Material 2.0


ApplicationWindow {
	id:  applicationWindow1
	visible: true
	width: 1280
	height: 800
	title: qsTr("Samskrita Bharati")
	Material.theme: Material.Dark
	Material.accent: Material.DeepOrange

	StackLayout {
        id: swipeView
        anchors.left: sideBar.right
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        currentIndex: 0

		Welcome {
			id: welcomeScreen
		}

		Configuration {
			id: configScreen
		}

                FlashCard {
                        id: flashcardScreen
                }
	}

	SideBar {
	    id: sideBar
	}

	Component.onCompleted: {
	}

        Connections {
        }

}
