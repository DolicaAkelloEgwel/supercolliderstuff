s.boot;
(
Pbind(
    \degree, Pseq([0,-1,2,-3,4,-3,7,11,4,2,0,-3], 10),
    \dur, Pseq([0.2, 0.2, 0.2], inf),
    \amp, Pseq([0.7, 0.5, 0.3, 0.2], inf),
    \legato, Pseries(0, 0.1)
).play;
)