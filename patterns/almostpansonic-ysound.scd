s.boot;

~scale = [0,1,2,3,4,5,6,7] * 2;
~durs = [0.4,0.2,0.2,0.4,0.8,0.2,0.2,0.2];

~first_dur = 1/40; // this sounds more pan sonic-y when it's less than 0.5
~first_reps = 5 / ~first_dur;

(
Pbind(
    \freq, Pn(~scale, ~first_reps),
    \dur,~first_dur,
    \legato, Pwhite(0.1,1)
).play;
Pbind(
    \freq, Pn(~scale.reverse * 3 + 7, 20),
    \dur, 1/4,
    \legato, Pwhite(0.1, 1)
).play;
)