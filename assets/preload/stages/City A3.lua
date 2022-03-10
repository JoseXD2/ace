function onCreate()
    
    -- stage.
    makeLuaSprite('coldntA3', 'week-ace/Background3', -600, -300)
	addLuaSprite('coldntA3', false)

    if not lowQuality then
        makeAnimatedLuaSprite('peopleA3', 'week-ace/Back Characters', -10, 300)
        addAnimationByPrefix('peopleA3', 'standing', 'bop', 24, true)
        objectPlayAnimation('peopleA3', 'standing', true)
        addLuaSprite('peopleA3', false)
    end

    makeLuaSprite('snowA3', 'week-ace/P3Snow1', -600, -300)
	addLuaSprite('snowA3', false)

    if not lowQuality then
        makeAnimatedLuaSprite('people1A3', 'week-ace/Front Characters', -570, 500)
        addAnimationByPrefix('people1A3', 'bopp', 'bop', 24, true)
        objectPlayAnimation('people1A3', 'bopp', true)
        addLuaSprite('people1A3', false)
    end

    makeLuaSprite('snow3A4', 'week-ace/P3Snow3', -600, -300)
	addLuaSprite('snow3A4', true)

    makeLuaSprite('snow2A4', 'week-ace/P3Snow2', -600, -300)
	addLuaSprite('snow2A4', false)
    
    precacheImage('week-ace/Overlay')
    makeLuaSprite('Overlay', 'week-ace/Overlay', -600, -300)

    -- flash
    makeLuaSprite('flash', '', 0, 0)
	makeGraphic('flash', 1280, 720, 'FFFFFF')
	setObjectCamera('flash', 'hud')
	setProperty('flash.alpha', 0)
	addLuaSprite('flash', false)
end

function onStepHit()

    if curStep == 256 then
        setProperty('flash.alpha', 1)
        doTweenAlpha('white', 'flash', 0, 1.5, 'quintOut')
        addLuaSprite('Overlay', true)
    end
end