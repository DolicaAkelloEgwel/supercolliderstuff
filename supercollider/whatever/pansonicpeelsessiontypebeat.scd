s.boot;

~bpm = 400;
x = {LFSaw.ar(50).dup * BrownNoise.ar * BrownNoise.ar * BrownNoise.ar * Pulse.ar(~bpm/60, 0.01,2).distort}.play;
x.free;
x;

p = Pseq([Pfunc({ b.play; 60/~bpm })], inf).play;