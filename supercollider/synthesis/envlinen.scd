s.boot;

Env.linen.plot;
{SinOsc.ar([300,350], mul: Env.linen(0.01, 2, 1, 0.2).kr(2))}.play;
