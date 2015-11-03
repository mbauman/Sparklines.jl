module Sparklines

export spark, sparkln, vspark

const ticks = ['▁','▂','▃','▄','▅','▆','▇','█']
const vticks = ['▏', '▎', '▍', '▌', '▋', '▊', '▉']

!isdefined(Base, :extrema) && (extrema(x) = (minimum(x), maximum(x)))

spark(itr) = spark(STDOUT, itr)
function spark(io::IO, itr)
    values = collect(itr)
    min, max = extrema(values)

    f = div((max - min) * 2^8, length(ticks)-1)
    f < 1 && (f = one(typeof(f)))

    idxs = convert(Vector{Int}, div(((values .- min) * 2^8), f))
    print(io, utf8(ticks[idxs.+1]))
end

sparkln(itr) = sparkln(STDOUT, itr)
sparkln(io::IO, itr) = (spark(io, itr); println(io))

vspark(itr) = vspark(STDOUT,itr)
function vspark(io::IO, itr)
    values = collect(itr)
    min, max = extrema(values)

    f = div((max - min) * 2^8, length(vticks)-1)
    f < 1 && (f = one(typeof(f)))

    idxs = convert(Vector{Int}, div(((values .- min) * 2^8), f))
    for i in idxs
        println(io,vticks[i+1])
    end
end


end # module
