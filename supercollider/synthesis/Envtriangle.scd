s.boot;

Env.triangle.plot;
{SinOsc.ar([440, 442], mul: Env.triangle.kr(2))}.play;
{SinOsc.ar([440, 442]) * Env.triangle.kr(2)}.play;