import Quickshell.Io

JsonObject {
    id: root

    property Fonts fonts: Fonts {}
    property General general: General {}

    component FontFamily: JsonObject {
        property string material: "Material Symbols Rounded"
    }

    component Fonts: JsonObject {
        property FontFamily family: FontFamily {}
    }

    component Spacing: JsonObject {
        property int sm: 4
        property int md: 8
        property int lg: 16
    }

    component Margin: JsonObject {
        property int sm: 5
        property int md: 10
        property int lg: 20
    }

    component Padding: JsonObject {
        property int sm: 4
        property int md: 8
        property int lg: 16
    }

    component Rounding: JsonObject {
        property int sm: 4
        property int md: 8
        property int lg: 16
    }

    component General: JsonObject {
        property Spacing spacing: Spacing {}
        property Margin margin: Margin {}
        property Padding padding: Padding {}
        property Rounding rounding: Rounding {}
    }
}