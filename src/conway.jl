###
# Experimentando una version de Conway
###

N = 6

world = zeros(Bool, N + 2, N + 2)

function init!(world)
    world[:,1] .= false
    world[:,end] .= false
    world[1,:] .= false
    world[end,:] .= false
    world
end

function step(block)
    cell = block[2, 2]
    s = sum(block) - cell
    (cell && s == 2) || s == 3
end

function update(world)
    N,M = size(world)
    new = copy(world)
    for i in range(2, N - 1)
        for j in range(2, M - 1)
            block = world[i-1:i+1, j-1:j+1]
            new[i, j] = step(block)
        end
    end
    new
end

function display(world)
    N = size(world,1)
    for row in range(2,N-1)
        println(join(map(x->x ? "#" : " ", world[row,:])))
    end
end

function play(world, steps)
    for _ in 1:steps
        display(world)
        println()
        world = update(world)
    end
end