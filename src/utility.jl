#=
@authors: Dominic Smith

Provides functions for calculating equilibrium quantities and expenditures
using various utility functions.


=#

# CES Price Index
function ces_index(p, σ)
    return sum(p.^(1-σ),dims=1).^(1/(1-σ))
end


@doc doc"""
ces(p,σ)

Calculate equilibrium quantities and expenditure for a Constant Elasticity of
Substitution (CES) Utility function given prices and an elastiticy of
substitution.

The utlity function is defined as
```math
U(q) = (\sum_{i=1}^N q^\sigma)^(1/\sigma)
```

#### Fields
 - `p::Vector` : Array of Prices
 - `\sigma::Real` : Elasticity of Substitution

"""
# CES with prices
function ces(p, σ)
    q = p.^(-σ) .* ces_index(p, σ).^(σ-1)
    w = p .* q ./ sum(p .* q, dims=1)
    return q, w
end

function cobb_douglas(p, β)
    return q, w
end
