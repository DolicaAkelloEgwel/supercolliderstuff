s.boot;
(
Pbind(
    \freq, Pn(Pseries(110,111,10), 5),
    \dur, 0.5,
    \legato, Pwhite(0.1,1)
).play;
Pbind(
    \freq, Pn(Pseries(220, 222, 10), 5),
    \dur, 0.25,
    \legato, Pwhite(0.1, 1)
).play;
Pbind(
    \freq, Pn(Pseries(330,333,10), 5),
    \dur, 1/6,
    \legato, 0.1
).play;
)
// Simultaneous

(
{
Pbind(
    \freq, Pn(Pseries(110,111,10), 5),
    \dur, 0.5,
    \legato, Pwhite(0.1,1)
).play;
2.wait;
Pbind(
    \freq, Pn(Pseries(220, 222, 10), 5),
    \dur, 0.25,
    \legato, Pwhite(0.1, 1)
).play;
5.wait;
Pbind(
    \freq, Pn(Pseries(330,333,10), 5),
    \dur, 1/6,
    \legato, 0.1
).play;
}.fork;
)

// Fork with delays