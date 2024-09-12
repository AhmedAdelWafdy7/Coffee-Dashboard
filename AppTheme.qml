/******************************************************************************
 * New AppTheme.qml
 ******************************************************************************/

pragma Singleton
import QtQuick 2.0
import QtQuick.Window 2.2

QtObject {
    id: root

    readonly property real refScreenWidth: 800
    readonly property real refScreenHeight: 480

    readonly property real screenWidth: Screen.width
    readonly property real screenHeight: Screen.height

    function hscale(size) {
        return Math.round(size * (screenWidth / refScreenWidth))
    }

    function vscale(size) {
        return Math.round(size * (screenHeight / refScreenHeight))
    }

    function tscale(size) {
        return Math.round((hscale(size) + vscale(size)) / 2)
    }

    readonly property real screenLeftMargin: hscale(20)
    readonly property real screenRightMargin: screenLeftMargin
    readonly property real statusBarHeight: vscale(50)
    readonly property real mainPageHeight: vscale(800)
    readonly property real appToolBarHeight: vscale(150)
    readonly property real dividerSize: 2

    readonly property int  iconButtonTextSize: tscale(24)
    readonly property real iconButtonHeight : vscale(80)
    readonly property real iconButtonWidth : hscale(80)
    readonly property real iconToolbarHeight : iconButtonHeight + 4
    readonly property real menuTextSize: tscale(18)

    readonly property color primaryColor: "#3498db" // Example blue color
    readonly property color secondaryColor: "#2ecc71" // Example green color
    readonly property color backgroundColor: "#ecf0f1" // Example light gray color
    readonly property color textColor: "#2c3e50" // Example dark gray color
    readonly property color borderColor: "#95a5a6" // Example gray color
}
