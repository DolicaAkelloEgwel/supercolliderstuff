s.boot;
(
Pbind(
    \note, Prand([1,2], 4),
    \dur, 0.15;
).trace.play;
)

(
Pbind(
    \note, Pxrand([1,2], 4),
    \dur, 0.15;
).trace.play;
)
// not doing the thing I expect it to