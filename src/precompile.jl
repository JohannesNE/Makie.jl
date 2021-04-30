# Use
#    @warnpcfail precompile(args...)
# if you want to be warned when a precompile directive fails
macro warnpcfail(ex::Expr)
    modl = __module__
    file = __source__.file === nothing ? "?" : String(__source__.file)
    line = __source__.line
    quote
        $(esc(ex)) || @warn """precompile directive
     $($(Expr(:quote, ex)))
 failed. Please report an issue in $($modl) (after checking for duplicates) or remove this directive.""" _file =
            $file _line = $line
    end
end


precompile(
    Tuple{Type{MakieCore.Scatter{N} where N},Array{GeometryBasics.Point{2,Float32},1}},
)
precompile(Tuple{Type{MakieCore.Transformation},typeof(identity)})
isdefined(Observables, Symbol("##map!#11")) && precompile(
    Tuple{
        Observables.var"##map!#11",
        Bool,
        typeof(Base.map!),
        typeof(MakieCore.transformationmatrix),
        Observables.Observable{StaticArrays.SArray{Tuple{4,4},Float32,2,16}},
        Observables.Observable{GeometryBasics.Vec{3,Float32}},
        Int,
    },
)
precompile(Tuple{Type{MakieCore.CairoScreen{S} where S},Int64,Int64})
precompile(Tuple{typeof(Base.rand),Type{GeometryBasics.Point{2,Float32}},Int64})
precompile(Tuple{typeof(Base.hvcat),Tuple{Int64,Int64,Int64,Int64},Float32,Float32})
isdefined(StaticArrays, Symbol("##s155#536")) &&
    precompile(Tuple{StaticArrays.var"##s155#536",Int,Int,Int,Int,Int,Int,Int,Int,Int})
isdefined(Observables, Symbol("#on##kw")) && precompile(
    Tuple{
        Observables.var"#on##kw",
        NamedTuple{(:weak,),Tuple{Bool}},
        typeof(Observables.on),
        Int,
        Observables.Observable{GeometryBasics.Vec{3,Float32}},
    },
)
isdefined(StaticArrays, Symbol("##s155#387")) &&
    precompile(Tuple{StaticArrays.var"##s155#387",Int,Int,Int,Int})
precompile(
    Tuple{
        Type{MakieCore.Scatter{N} where N},
        Array{GeometryBasics.Point{2,Float32},1},
        ColorTypes.RGBA{Float32},
        Symbol,
        Float32,
        GeometryBasics.Vec{2,Float32},
        ColorTypes.RGBA{Float32},
        Float32,
        MakieCore.Space,
        Bool,
        Bool,
        Observables.Observable{Base.Dict{Symbol,Any}},
        Observables.Observable{Tuple{Symbol,Any}},
        MakieCore.Camera,
        MakieCore.Transformation,
        Nothing,
    },
)
isdefined(Observables, Symbol("#on##kw")) && precompile(
    Tuple{
        Observables.var"#on##kw",
        NamedTuple{(:weak,),Tuple{Bool}},
        typeof(Observables.on),
        Int,
        Observables.Observable{MakieCore.Quaternion{Float32}},
    },
)
isdefined(Base, Symbol("#@ncall")) &&
    precompile(Tuple{Base.Cartesian.var"#@ncall",LineNumberNode,Module,Int64,Int,Int})
isdefined(StaticArrays, Symbol("##s26#6")) &&
    precompile(Tuple{StaticArrays.var"##s26#6",Int,Int,Int,Int,Int,Type,Type,Type,Int})
