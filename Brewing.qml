
import QtQuick


BrewingForm {
    id: root
    function start() {
        animation.start()
    }

    signal finished()

    SequentialAnimation {
        id: animation
        PauseAnimation {
            duration: 1500
        }
        PropertyAction {
            target: root
            property: "state"
            value: "coffee"
        }
        PauseAnimation {
            duration: 1500
        }
        PropertyAction {
            target: root
            property: "state"
            value: "milk"
        }
        PauseAnimation {
            duration: 1500
        }
        ScriptAction {
            script: root.finished()
        }
    }

    Behavior on cup.coffeeAmount {
        PropertyAnimation {

        }
    }

    Behavior on cup.milkAmount {
        PropertyAnimation {
        }
    }
}

