# Sparklines

[![Build Status](https://travis-ci.org/mbauman/Sparklines.jl.svg?branch=master)](https://travis-ci.org/mbauman/Sparklines.jl)

A Julia implementation of [spark](https://github.com/holman/spark).

## Example usage

    julia> using Sparklines
    
    julia> spark(sin(0:0.2:2pi))
    ▄▅▅▆▇▇▇███▇▇▆▆▅▅▄▃▂▂▁▁▁▁▁▁▁▁▂▂▃▄
    
    julia> spark(cumsum(randn(80)))
    ▄▄▄▃▃▃▄▅▅▄▃▄▂▁▁▁▁▁▁▁▂▃▄▄▅▄▄▅▄▅▆▅▄▃▃▃▄▄▅▅▆▅▅▅▅▅▆▅▅▄▄▅▅▆▆▇█▇▇▇▆▅▆▅▄▄▃▄▆▆▅▆▇▇▇▇▇▆▅▅
