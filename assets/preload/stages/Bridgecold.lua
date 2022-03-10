function onCreate()

    -- stage.
    makeLuaSprite('normalcold', 'bridge/cold/snowbackground1', -600, -300)
	addLuaSprite('normalcold', false)

    makeLuaSprite('bridgecold', 'bridge/cold/snowbridge1', -600, -300)
	addLuaSprite('bridgecold', false)

    if not lowQuality then
        makeAnimatedLuaSprite('aceCold', 'bridge/AceCrowd', 40, 823)
        addAnimationByPrefix('aceCold', 'ows', 'jam', 24, true)
        objectPlayAnimation('aceCold', 'ows', true)
        addLuaSprite('aceCold', false)
    end

    makeLuaSprite('forebcold', 'bridge/cold/snowforeground1', -600, -300)
	addLuaSprite('forebcold', false)

    -- yes.
    makeLuaSprite('darkd', '', 0, 0)
	makeGraphic('darkd', 1280, 720, '000000')
    setObjectCamera('darkd', 'hud')
    setProperty('darkd.alpha', 0)
    addLuaSprite('darkd', false)
end

function onStepHit()

    if curStep == 576 then
        setProperty('defaultCamZoom', 1)
        doTweenAlpha('darkk', 'darkd', 0.4, 2, 'quintOut')
    end

    if curStep == 608 then
        setProperty('defaultCamZoom', 0.45)
        doTweenAlpha('darkk', 'darkd', 0, 2, 'quintOut')
    end
end