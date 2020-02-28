# This is a SageMath code.
# You need SageMath to run this code.

var('x')
G = Graphics()

#---spin numbers---#
spins = [3, 2, 3]  # should be within |j1 -j2| =< j3 =< j1 + j2


def is_compatible(spins):
    return abs(spins[0]-spins[1]) <= spins[2] and spins[2] <= spins[0] + spins[1]


def get_irreducible_reps(spins):
    """get irreducible representations"""
    irreps = []
    j_max = spins[0] + spins[1]
    j_min = abs(spins[0] - spins[1])
    for i in range(j_min, j_max+1, 1):
        irreps.append(i)
    return irreps


irreducible_reps = get_irreducible_reps(spins)
print(irreducible_reps)

#---dimensions of rep spaces---#
rep_dims = [2*j + 1 for j in spins]
#---poits representing the basis for tensor products---#
pcol = 'black'
psize = 50
lattice_vectors = [vector([-1, -1]), vector([1, -1])]


def get_lattice_point(i, k):
    """Gets a lattice point at (i,k) by adding base vectors"""
    return i*lattice_vectors[0] + k*lattice_vectors[1]


#--- Creates points representing tensor basis ---#
points_list = [list(get_lattice_point(l, m)) for l in range(rep_dims[0]) for m in range(rep_dims[1])]
#--- Irrep basis ---#
mid_height = -(rep_dims[0]+rep_dims[1]-2)/2
print mid_height
for i in range(len(irreducible_reps)):
    for k in range(2*irreducible_reps[i]+1):
        points_list.append([rep_dims[0]+1.5*i+1, mid_height - irreducible_reps[i] + k])

points = list_plot(points_list, color=pcol, size=psize)
#--- level lines ---#
lcol = 'black'
linestyl = '--'
level_lines = Graphics()


levels = set([point[1] for point in points_list])
same_height_groups = list(map(lambda level: filter(lambda p: p[1] == level, points_list), levels))
for same_height_group in same_height_groups:
    sorted_group = sorted(same_height_group, key=lambda point: point[0])
    left_most = sorted_group[0]
    right_most = sorted_group[-1]
    level_lines += line2d([left_most, right_most], color=lcol, linestyle=linestyl)


G = points + level_lines
G.save("j_grids.png", aspect_ratio=1, axes=False)
