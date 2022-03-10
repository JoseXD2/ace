function onCreate()
    
    -- stage.
    makeLuaSprite('coldntA2', 'week-ace/Background2', -600, -300)
	addLuaSprite('coldntA2', false)

    if not lowQuality then
        makeAnimatedLuaSprite('peopleA2', 'week-ace/Back Characters', -10, 300)
        addAnimationByPrefix('peopleA2', 'standing', 'bop', 24, true)
        objectPlayAnimation('peopleA2', 'standing', true)
        addLuaSprite('peopleA2', false)
    end

    makeLuaSprite('snowA2', 'week-ace/P2Snow1', -600, -300)
	addLuaSprite('snowA2', false)

    if not lowQuality then
        makeAnimatedLuaSprite('people1A2', 'week-ace/Front Characters', -570, 500)
        addAnimationByPrefix('people1A2', 'bopp', 'bop', 24, true)
        objectPlayAnimation('people1A2', 'bopp', true)
        addLuaSprite('people1A2', false)
    end

    makeLuaSprite('lamA2', 'week-ace/Lamps', -600, -300)
	addLuaSprite('lamA2', false)
end