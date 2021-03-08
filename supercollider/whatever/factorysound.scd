s.boot;

// When blip_freq is less than one is sounds wave-ish
// When blip_freq is greater than one (but not too high) it sounds like a factory

(
x = {
	var a, out, blip_freq;

    blip_freq = 0.5; // It sounds more intense when this is higher
    a = LFTri.ar(blip_freq, mul=Pulse.kr) * 1.5; // boring triangle sound
    a = a * 0.7 * WhiteNoise.ar; // noisy triangle sound
    // a = CombC.ar(a, 0.1, 0.1, 4) * 0.4; // something extra that makes it sound strange
    a = FreeVerb.ar(a, 0.8, 0.6); // noisy clicking sound /w reverb
    a = DelayC.ar(a, delaytime: 0.01, feedback: 1.5); // noisy clicking sound w/ reverb and THEN delay

    out = a ! 2;
    out = out * 0.1;

}.play
)

s.freeAll;