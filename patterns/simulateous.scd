s.boot;
(
Pbind(
    \freq, Pn(Pseries(110,111,10)),
    \dur, 0.5,
    \legato, Pwhite(0.1,1)
).play;
Pbind(
    \freq, Pn(Pseries(220, 222, 10)),
    \dur, 0.25,
    \legato, Pwhite(0.1, 1)
).play;
Pbind(
    \freq, Pn(Pseries(330,333,10)),
    \dur, 1/6,
    \legato, 0.1
).play;
)