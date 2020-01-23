Server.local.start;

(
SynthDef.new(\sineTest, {
    arg noiseHz = 8;
    var freq, amp, sig;
    freq = LFNoise0.kr(noiseHz).exprange(200,1000);
    amp = LFNoise1.kr(12).exprange(0.02, 1);
    sig = SinOsc.ar(freq) * amp;
    Out.ar(0, sig); // 0 sends to left speaker
    Out.ar(1, sig); // 1 sends to right speaker
}).add;
)

x = Synth.new(\sineTest);
x.free;