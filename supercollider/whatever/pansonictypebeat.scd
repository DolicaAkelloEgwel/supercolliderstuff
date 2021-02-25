s.boot;

(
{
	var a, b, c, d, n, e, f,  out;

    var bpm = 400;
    a = WhiteNoise.ar(freq: 440, mul: SinOsc.kr(400/60));
    a = a * LFSaw.ar.distort.distort;
    a = a + FreeVerb.ar(a, mix: 0.8, damp: 0.8) * 0.6;
    a = a + DelayC.ar(a, maxdelaytime: 0.01, delaytime: 0.01, mul: 0.3) * 0.6;

    out = a ! 2;
    out = out * 0.2;

}.play
)

s.freeAll;
