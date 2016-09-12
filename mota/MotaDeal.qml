import QtQuick 2.7
import QtQuick.Controls 2.0
import QtMultimedia 5.4

Item {
    x:100
    visible: false
    Rectangle{
        visible: false
        id: dealBg
        color: "steelblue"
        width: 400; height: 150
        x: 100; y: 100
        Label{
            x: 30; y:30
            id: dealInstruction
            width: 360; height: 70
            text: "$25, you can buy 3 gong, 5 fang or 800 blood"
            font.family:  "Arial"
            font.pixelSize: 18
        }
    }
    Repeater{
        id: buttons
        model: 4
        property var data0:['plus gong', 'plus fang', 'plus blood','quit']
        Button{
            enabled: false
            width: 80; height: 30
            x: 125+index*85; y: 175
            text: buttons.data0[index]
            onClicked: myClicked(index)
            function myClicked(index){
                console.log("clicked")
                if(index === 0 && actor.money >= 25){
                    if(level <=10 ){
                        actor.force += 3; actor.money -= 25
                    }
                    musicPlayer.switchTo('cj073.wav')
                }else if(index === 1 && actor.money >= 25){
                    if(level <= 10){
                        actor.defend += 5; actor.money -= 25
                    }
                    musicPlayer.switchTo('cj073.wav')
                }else if(index ===2 && actor.money >= 25){
                    if(level <= 10){
                    actor.blood += 800; actor.money -= 25
                    }
                    musicPlayer.switchTo('cj073.wav')
                }else if(index ===3){
                    deal.dealsDown()
                    musicPlayer.switchTo('cj078.wav')
                }
            }
        }
        function buttonsUp(){
            event.focus = false
            for(var i = 0; i < 4; i++){
                buttons.itemAt(i).enabled = true
                buttons.itemAt(i).focus = true
            }
        }
        function buttonsDown(){
            event.focus = true
            for(var i = 0; i < 4; i++){
                buttons.itemAt(i).enabled = false
                buttons.itemAt(i).focus = false
            }
        }
    }
    function dealsShow(){
        event.transing = false
        event.enabled = false
        deal.visible = true
        dealBg.visible = true
        buttons.buttonsUp()
    }
    function dealsDown(){
        event.transing = true
        event.enabled = true
        deal.visible = false
        dealBg.visible = false
        buttons.buttonsDown()
    }



}
