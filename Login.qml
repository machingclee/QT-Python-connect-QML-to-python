import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12


Dialog {
    width: 350
    height: 400
    anchors.centerIn: parent
    visible: true
    title: qsTr("Login Page")
    Material.theme: Material.Dark
    Material.accent: Material.LightBlue

    closePolicy: Dialog.CloseOnEscape

    property string username: ""
    property string password:""

    Item{
        width:parent.width
        ColumnLayout{
            anchors.fill: parent
            Text {
                id: usernameField
                text: "Username: " + username
                color: "white"
                Layout.topMargin: 10
                Layout.alignment:  Qt.AlignHCenter
              }

            Text {
                id: passwordField
                text: "Password: " + password
                color: "white"
                Layout.topMargin: 10
                Layout.alignment:  Qt.AlignHCenter
            }
        }
    }
}
