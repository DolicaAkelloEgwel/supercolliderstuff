s.boot;

// When blip_freq is less than one is sounds wave-ish
// When blip_freq is greater than one (but not too high) it sounds like a factory

s.freeAll;

(
x = {
	var a, out, blip_freq;

    blip_freq = 0.1; // It sounds more intense when this is higher
    a = Pulse.ar(blip_freq); // boring triangle sound (you will get tinitus if you don't multiply this by a small value)
    10.do{ a = (Normalizer.ar(a.distort, 1.0) + a) * 0.9}; // distort a bunch of times and normalise on every iteration to keep it in check
    a = a * 0.7 * CuspN.ar; // noisy triangle sound
    // a = LPF.ar(in: a, freq: 900); // damping the sound a lil'' bit
    // a = a + (WhiteNoise.ar * 0.6);
    a = CombC.ar(a, 0.1, 0.1, 5) * 0.4; // something extra that makes it sound strange
    1.do{a = FreeVerb.ar(a, 0.7, 0.4)}; // noisy clicking sound /w reverb
    // a = FreeVerb.ar(a, 0.8, 0.6); // noisy clicking sound /w reverb
    3.do{a = DelayC.ar(a, delaytime: 0.01)}; // noisy clicking sound w/ reverb and THEN delay

    out = a ! 2;
    out = out * 0.1;

}.play
)

s.freeAll;