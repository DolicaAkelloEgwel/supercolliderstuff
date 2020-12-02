s.boot;

x = {arg freq = 440, amp = 0.1; SinOsc.ar(freq, 0, amp)}.play;

x.set(\amp, 0.01);
x.set(\freq, 778);
x.set(\freq, 920, \amp, 0.1);
x.free;