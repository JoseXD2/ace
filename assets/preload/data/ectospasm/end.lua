local startedEndDialogue = false
local ends = 0

function onEndSong()

    ends = ends + 1
    if ends == 1 and not isStoryMode and not startedEndDialogue then
        setProperty('inCutscene', true);
        runTimer('startDialogueEnd', 0.8);
        startedEndDialogue = true;
        return Function_Stop;
    end
    
    if ends == 2 and not isStoryMode then
        runTimer('EctospasmEnd', 0.8);
        return Function_Stop;
    end
    return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)

    if tag == 'EctospasmEnd' then
        makeLuaSprite('endsa', 'bridge/EctospasmEnd', 0, 0)
        addLuaSprite('endsa', true)
        setObjectCamera('endsa', 'other')
        playMusic('endzer', 19)
        runTimer('loop', 19.1)
    end

    if tag == 'loop' then
        runTimer('loop', 19.1)
        playMusic('endLoop', 19)
    end
end

function onUpdatePost()

    if ends == 2 and getProperty('endingSong') then
        if keyJustPressed('accept') then endSong()
        end
    end
end