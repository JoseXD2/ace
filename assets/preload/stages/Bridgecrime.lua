function onCreate()

    -- stage.
    makeLuaSprite('crimes', 'bridge/crime/background1', -600, -300)
	addLuaSprite('crimes', false)

    makeLuaSprite('crimef', 'bridge/crime/foreground', -600, -300)
	addLuaSprite('crimef', false)

    if not lowQuality then
        makeAnimatedLuaSprite('crimew', 'bridge/crime/wallart', -580, -300)
        addAnimationByPrefix('crimew', 'lmao', 'vibe', 24, true)
        objectPlayAnimation('crimew', 'lmao', true)
        addLuaSprite('crimew', false)
    end
end