pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Services.UPower

Singleton {
    id: root

    readonly property bool charging: UPower.displayDevice.state == UPowerDeviceState.Charging
    readonly property real percentage: UPower.displayDevice.percentage * 100

    readonly property QtObject icons: QtObject {
        readonly property string empty: "battery_android_0"
        readonly property string critical: "battery_android_frame_1"
        readonly property string low: "battery_android_frame_2"
        readonly property string below_half: "battery_android_frame_3"
        readonly property string over_half: "battery_android_frame_4"
        readonly property string high: "battery_android_frame_5"
        readonly property string almost_there: "battery_android_frame_6"
        readonly property string full: "battery_android_frame_full"
        readonly property string charge: "battery_android_frame_bolt"
    }

    function getIcon() {
        if (charging) return icons.charge
        if (percentage > 90) return icons.full
        if (percentage > 68) return icons.almost_there
        if (percentage > 66) return icons.high
        if (percentage > 54) return icons.over_half
        if (percentage > 42) return icons.below_half
        if (percentage > 20) return icons.low
        if (percentage > 08) return icons.critical
        return icons.empty
    }
}