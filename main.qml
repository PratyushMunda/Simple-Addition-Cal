import QtQuick 2.15
import QtQuick.Controls 2.15

// Define application window
ApplicationWindow {
    visible: true
    width: 300
    height: 400
    title: "Simple Calculator"

    Column {
        spacing: 10
        anchors.centerIn: parent

        // Number Buttons
        Row {
            spacing: 5
            Button { text: "1"; onClicked: inputField.text += "1" }
            Button { text: "2"; onClicked: inputField.text += "2" }
            Button { text: "3"; onClicked: inputField.text += "3" }
        }
        Row {
            spacing: 5
            Button { text: "4"; onClicked: inputField.text += "4" }
            Button { text: "5"; onClicked: inputField.text += "5" }
            Button { text: "6"; onClicked: inputField.text += "6" }
        }
        Row {
            spacing: 5
            Button { text: "7"; onClicked: inputField.text += "7" }
            Button { text: "8"; onClicked: inputField.text += "8" }
            Button { text: "9"; onClicked: inputField.text += "9" }
        }

        // contains "0","+",""=" button
        Row {
            spacing: 5
            Button { text: "0"; onClicked: inputField.text += "0" }
            Button { text: "+"; onClicked: inputField.text += " + " }
            Button {
                text: "="
                onClicked: {
                    // Split the input text on " + " and perform addition if valid
                    var parts = inputField.text.split(" + ");
                    if (parts.length === 2)
                        calculator.addNumbers(parseInt(parts[0]), parseInt(parts[1]));
                }
            }
        }

        //displaying user input
        TextField {
            id: inputField
            width: parent.width
            height: 40
            readOnly: false
        }

        //displaying the result
        Label {
            text: "Result: " + calculator.result
            font.pixelSize: 20
        }
    }
}
