(
Pbind(
    \note, Pser([0,2,3,5,7,8,11,12], 11),
    \dur, 0.15;
).trace.play;
)
// Pser - like Pseq but repeats variable gives the number of items returned instead of the number of complete cycles.

(
Pbind(
    \note, Pshuf([0,2,3,5,7,8,11,12], 6),
    \dur, 0.15;
).trace.play;
)
// Pshuf - returns shuffled version of list with n repeats