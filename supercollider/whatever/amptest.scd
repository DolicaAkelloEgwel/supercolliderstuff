s.boot;

(
SynthDef(\help_sinegrain,
    { arg out=0, freq=440, sustain=0.05, mul=1;
        var env;
        env = EnvGen.kr(Env.perc(0.01, sustain, 0.2), doneAction: Done.freeSelf);
        Out.ar(out, SinOsc.ar(freq, 0, env, mul=mul))
    }).add;
)

(
a = Pseq([1,0], inf).asStream;
Routine({
    loop({
        Synth(\help_sinegrain, [\mul, a.next.midicps]);
        0.5.wait;
    })
}).play;
)

s.freeAll;