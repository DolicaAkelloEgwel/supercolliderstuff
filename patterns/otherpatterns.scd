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

(
Pbind(
    \note, Pslide([0,2,3,5,7,8,11,12], 7, 3, 1),
    \dur, 0.15;
).trace.play;
)
// Pslide - don't understand this one yet...

(
Pbind(
    \note, Pseries(0, 2, 15),
    \dur, 0.15;
).trace.play;
)
// Pseries - Self explanatory?

(
Pbind(
    \note, Pseries(0, 2, 15),
    \dur, Pgeom(0.1, 0.9, 25);
).trace.play;
)
// Pgeom - exponetial decrease in duration

(
Pbind(
    \note, Pseries(0, 2, 15),
    \dur, Pgeom(0.1, 1.1, 25);
).trace.play;
)
// Pgeom- exponential increase in duration

(
Pbind(
    \note, Pseries(0, 2, 15),
    \dur, Pgeom(0.1, 1, 25);
).trace.play;
)
// Pgeom - constant duration...no point using it for this!
