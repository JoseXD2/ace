function onCreate()

    makeLuaSprite('Overlay', 'week-ace/Overlay', -600, -300)
    addLuaSprite('Overlay', false)
    setObjectCamera('Overlay', 'hud')

    makeLuaSprite('coldh', 'songlocks/cold-hearted', 0, 500)
    scaleObject('coldh', 2.5, 2.5)
end

function onCreatePost()

    setProperty('gf.alpha', 0)
end

function onStartCountdown()

    addLuaSprite('coldh', true)
    runTimer('hide', 1.5)
    return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)

    if tag == 'hide' then
        doTweenAlpha('hideh', 'coldh', 0, 0.5, 'quintOut')
    end
end