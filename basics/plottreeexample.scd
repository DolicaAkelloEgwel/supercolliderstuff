Server.local.plotTree;

(
{
    var sig, env;
    env = Line.kr(1, 0.01, 5, doneAction:2); // doneAction:2 instructs SuperCollider to free the synth
    sig = Pulse.ar(ExpRand(30, 500)) * env;
}.play;
)

// Sound is perceived exponentially, so XLine sounds more natural
(
{
    var sig, env;
    env = XLine.kr(1, 0.01, 5, doneAction:2);
    sig = Pulse.ar(ExpRand(30, 500)) * env;
}.play;
)

