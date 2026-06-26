"""
collatz_length(n)

Computes the collatz sequence length starting at the integer `n`.

See [Project Euler Problem 14](https://projecteuler.net/problem=14) for more details.

# Examples
```julia-repl
julia> collatz_length(13)
10
```
"""
function collatz_length(n::Integer)
    length = 1
    while n > 1
        if n%2 == 0
            n = n/2
        else
            n = (3*n)+1
        end
        length += 1
    end
    return length
end

"""
longest_collatz_length(max_n)

Finds the starting integer `n` which has the longest Collatz length from `n=1` to `n=max_n`.

Returns `n`.

See [Project Euler Problem 14](https://projecteuler.net/problem=14) for more details.

# Examples
```julia-repl
julia> longest_collatz_length(10)

```
"""
function longest_collatz_length(max_n::Integer)
    longest_n = 1
    longest_len = 1
    for n in 1:(max_n)
        current_len = collatz_length(n)
        if current_len > longest_len
            longest_len = current_len
            longest_n = n
        end
    end
    return longest_n
end