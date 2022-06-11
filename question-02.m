addpath('Functions')

%create cube
cube = createBox(2.5, 2.5, 2.5);
cube = translation(cube, [-5 2 0]);

plot3D(cube, 'r');
hold on;

%create parallelepiped
parallelepiped = createBox(2, 3, 4);
parallelepiped = rotation3DCenter(parallelepiped, [0, 0, pi/2]);
parallelepiped = translation(parallelepiped, [3,8,0]);
plot3D(parallelepiped, 'g');
hold on;

%create pyramid
pyramid = createPyramid(3, 3, 4);
pyramid = rotation3DCenter(pyramid, [0, 0, pi/6]);
pyramid = translation(pyramid, [-4, 6, 0]);

plot3D(pyramid, 'm');
hold on;

%create trunk
trunk = createTrunk(4, 2, 3);
trunk = translation(trunk, [1 2 0]);
plot3D(trunk, 'b');
grid;
hold off;
