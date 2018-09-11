from mayavi import mlab
x = [0., 1, 1, 0, 0.5]
y = [0., 0, 1, 1, 0.5]
z = [0., 0, 0, 0, 1]
t = [[0, 1, 4], [1, 2, 4],
     [2, 3, 4], [3, 0, 4]]

mlab.clf()
mlab.triangular_mesh(x, y, z, t)