precompile(
    Tuple{
        typeof(Observables._onany),
        Int,
        Tuple{
            Observables.Observable{GeometryBasics.Vec{3,Float32}},
            Observables.Observable{GeometryBasics.Vec{3,Float32}},
            Observables.Observable{MakieCore.Quaternion{Float32}},
        },
        Bool,
    },
)
precompile(
    Tuple{
        typeof(Base.ht_keyindex),
        Base.Dict{String,Tuple{Int64,Int64,Int64}},
        Base.SubString{String},
    },
)
precompile(
    Tuple{
        typeof(Base._array_for),
        Type{Symbol},
        Base.Iterators.ProductIterator{Tuple{Base.UnitRange{Int64},Base.UnitRange{Int64}}},
        Base.HasShape{2},
    },
)
isdefined(GeometryBasics, Symbol("##s7#27")) &&
    precompile(Tuple{GeometryBasics.var"##s7#27",Int,Int,Int,Int,Int})
isdefined(StaticArrays, Symbol("##s155#354")) &&
    precompile(Tuple{StaticArrays.var"##s155#354",Int,Int,Int,Int,Type,Int})
precompile(
    Tuple{
        typeof(Base.convert),
        Type{ColorTypes.RGBA{Float32}},
        ColorTypes.RGB{FixedPointNumbers.Normed{UInt8,8}},
    },
)
isdefined(StaticArrays, Symbol("##s155#188")) &&
    precompile(Tuple{StaticArrays.var"##s155#188",Int,Int,Int,Int})
precompile(Tuple{typeof(Base.Libc.Libdl.dlopen),String,UInt32})
precompile(Tuple{typeof(StaticArrays.tuple_minimum),Type{Tuple{4,4}}})
precompile(
    Tuple{
        typeof(MakieCore.convert_attribute),
        Type{MakieCore.Scatter{N} where N},
        MakieCore.Key{:strokecolor},
        Symbol,
    },
)
precompile(Tuple{typeof(StaticArrays.tuple_prod),Type{Tuple{4,4}}})
precompile(Tuple{typeof(Base.isabstracttype),Int})
precompile(Tuple{typeof(Base.all),typeof(identity),Core.SimpleVector})
precompile(Tuple{Type{StaticArrays.Size{S} where S},Int64,Int64})
precompile(
    Tuple{
        Type{Observables.OnUpdate{F,Args} where {Args} where F},
        Observables.MapUpdater{
            typeof(MakieCore.transformationmatrix),
            StaticArrays.SArray{Tuple{4,4},Float32,2,16},
        },
        Tuple{
            Observables.Observable{GeometryBasics.Vec{3,Float32}},
            Observables.Observable{GeometryBasics.Vec{3,Float32}},
            Observables.Observable{MakieCore.Quaternion{Float32}},
        },
    },
)
precompile(Tuple{Type{StaticArrays.Size{S} where S},Type{Tuple{4,4}}})
precompile(Tuple{typeof(Base.print),Base.GenericIOBuffer{Array{UInt8,1}},UInt16})
precompile(Tuple{typeof(Base.setindex!),Array{Symbol,2},Symbol,Int64})
precompile(Tuple{Type{StaticArrays.Size{S} where S},Int64})
precompile(
    Tuple{
        Type{
            Base.LinearIndices{
                N,
                R,
            } where {R<:Tuple{Vararg{Base.AbstractUnitRange{Int64},N}}} where N,
        },
        Array{Symbol,2},
    },
)
precompile(
    Tuple{
        typeof(ColorTypes._eltypes_supported),
        Type{var"#s58"} where var"#s58"<:(ColorTypes.Colorant{T,N} where {N} where {T}),
        Type{C},
    } where {C<:(ColorTypes.Colorant{T,N} where {N} where {T})},
)
isdefined(Base, Symbol("#map!##kw")) && precompile(
    Tuple{
        Base.var"#map!##kw",
        NamedTuple{(:update,),Tuple{Bool}},
        typeof(Base.map!),
        typeof(MakieCore.transformationmatrix),
        Observables.Observable{StaticArrays.SArray{Tuple{4,4},Float32,2,16}},
        Observables.Observable{GeometryBasics.Vec{3,Float32}},
        Int,
    },
)
precompile(Tuple{typeof(Base.minimum),Tuple{Int64,Int64}})
precompile(
    Tuple{
        Type{Base.Iterators.ProductIterator{T} where T<:Tuple},
        Tuple{Base.UnitRange{Int64},Base.UnitRange{Int64}},
    },
)
precompile(
    Tuple{
        typeof(ColorTypes._eltypes_supported),
        Type{C},
        Type,
    } where {C<:(ColorTypes.Colorant{T,N} where {N} where {T})},
)
precompile(Tuple{typeof(Base.supertype),UnionAll})
precompile(
    Tuple{
        typeof(MakieCore.convert_attribute),
        Type{MakieCore.Scatter{N} where N},
        MakieCore.Key{:markeroffset},
        GeometryBasics.Vec{2,Float32},
    },
)
isdefined(StaticArrays, Symbol("##s155#64")) &&
    precompile(Tuple{StaticArrays.var"##s155#64",Int,Int,Int,Int,Int,Int})
