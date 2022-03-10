local allowCountdown = false
local startedFirstDialogue = false

function onStartCountdown()
    if not allowCountdown and isStoryMode and not startedFirstDialogue then
        setProperty('inCutscene', true);
        runTimer('startDialogue', 0.5);
        startedFirstDialogue = true;
        return Function_Stop;
    end
    return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'startDialogue' then
        startDialogue('Dialogue6', 'dialogueAmbience2');
    end
end

function cold()

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

    -- yeah.
    removeLuaSprite('normal')
    removeLuaSprite('bridge')
    removeLuaSprite('aceC')
    removeLuaSprite('foreb')
end

function onStepHit()

    if curStep == 512 then
        cold()
        doTweenAlpha('white', 'flash', 0, 2.5, 'quintOut')
        setProperty('flash.alpha', 1)
    end
end