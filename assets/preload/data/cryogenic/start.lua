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
        runTimer('end2', 0.8);
        return Function_Stop;
    end
    return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)

    if tag == 'end2' then
        makeLuaSprite('ends', 'bridge/End2', 0, 0)
        addLuaSprite('ends', true)
        setObjectCamera('ends', 'other')
        playMusic('endLoop', 19)
        runTimer('loop', 19.1)
    end

    if tag == 'loop' then
        runTimer('end2', 0.1)
    end
end

function onUpdatePost()

    if ends == 2 and getProperty('endingSong') then
        if keyJustPressed('accept') then endSong()
        end
    end
end