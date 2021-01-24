s.boot;
a = {Out.ar(0, SinOsc.ar(freq: [800, 800], mul: LFPulse.ar(3)))}.play;
a.free;