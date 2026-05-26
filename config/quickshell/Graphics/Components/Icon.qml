import QtQuick

import qs.Services

Text {
    id: root

    property alias icon: root.text
    readonly property var fontFamilies: [Styles.fonts.family.material]

    antialiasing: true
    color: "transparent"
    renderType: Text.NativeRendering

    lineHeightMode: Text.FixedHeight
    lineHeight: 14

    font {
        family: Styles.fonts.family.material
        hintingPreference: Font.PreferFullHinting
        variableAxes: ({
            "opsz": 20,
            "wght": 400
        })
        pixelSize: 24
    }
}