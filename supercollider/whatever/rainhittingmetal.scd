s.boot;

(
{
	var a, out;

    a = Blip.ar(8) * 1.5; // clicking sound
    a = a * WhiteNoise.ar; // "disorganised" clicking sound
    a = FreeVerb.ar(a, 0.8, 0.7); // noisy clicking sound /w reverb
    a = DelayC.ar(a, delaytime: 0.01, feedback: 1.5); // noisy clicking sound w/ reverb and THEN delay

    out = a ! 2;
    out = out * 0.2;

}.play
)
