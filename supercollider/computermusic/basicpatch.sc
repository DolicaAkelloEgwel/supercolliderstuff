s.boot;
{SinOsc.ar(abs(LFNoise0.ar(10, 400, 800)), 0, 0.3)}.play;

(
{
    RLPF.ar(
        LFSaw.ar([8, 12], 0, 0.2),
        abs(LFNoise1.ar([2,3].choose, 1500, 1600)),
        0.05
    )
}.play
)