function onCreate()
    
    -- stage.
    makeLuaSprite('coldnt', 'week-ace/Background1', -600, -300)
	addLuaSprite('coldnt', false)

    if not lowQuality then
        makeAnimatedLuaSprite('people', 'week-ace/Back Characters', -10, 300)
        addAnimationByPrefix('people', 'standing', 'bop', 24, true)
        objectPlayAnimation('people', 'standing', true)
        addLuaSprite('people', false)
    end

    makeLuaSprite('snow', 'week-ace/P1Snow1', -600, -300)
	addLuaSprite('snow', false)

    if not lowQuality then
        makeAnimatedLuaSprite('people2', 'week-ace/Front Characters', -570, 500)
        addAnimationByPrefix('people2', 'bopp', 'bop', 24, true)
        objectPlayAnimation('people2', 'bopp', true)
        addLuaSprite('people2', false)
    end

    makeLuaSprite('lam', 'week-ace/Lamps', -600, -300)
	addLuaSprite('lam', false)
end