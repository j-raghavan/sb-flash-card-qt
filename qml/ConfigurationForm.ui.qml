import QtQuick 2.4
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

PageBackground {
    title: "Configuration"

    signal configComplete(string cucm, string user, string passwd, string tftp)

    GridLayout {
        x: 148
        y: 158
        anchors.horizontalCenter: parent.horizontalCenter
        columnSpacing: 20
        rowSpacing: 20
        rows: 1
        columns: 2

        GroupBox {
            id: groupBox1
            title: qsTr("CUCM Configuration")
            font.pixelSize: 22
            
            GridLayout {
                rows: 4
                columns: 2


                CustomLabel {
                    id: cucmconfigLabel
                    text: qsTr("CUCM ")
                }

                TextField {
                    id: cucmIP
                    placeholderText: qsTr("CUCM IP / FQDN")
                    font.pixelSize: 16 
                }
                CustomLabel {
                    id: cucmuserLabel
                    text: qsTr("Username ")
                }

                TextField {
                    id: cucmUserName
                    placeholderText: qsTr("CUCM User Name")
                    font.pixelSize: 16 
                } 
                
                CustomLabel {
                    id: cucmpassLabel
                    text: qsTr("Password ")
                }

                TextField {
                    id: cucmPass
                    placeholderText: qsTr("CUCM User Password")
                    font.pixelSize: 16 
                }

                CustomLabel {
                    id: cucmtftpLabel
                    text: qsTr("TFTP ")
                }

                TextField {
                    id: cucmTftp
                    placeholderText: qsTr("TFTP Address")
                    font.pixelSize: 16 
                }
            }
        }

        GroupBox {
            id: groupBox2
            title: qsTr("Webex Teams Configuration")
            font.pixelSize: 22

            GridLayout {
                rows: 3
                columns: 2

                CustomLabel {
                    id: teamsconfigLabel
                    text: qsTr("Webex Host ")
                }

                TextField {
                    id: teamsIP
                    placeholderText: qsTr("Webex Teams Host IP/Name")
                }
                CustomLabel {
                    id: teamsuserLabel
                    text: qsTr("UserName ")
                }

                TextField {
                    id: teamsUserName
                    placeholderText: qsTr("Teams User Name")
                } 
                

                CustomLabel {
                    id: customLabel2
                    text: qsTr("")
                }

                CustomLabel {
                    id: customLabel3
                    text: qsTr("")
                }

            }
            
        }

    }

    Button {
        id: configButton
        //x: 31
        y: 728
        width: 212
        text: qsTr("Apply")
        anchors.right: parent.right
        anchors.rightMargin: 50


        onClicked: {
            swipeView.currentIndex = 0
            configComplete(cucmIP.text, cucmUserName.text, cucmPass.text, cucmTftp.text)
        }
    }

    function loadValues() {
        if (applicationWindow1.cucm != "") cucmIP.text = applicationWindow1.cucm;
        if (applicationWindow1.uname != "") cucmUserName.text = applicationWindow1.uname;
        if (applicationWindow1.passwd != "") cucmPass.text = applicationWindow1.passwd;
        if (applicationWindow1.cucm != "") cucmTftp.text = applicationWindow1.tftp;
           
    }
}
