local allowCountdown = false
local startedFirstDialogue = false

function onStartCountdown()

    if not allowCountdown and not isStoryMode and not startedFirstDialogue then
        setProperty('inCutscene', true);
        runTimer('startDialogue', 0.8);
        startedFirstDialogue = true;
        return Function_Stop;
    end
    return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)

    if tag == 'startDialogue' then
        startDialogue('Dialogue9', 'dialogueAmbience1');

    elseif tag == 'startDialogueEnd' then
        startDialogue('Dialogue10', 'dialogueAmbience1');
    end
end