import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    width: 1900
    height: 1000
    color: "white"

    Column {
        anchors.centerIn: parent
        spacing: 20
        width: parent.width * 0.8

        Text {
            text: "Coffee Dashboard"
            font.pointSize: 30
            font.bold: true
            color: "black"
            horizontalAlignment: Text.AlignHCenter
            width: parent.width
        }

        Text {
            text: "Version 1.0.0"
            font.pointSize: 24
            color: "gray"
            horizontalAlignment: Text.AlignHCenter
            width: parent.width
        }

        Text {
            text: "Coffee Dashboard is an application designed to help coffee enthusiasts manage their coffee inventory, track brewing methods, and explore new coffee recipes. It provides a user-friendly interface to keep all your coffee-related information in one place."
            font.pointSize: 20
            color: "black"
            wrapMode: Text.WordWrap
            horizontalAlignment: Text.AlignHCenter
            width: parent.width
        }

        Text {
            text: "Contact Information"
            font.pointSize: 28
            font.bold: true
            color: "black"
            horizontalAlignment: Text.AlignHCenter
            width: parent.width
        }

        Row {
            spacing: 20
            anchors.horizontalCenter: parent.horizontalCenter

            Image {
                source: "images/linkedin-svgrepo-com.svg"
                width: 48
                height: 48
                MouseArea {
                    anchors.fill: parent
                    onClicked: Qt.openUrlExternally("https://www.linkedin.com/in/ahmed-wafdy-094567242/")
                }
            }

            Image {
                source: "images/2021_Facebook_icon.svg"
                width: 48
                height: 48
                MouseArea {
                    anchors.fill: parent
                    onClicked: Qt.openUrlExternally("https://www.facebook.com/ahmedadel.wafdy.9")
                }
            }

            Image {
                source: "images/twitter-svgrepo-com.svg"
                width: 48
                height: 48
                MouseArea {
                    anchors.fill: parent
                    onClicked: Qt.openUrlExternally("https://x.com/AhmedAdelWafdy7")
                }
            }

            Image {
                source: "images/github-svgrepo-com.svg"
                width: 48
                height: 48
                MouseArea {
                    anchors.fill: parent
                    onClicked: Qt.openUrlExternally("https://github.com/AhmedAdelWafdy7")
                }
            }
        }
    }
}
