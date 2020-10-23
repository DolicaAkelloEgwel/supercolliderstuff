// Cluster generator
c = {Mix.fill(16, {SinOsc.ar(rrand(100, 3000), mul: 0.01)})}.play;
c.free;

(
n = { Mix.fill(12, {arg counter;
    var partial = counter + 1;
    SinOsc.ar(partial * 440, mul: 1 / partial.squared) * 0.1
})}.play;
FreqScope.new;
)
n.free;