s.boot;

// Takes sound from first input bus
{SoundIn.ar(0)}.play;
// Takes sound from first and second input bus
{SoundIn.ar([0,1])}.play;
// Reverb
{FreeVerb.ar(SoundIn.ar([0,1]), mix: 0.5, room: 0.9)}.play;