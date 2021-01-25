# CES Price Index
function ces_index(p, σ)
    return sum(p.^(1-σ),dims=1).^(1/(1-σ))
end

# CES with prices
function ces(p, σ)
    q .= p.^(-σ) .* ces_index(p, σ).^(σ-1)
    w .= p .* q ./ sum(p .* q, dims=1)
    return q, w
end
