import QtQuick 2.0

Canvas {
    id: canvas
    width: 256
    height: 256
 
    /*
    property var savedCtx: ""

    Timer {
        id: timer
    }

    function someCode() {
        console.log("In SomeCode Function " + savedCtx )      
    }

    function firstLobe(width, height) {
        savedCtx.beginPath()
        savedCtx.arc((width * 0.3),
                (height * 0.5) - 30,
                width/5,
                -2.4,
                1.7,
                false)
        savedCtx.stroke()
    }

    function secondLobe(width, height) {
        savedCtx.beginPath()

        savedCtx.arc((width * 0.3),
                (height * 0.5) + 70,
                width/5,
                -1.7,
                2.4,
                false)
        savedCtx.stroke()
    }

    function firstStroke(width, height) {
        savedCtx.beginPath()

        savedCtx.moveTo((width * 0.5) - 55,(height * 0.55) + 8)
        savedCtx.lineTo((width * 0.78), (height * 0.55) + 8) 

        savedCtx.stroke()
    }

    function secondStroke(width, height) {
        savedCtx.beginPath()

        savedCtx.moveTo((width * 0.3) + 125, (height * 0.15) + 10)
        savedCtx.lineTo((height * 0.8), (height * 0.8) + 30)

        savedCtx.stroke()
    }

    function thirdStroke(width, height) {
        savedCtx.beginPath()

        savedCtx.moveTo((width * 0.10) + 145, (height * 0.18))
        savedCtx.lineTo((width * 0.9), (height * 0.18))

        savedCtx.stroke()
    }

    function delay(delayTime, cb) {
        timer.interval = delayTime;
        timer.repeat = false;
        timer.triggered.connect(cb)
        timer.start()
    }

    */
    onPaint: {
        var ctx = getContext('2d')
        ctx.fillStyle = 'ivory'
        ctx.fillRect(0, 0, width, height)

        var left = width * 0.25
        var right = width * 0.75
        var vCenter = height * 0.5
        var vDelta = height / 6

        ctx.lineCap = "square"
        ctx.lineWidth = vDelta * 0.4
        ctx.strokeStyle = 'black'


        /* firstLobe(width, height)  */
        ctx.beginPath()
        ctx.arc((width * 0.3),
                (height * 0.5) - 30,
                width/5,
                -2.4,
                1.7,
                false)
        /* secondLobe(width, height) */
        ctx.arc((width * 0.3),
                (height * 0.5) + 70,
                width/5,
                -1.7,
                2.4,
                false)
  
        /* firstStroke(width, height) */
        ctx.moveTo((width * 0.5) - 55,(height * 0.55) + 8)
        ctx.lineTo((width * 0.78), (height * 0.55) + 8) 

        /* secondStroke(width, height) */
        ctx.moveTo((width * 0.3) + 125, (height * 0.15) + 10)
        ctx.lineTo((height * 0.8), (height * 0.8) + 30)

        /* thirdStroke(width, height) */
        ctx.moveTo((width * 0.10) + 145, (height * 0.18))
        ctx.lineTo((width * 0.9), (height * 0.18))
 
        ctx.stroke()
    }

    /*
    Component.onCompleted: {
        delay(3000, function() {
             print("Calling First Lobe")
             firstLobe(width, height);
            })
        delay(3000, function() {
             print("Calling Second Lobe")
             secondLobe(width, height);
            })
        delay(3000, function() {
             print("Calling First Stroke")
             firstStroke(width, height);
            })
        delay(3000, function() {
             print("Calling Second Stroke")
             secondStroke(width, height);
            })
        delay(3000, function() {
             print("Calling Third Stroke")
             thirdStroke(width, height);
            })
    }
    */
}
