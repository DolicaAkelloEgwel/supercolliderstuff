s.boot;

(
{
    CombN.ar(
        SinOsc.ar(
            LFNoise1.kr(
                4, // freq
                24, // range
                LFSaw.kr(
                    [8,7.23], // freq
                    0,
                    3, // range
                    80 // offset
                )
            ).midicps,
            0,
            0.4
        ),
        0.2, // max delay
        0.2, // actual delay
        4 // decay
    )
}.play
)