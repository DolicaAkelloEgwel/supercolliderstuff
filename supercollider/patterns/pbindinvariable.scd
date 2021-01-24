s.boot;
(
p = Pbind(
    \midinote, Pseq([57, 62, 64, 65, 67, 69], inf),
    \dur, 1/7
);
)
~myPlayer = p.play;
~myPlayer.stop;
~myPlayer.resume;
~myPlayer.stop.reset;
~myPlayer.start;
~myPlayer.stop;