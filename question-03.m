addpath('Functions')

%create cube
cube = createBox(2,2,2);
cube = translation(cube, [4.5,5,0]);
cc = geoCenter(cube.vertices);

%create parallelepiped
parallelepiped = createBox(2, 4, 3);
parallelepiped = rotation3DCenter(parallelepiped, [0, 0, pi/2]);
parallelepiped = translation(parallelepiped, [11.2, 6, 0]);
cpp = geoCenter(parallelepiped.vertices);

%create pyramid
pyramid = createPyramid(2.5, 2.5, 3);
pyramid = rotation3DCenter(pyramid, [0, 0, pi/4]);
pyramid = translation(pyramid, [12.8 3.5 0]);
cpi = geoCenter(pyramid.vertices);

%create trunk
trunk = createTrunk(2.5,1.5,3);
trunk = translation(trunk, [8 4 0]);
ct = geoCenter(trunk.vertices);

at = geoCenter([cc; cpp; cpi; ct]);
%at = at(:,1:3);

eye = [-10 -10 4];
n = eye - at;
n = n / norm(n);

aux = rand(1,3);

proj = ((aux * n')/norm(n)^2)*n;

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

plot3D(cube, 'r');hold on;
plot3D(parallelepiped, 'g')
plot3D(pyramid, 'm')
plot3D(trunk, 'b');
grid;
hold off;
