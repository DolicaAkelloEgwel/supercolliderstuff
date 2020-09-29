s.boot;

a = { Saw.ar(LFNoise2.kr(8).range(1000,2000), mul: 0.2) }.play;
b = { Saw.ar(LFNoise2.kr(7).range(100,1000), mul: 0.2) }.play;
c = { Saw.ar(LFNoise2.kr(15).range(2000,3000), mul: 0.2) }.play;

a.free;
b.free;
c.free;