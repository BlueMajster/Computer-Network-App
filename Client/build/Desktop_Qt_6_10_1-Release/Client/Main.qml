import QtQuick
import QtMultimedia

Window {
    id: root
    width: 1280
    height: 720
    visible: true
    color: "black"
    title: qsTr("Hello World")

    Video{
        id: backgroundVideo
        anchors.fill: parent
        source: "file:resources/powitajmy.mp4"
        fillMode: VideoOutput.PreserveAspectCrop
        autoPlay: true
        loops: MediaPlayer.Infinite
        volume: 1
        onErrorChanged: console.log("Błąd tła:", errorString)
    }

    Rectangle{
        id: players
        width: root.width / 4 - 70
        height: root.height / 2 - 40
        color: "gray"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.margins: 20
        border.color: "#40FFFFFF"
        radius: 20
        opacity: 0.6

        gradient: Gradient{
            orientation: Gradient.Vertical
            GradientStop { position: 0.0; color: "#807b46" }
            GradientStop { position: 1.0; color: "#e6d739" }
        }
    }
    Rectangle{
        id: radyjko
        width: root.width / 4 - 70
        height: root.height / 2 - 40
        color: "#808aff"
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.leftMargin: 20
        anchors.bottomMargin: 20
        border.color: "#40FFFFFF"
        radius: 20
        opacity: 0.6

        gradient: Gradient{
            orientation: Gradient.Vertical
            GradientStop { position: 0.0; color: "#0d21ff" }
            GradientStop { position: 1.0; color: "#737eff" }
        }
    }
    Rectangle{
        id: pisadlo
        color: "white"
        border.color: "#40FFFFFF"
        radius: 12
        opacity: 0.6

        anchors{
            left: players.right
            right: parent.right
            top: parent.top
            bottom: parent.bottom

            margins: 20
            topMargin: 140
            bottomMargin: 100
            rightMargin: 340
        }
    }
    Rectangle{
        id: chat
        border.color: "#40FFFFFF"
        border.width: 1
        radius: 20
        opacity: 0.6

        gradient: Gradient{
            orientation: Gradient.Vertical
            GradientStop { position: 0.0; color: "#5e47cc" }
            GradientStop { position: 1.0; color: "#1e00b3" }
        }

        anchors{
            left: pisadlo.right
            right: parent.right
            top: parent.top
            bottom: parent.bottom

            margins: 20
            leftMargin: 30
        }
    }
    Rectangle{
        id: title
        border.color: "#40FFFFFF"
        radius: 12
        opacity: 0.6

        anchors{
            left: players.right
            right: czas.left
            top: parent.top
            bottom: pisadlo.top

            margins: 20
            rightMargin: 30
        }
        gradient: Gradient{
            orientation: Gradient.Horizontal
            GradientStop { position: 0.0; color: "#8ccc33" }
            GradientStop { position: 1.0; color: "#cc5214" }
        }
    }
    Rectangle{
        id: czas
        width: 160
        border.color: "#40FFFFFF"
        radius: 12
        opacity: 0.6

        anchors{
            right: chat.left
            top: parent.top
            bottom: pisadlo.top

            margins: 20
            rightMargin: 30
        }
        gradient: Gradient{
            orientation: Gradient.Horizontal
            GradientStop { position: 0.0; color: "#b3004a" }
            GradientStop { position: 1.0; color: "#5e47cc" }
        }
    }
    Rectangle{
        id: paleta
        color: "#4b5173"
        border.color: "yellow"
        radius: 12
        opacity: 0.6

        anchors{
            right: chat.left
            left: radyjko.right
            top: pisadlo.bottom
            bottom: parent.bottom

            margins: 20
            rightMargin: 30
        }
    }


}
