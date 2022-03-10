local startedEndDialogue = false
local ends = 0

function onEndSong()

    ends = ends + 1
    if ends == 1 and isStoryMode and not startedEndDialogue then
        setProperty('inCutscene', true);
        runTimer('startDialogueEnd', 0.8);
        startedEndDialogue = true;
        return Function_Stop;
    end
    
    if ends == 2 and isStoryMode then
        runTimer('enD', 0.8);
        return Function_Stop;
    end
    return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)

    if tag == 'enD' then
        makeLuaSprite('ends', 'week-ace/End', 0, 0)
        addLuaSprite('ends', true)
        setObjectCamera('ends', 'other')
        playMusic('end', 19)
        runTimer('loopend', 19.1)
    end
    
    if tag == 'loopend' then
        playMusic('endLoop', 19)
        runTimer('loopend', 19.1)
    end
end

function onUpdatePost()

    if ends == 2 and getProperty('endingSong') then
        if keyJustPressed('accept') then endSong()
        end
    end
end