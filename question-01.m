addpath('Functions')

%create cube
cube = createBox(2.5, 2.5, 2.5);
cube = translation(cube, [-1.25, -1.25, 0]);

plot3D(cube, 'r');
figure;

%create parallelepiped
parallelepiped = createBox(2, 3, 4);

plot3D(parallelepiped, 'g');
figure;

%create pyramid
pyramid = createPyramid(3, 3, 4);
pyramid = translation(pyramid, [-1.5, -1.5, 0]);
pyramid = rotation3D(pyramid, [0, 0, -pi/6]);

plot3D(pyramid, 'm');
figure;

%create trunk
trunk = createTrunk(4, 2, 3);

plot3D(trunk, 'b');

