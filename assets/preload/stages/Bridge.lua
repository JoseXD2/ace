function onCreate()
    
    -- stage.
    makeLuaSprite('normal', 'bridge/normal/background', -600, -300)
	addLuaSprite('normal', false)

    makeLuaSprite('bridge', 'bridge/normal/bridge', -600, -300)
	addLuaSprite('bridge', false)

    if not lowQuality then
        makeAnimatedLuaSprite('aceC', 'bridge/AceCrowd', 40, 823)
        addAnimationByPrefix('aceC', 'ow', 'jam', 24, true)
        objectPlayAnimation('aceC', 'ow', true)
        addLuaSprite('aceC', false)
    end

    makeLuaSprite('foreb', 'bridge/normal/foreground', -600, -300)
	addLuaSprite('foreb', false)

    -- flash.
    makeLuaSprite('flash', '', 0, 0)
	makeGraphic('flash', 1280, 720, 'FFFFFF')
	setObjectCamera('flash', 'hud')
	setProperty('flash.alpha', 0)
	addLuaSprite('flash', false)

    -- precache.
    precacheImage('bridge/cold/snowbackground1')
    precacheImage('bridge/cold/snowbridge1')
    precacheImage('bridge/AceCrowd')
    precacheImage('bridge/cold/snowforeground1')
end