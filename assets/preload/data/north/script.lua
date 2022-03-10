function onCreate()

    makeLuaSprite('norths', 'songlocks/north', 1450, 1200)
    scaleObject('norths', 2.5, 2.5)
end

function onStartCountdown()

    addLuaSprite('norths', true)
    runTimer('hide', 1.5)
    return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)

    if tag == 'hide' then
        doTweenAlpha('hiden', 'norths', 0, 0.5, 'quintOut')
    end
end