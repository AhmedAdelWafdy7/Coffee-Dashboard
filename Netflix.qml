import QtQuick 2.12
import QtQuick.Controls 2.5
import QtWebEngine 1.8
import QtQuick.Window 2.2

Page {
    width: screen.width
    height: screen.height

    title: qsTr("Netflix")

    WebEngineView {
        url: "https://www.netflix.com"
        anchors.fill: parent

        onLoadingChanged: function(loadRequest) {
            if (loadRequest.status === WebEngineView.LoadStartedStatus) {
                loadingIndicator.visible = true
            } else if (loadRequest.status === WebEngineView.LoadSucceededStatus || loadRequest.status === WebEngineView.LoadFailedStatus) {
                loadingIndicator.visible = false
            }
        }

        onContextMenuRequested: {
            request.accepted = true
        }
    }

    BusyIndicator {
        id: loadingIndicator
        anchors.centerIn: parent
        running: true
        visible: false
    }
}
