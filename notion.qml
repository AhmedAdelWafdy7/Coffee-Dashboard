import QtQuick 2.12
import QtQuick.Controls 2.5
import QtWebEngine 1.8
import QtQuick.Layouts 1.11

Page {
    width: screen.width
    height: screen.height

    title: qsTr("Notion")

    Rectangle {
        anchors.fill: parent
        color: "white"

        ColumnLayout {
            anchors.fill: parent

            Label {
                text: qsTr("Notion Workspace")
                font.pixelSize: 24
                color: "black"
                Layout.alignment: Qt.AlignHCenter
                Layout.margins: 10
            }

            WebEngineView {
                id: notionWebView
                anchors.fill: parent
                url: "https://www.notion.so"
                Layout.fillWidth: true
                Layout.fillHeight: true

                onLoadingChanged: function(loadRequest) {
                    if (loadRequest.status === WebEngineView.LoadStartedStatus) {
                        loadingIndicator.visible = true
                    } else if (loadRequest.status === WebEngineView.LoadSucceededStatus || loadRequest.status === WebEngineView.LoadFailedStatus) {
                        loadingIndicator.visible = false
                    }
                }
            }

            BusyIndicator {
                id: loadingIndicator
                anchors.centerIn: parent
                running: true
                visible: false
            }
        }
    }
}
