s.boot;
a = {Out.ar(0, SinOsc.ar(freq: [400, 400], mul: LFPulse.ar(1)))}.play;
a.free;