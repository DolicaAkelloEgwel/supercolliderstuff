s.boot;
// Example 9.5
(
{Out.ar(0, In.ar(MouseY.kr(15, 23).div(1), 1) * 0.8)}.scope;
{Out.ar(16, [SinOsc.ar, Saw.ar, Pulse.ar, LFTri.ar, LFNoise0.ar(200), Dust.ar(100), PinkNoise.ar, WhiteNoise.ar])}.play
)