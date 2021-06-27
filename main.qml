import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12



ApplicationWindow {
    id: root
    width: 400
    height: 540
    visible: true
    title: qsTr("Login Page")
    Material.theme: Material.Dark
    Material.accent: Material.LightBlue

    Item{
        id: actions
        signal checkLogin(username:string, password:string)

        onCheckLogin: {
            states.username=username
            states.password=password
            loginWindow.visible = true;
            backend.checkLogin(username, password)
        }
    }

    Item{
        id: states
        property string username: states.username
        property string password: states.password
    }

    Login{
        id: loginWindow
        visible: false
        username: states.username
        password: states.password
    }

    ColumnLayout{
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top


        Rectangle{
            id: topBar
            height: 40
            width: 350
            color: Material.color(Material.Blue)
            radius: 10
            Layout.alignment: Qt.AlignCenter
            Layout.margins: 20

            ColumnLayout{
                anchors.fill: parent
                Text {
                    id: title
                    text: qsTr("Login Page")
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    color: "#ffffff"
                }
            }


        }


        Image {
            id: githubLogo
            source: "qrc:/images/github.png"
            Layout.alignment: Qt.AlignHCenter
            Layout.topMargin: 10

        }


        Rectangle{
            width: 300
            height: 120
            color: "transparent"
            Layout.alignment: Qt.AlignHCenter
            ColumnLayout{
                width:parent.width
                TextField{
                    id: userNameField

                    Layout.fillWidth: true
                    text: ""
                    selectByMouse: true
                    placeholderText: "Your name or email"
                    Layout.alignment: Qt.AlignHCenter
                    Layout.topMargin: 20
                }

                TextField{
                    id: passwordField
                    Layout.fillWidth: true
                    text: ""
                    selectByMouse: true
                    placeholderText: "Your name or email"
                    Layout.alignment: Qt.AlignHCenter
                    Layout.topMargin: 10
                }
            }
        }

        CheckBox {
            id: checkbox
            text:"   Save Password"
            Layout.alignment: Qt.AlignHCenter
        }

        Button{
            id: buttonLogin
            width: 300
            text: "Login"
            Layout.alignment: Qt.AlignHCenter
            onClicked: {
                actions.checkLogin(userNameField.text, passwordField.text)
            }
        }
    }
}
