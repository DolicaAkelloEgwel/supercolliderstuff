(
SynthDef.new(\pulseTest, {
    arg ampHz = 4, fund1 = 40, fund2 = 40, maxPartial = 4, width = 0.5;
    var amp1, amp2, freq1, freq2, sig1, sig2;

    amp1 = LFPulse.kr(ampHz, 0, 0.12) * 0.75;
    amp2 = LFPulse.kr(ampHz, 0.25, 0.12) * 0.75;

    freq1 = LFNoise0.kr(4).exprange(fund1, fund1 * maxPartial).round(fund1);
    freq2 = LFNoise0.kr(4).exprange(fund2, fund2 * maxPartial).round(fund2);

    freq1 = freq1 * LFPulse.kr(8, add:1);
    freq2 = freq2 * LFPulse.kr(8, add:1);

    sig1 = Pulse.ar(freq1, width, amp1);
    sig2 = Pulse.ar(freq2, width, amp2);

    sig1 = FreeVerb.ar(sig1, 0.7, 0.8, 0.25);
    sig2 = FreeVerb.ar(sig2, 0.7, 0.8, 0.25);

    // Send sound to right and left speakers
    Out.ar(0, sig1);
    Out.ar(1, sig2);

}).add
)

x = Synth.new(\pulseTest);

// Change multiple parameters in the same statement
x.set(\fund1, 70, \fund2, 120);

// Change a single parameter
x.set(\maxPartial, 40);
x.set(\width, 0.3);

// Kill the synth
x.free;