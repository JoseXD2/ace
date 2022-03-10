function onCreate()

    makeLuaSprite('ectosp', 'songlocks/ectospasm', 700, 1150)
    scaleObject('ectosp', 2.5, 2.5)
end

function onStartCountdown()

    addLuaSprite('ectosp', true)
    runTimer('hide', 1.5)
    return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)

    if tag == 'hide' then
        doTweenAlpha('hidec', 'ectosp', 0, 0.5, 'quintOut')
    end
end