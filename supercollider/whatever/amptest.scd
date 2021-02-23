s.boot;

(
SynthDef(\help_sinegrain,
    { arg out=0, freq=440, sustain=0.05, mul=1;
        var saw;
        saw = LFSaw.ar(freq, mul=mul).distort;
        saw = saw + FreeVerb.ar(saw, 0.8, 0.7);
        Out.ar(out, saw);
    }).add;
)

(
a = Pseq([1,0], 10).asStream.midicps;
Routine({
    loop({
        Synth(\help_sinegrain, [\mul, a.next]);
        0.5.wait;
    })
}).play;
)

s.freeAll;