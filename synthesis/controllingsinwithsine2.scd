s.boot;
{SinOsc.ar(freq: SinOsc.kr.range(50, 1500), mul: SinOsc.kr(20))}.scope.play;