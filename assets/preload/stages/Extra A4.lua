function onCreate()
    
    -- stage.
    makeLuaSprite('coldntA4', 'week-ace/Background3', -600, -300)
	addLuaSprite('coldntA4', false)

    if not lowQuality then
        makeAnimatedLuaSprite('peopleA4', 'week-ace/Back Characters', -19, 300)
        addAnimationByPrefix('peopleA4', 'standing', 'bop', 24, true)
        objectPlayAnimation('peopleA4', 'standing', true)
        addLuaSprite('peopleA4', false)
    end

    makeLuaSprite('snowA4', 'week-ace/P4Snow1', -600, -300)
	addLuaSprite('snowA4', false)

    if not lowQuality then
        makeAnimatedLuaSprite('people1A4', 'week-ace/Front Characters', -570, 500)
        addAnimationByPrefix('people1A4', 'bopp', 'bop', 24, true)
        objectPlayAnimation('people1A4', 'bopp', true)
        addLuaSprite('people1A4', false)
    end

    makeLuaSprite('snow3A4', 'week-ace/P3Snow3', -600, -300)
	addLuaSprite('snow3A4', true)

    makeLuaSprite('snow2A4', 'week-ace/P3Snow2', -600, -300)
	addLuaSprite('snow2A4', false)

    precacheImage('week-ace/Overlay')
    makeLuaSprite('Overlay', 'week-ace/Overlay', -600, -300)

    -- yes.
    makeLuaSprite('darkd', '', 0, 0)
	makeGraphic('darkd', 1280, 720, '000000')
    setObjectCamera('darkd', 'hud')
    setProperty('darkd.alpha', 0)
    addLuaSprite('darkd', false)

    -- flash
    makeLuaSprite('flash', '', 0, 0)
	makeGraphic('flash', 1280, 720, 'FFFFFF')
	setObjectCamera('flash', 'other')
	setProperty('flash.alpha', 0)
	addLuaSprite('flash', false)

    -- enter.
    makeLuaSprite('frostb', 'songlocks/frostbite', 350, 500)
    scaleObject('frostb', 2.5, 2.5)
end

function onStartCountdown()

    addLuaSprite('frostb', true)
    runTimer('hide', 1.5)
    return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)

    if tag == 'hide' then
        doTweenAlpha('hide2A4', 'frostb', 0, 0.5, 'quintOut')
    end
end

function onStepHit()

    if curStep == 128 then
        setProperty('defaultCamZoom', 0.6)
    end
    
    if curStep == 512 then
        doTweenAlpha('white', 'flash', 0, 1.5, 'quintOut')
        setProperty('defaultCamZoom', 0.45)
        setProperty('flash.alpha', 1)
        addLuaSprite('Overlay', true)
    end

    if curStep == 1792 then
        setProperty('darkd.alpha', 0.6)
        doTweenAlpha('white', 'flash', 0, 1.5, 'quintOut')
        setProperty('flash.alpha', 1)
        setProperty('defaultCamZoom', 0.8)
    end

    if curStep == 2048 then
        removeLuaSprite('darkd', true)
        doTweenAlpha('white', 'flash', 0, 1.5, 'quintOut')
        setProperty('flash.alpha', 1)
        setProperty('defaultCamZoom', 0.45)
    end
end