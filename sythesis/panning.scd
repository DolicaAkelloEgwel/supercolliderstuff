s.boot;

// Basic panning
p = {Pan2.ar(in: PinkNoise.ar, pos: SinOsc.kr(2), level: 0.1)}.play;
p.free;

// More complicated
(
x = {
    var lfn = LFNoise2.kr(1); // decides where the sound "lands"
    var saw = Saw.ar(
        freq: 30,
        mul: LFPulse.kr(
            freq: LFNoise1.kr(1).range(1, 10),
            width: 0.1));
    var bpf = BPF.ar(in: saw, freq: lfn.range(500, 2500), rq: 0.01, mul: 15);
    Pan2.ar(in: bpf, pos: lfn);
}.play;
)
x.free;

r = {LFPulse.kr(freq: LFNoise1.kr(1).range(1, 10), width: 0.1).poll}.play;
r.free;