s.boot;

// nicked from femifleming. I cannot take credit for this cool thing.

(
SynthDef.new(\pulseTest, {
    arg fund=110, maxPartial=8;
    var wid1, wid2, freq1, freq2, delt, sig1, sig2, sig3, sig4;
    wid1 = SinOsc.kr(0.2);
    wid2 = SinOsc.kr(0.1);

    freq1 = PinkNoise.kr(0.2).exprange(fund, fund*maxPartial).round(fund);
    freq2 = WhiteNoise.kr(0.1).exprange(fund, fund*maxPartial).round(fund/7);

    delt = SinOsc.kr(0.2);

    sig1 = Pulse.ar(freq1, wid1);
    sig2 = Pulse.ar(freq2, wid2);

    sig3 = Saw.ar(freq1);
    sig4 = Saw.ar(freq2);

    sig1 = DelayN.ar(sig1, delaytime: delt);
    sig2 = DelayN.ar(sig2, delaytime: delt);

    sig1 = FreeVerb.ar(sig1, 1, 2, 0.9);
    sig2 = FreeVerb.ar(sig2, 1, 2, 0.9);
    sig3 = FreeVerb.ar(sig3, 1, 2, 0.9);
    sig4 = FreeVerb.ar(sig4, 1, 2, 0.9);

    Out.ar(0, sig1);
    Out.ar(1, sig2);

    Out.ar(0, sig3);
    Out.ar(1, sig4);
}).play;
)

s.freeAll;
