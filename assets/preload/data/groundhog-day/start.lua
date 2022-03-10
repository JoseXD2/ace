local allowCountdown = false
local startedFirstDialogue = false

function onStartCountdown()
    if not allowCountdown and isStoryMode and not startedFirstDialogue then
        setProperty('inCutscene', true);
        runTimer('animation', 0.5);
        runTimer('startDialogue', 2.5);
        startedFirstDialogue = true;
        return Function_Stop;
    end
    return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'startDialogue' then
        startDialogue('Dialogue5', 'dialogueAmbience2');
    end

    if tag == 'animation' then
        triggerEvent('Play Animation', 'intro', 'dad')
        playSound('aceanim', 2)
    end
end

function onCreate()
    precacheSound('aceanim')
end