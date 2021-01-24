s.boot;

x = {arg gate = 1, freq = 440; SinOsc.ar(freq: freq, muk: Env.asr(0.5, 0.8, 3).kr(doneAction: 2, date: gate))}.play;