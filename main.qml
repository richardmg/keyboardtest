import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Window 2.0

ApplicationWindow {
    id: win
    title: qsTr("Hello World")
    width: 640
    height: 480

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }

    Row {
        anchors.fill: parent
        ListView {
            id: listview
            width: parent.width / 2
            height: parent.height
            model: 100
            delegate: TextField {
                text: "TextField1 #" + index
                width: parent.width
            }
        }
        Flickable {
            width: parent.width / 2
            height: parent.height
            contentWidth: parent.width
            contentHeight: parent.height * 3

            Column {
                y: 800
                width: parent.width
                height: parent.height
                TextEdit {
                    text: "no hints"
                    height: 100
                    width: parent.width
                    Keys.onPressed: print("key pressed:", event.key)
                    Keys.onReturnPressed: {
                        Qt.inputMethod.hide()
                        Qt.inputMethod.hide()
                    }
                }
                TextArea {
                    text: "no hints"
                    height: 100
                    width: parent.width
                    Keys.onPressed: print("key pressed:", event.key)
                    Keys.onReturnPressed: print("return pressed")
                }
                TextArea {
                    text: "url"
                    height: 100
                    width: 200
                    inputMethodHints: Qt.ImhUrlCharactersOnly
                }
                TextArea {
                    text: "email"
                    height: 100
                    width: 200
                    inputMethodHints: Qt.ImhEmailCharactersOnly
                }
                TextArea {
                    text: "digits"
                    height: 100
                    width: 200
                    inputMethodHints: Qt.ImhDigitsOnly
                }
                TextArea {
                    text: "numbers"
                    height: 100
                    width: 200
                    inputMethodHints: Qt.ImhFormattedNumbersOnly
                }
                TextArea {
                    text: "phone"
                    height: 100
                    width: 200
                    inputMethodHints: Qt.ImhDialableCharactersOnly
                }
                TextArea {
                    text: "caps-lock"
                    height: 100
                    width: 200
                    inputMethodHints: Qt.ImhUppercaseOnly
                }
                TextArea {
                    text: "no auto caps"
                    height: 100
                    width: 200
                    inputMethodHints: Qt.ImhNoAutoUppercase
                }
                TextArea {
                    text: "hidden text"
                    height: 100
                    width: 200
                    inputMethodHints: Qt.ImhHiddenText
                }
                TextArea {
                    text: "no predicitve text"
                    height: 100
                    width: 200
                    inputMethodHints: Qt.ImhNoPredictiveText
                }
            }
        }

        ListView {
            id: listview2
            width: parent.width / 2
            height: parent.height
            model: 100
            delegate: TextArea {
                text: "TextField2 #" + index
                width: parent.width
                Keys.onReturnPressed: print("return pressed")
                Keys.onPressed: print("key pressed:", event.key)
            }
        }
    }
}
