addpath('Functions')

%create cube
cube = createBox(2.5, 2.5, 2.5);
cube = translation(cube, [-5 2 0]);
cc = geoCenter(cube.vertices);

%create parallelepiped
parallelepiped = createBox(2, 3, 4);
parallelepiped = rotation3DCenter(parallelepiped, [0, 0, pi/2]);
parallelepiped = translation(parallelepiped, [3,8,0]);
cpp = geoCenter(parallelepiped.vertices);

%create pyramid
pyramid = createPyramid(3, 3, 4);
pyramid = rotation3DCenter(pyramid, [0, 0, pi/6]);
pyramid = translation(pyramid, [-4, 6, 0]);
cpi = geoCenter(pyramid.vertices);

%create trunk
trunk = createTrunk(4, 2, 3);
trunk = translation(trunk, [1 2 0]);
ct = geoCenter(trunk.vertices);

at = geoCenter([cc; cpp; cpi; ct]);

eye = [-10 -10 -10];
n = eye - at;
n = n / norm(n);

aux = rand(1,3);

proj = ((aux * n')/norm(n)^2) * n;

u = aux - proj;
u = u / norm(u);
v = cross(u, n);
v = v/norm(v);

mt = [n ; u ; v ];

cube = basesChange(cube, mt);
parallelepiped = basesChange(parallelepiped, mt);
pyramid = basesChange(pyramid, mt);
trunk = basesChange(trunk, mt);

campos(eye)
camtarget(at);

plot3D(cube, 'r');
plot3D(parallelepiped, 'g')
plot3D(pyramid, 'm')
plot3D(trunk, 'b');
grid;