isdefined(StaticArrays, Symbol("##s26#2")) &&
    precompile(Tuple{StaticArrays.var"##s26#2",Int,Int,Int,Int,Int})
isdefined(StaticArrays, Symbol("##s155#63")) &&
    precompile(Tuple{StaticArrays.var"##s155#63",Int,Int,Int,Int,Int})
precompile(
    Tuple{
        typeof(Observables.onany),
        Observables.MapUpdater{
            typeof(MakieCore.transformationmatrix),
            StaticArrays.SArray{Tuple{4,4},Float32,2,16},
        },
        Observables.Observable{GeometryBasics.Vec{3,Float32}},
        Int,
    },
)
precompile(Tuple{typeof(ColorTypes._parameter_upper_bound),UnionAll,Int})
precompile(
    Tuple{
        typeof(MakieCore.convert_attribute),
        Type{MakieCore.Scatter{N} where N},
        MakieCore.Key{:markersize},
        Float32,
    },
)
precompile(Tuple{typeof(StaticArrays.tuple_length),Type{Tuple{4,4}}})
isdefined(Observables, Symbol("##onany#10")) && precompile(
    Tuple{
        Observables.var"##onany#10",
        Bool,
        typeof(Observables.onany),
        Observables.MapUpdater{
            typeof(MakieCore.transformationmatrix),
            StaticArrays.SArray{Tuple{4,4},Float32,2,16},
        },
        Observables.Observable{GeometryBasics.Vec{3,Float32}},
        Int,
    },
)
precompile(Tuple{typeof(StaticArrays._Length),Int64,Int64})
precompile(
    Tuple{
        typeof(MakieCore.convert_attribute),
        Type{MakieCore.Scatter{N} where N},
        MakieCore.Key{:transform_marker},
        Bool,
    },
)
precompile(Tuple{typeof(ColorTypes.__init__)})
precompile(Tuple{typeof(Base.prod),Tuple{Int64}})
precompile(Tuple{typeof(Base.getindex),Base.EnvDict,String})
precompile(
    Tuple{
        typeof(MakieCore.convert_attribute),
        Type{MakieCore.Scatter{N} where N},
        MakieCore.Key{:markerspace},
        MakieCore.Space,
    },
)
precompile(
    Tuple{
        typeof(MakieCore.convert_attribute),
        Type{MakieCore.Scatter{N} where N},
        MakieCore.Key{:strokewidth},
        Float32,
    },
)
precompile(
    Tuple{typeof(Base.Iterators.product),Base.UnitRange{Int64},Base.UnitRange{Int64}},
)
precompile(Tuple{typeof(Base.length),Core.SimpleVector})
precompile(Tuple{typeof(ColorTypes.basetype),Int})
precompile(Tuple{typeof(Base.supertype),DataType})
precompile(Tuple{typeof(Base.typename),UnionAll})
precompile(Tuple{typeof(Base.invokelatest),Int})
precompile(Tuple{typeof(Base.typename),DataType})
isdefined(Base, Symbol("#@_inline_meta")) &&
    precompile(Tuple{Base.var"#@_inline_meta",LineNumberNode,Module})
