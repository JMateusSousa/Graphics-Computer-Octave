addpath('Functions')

%create cube
cube = createBox(2.5, 2.5, 2.5);
cube = translation(cube, [-5 2 0]);

%create parallelepiped
parallelepiped = createBox(2, 3, 4);
parallelepiped = rotation3DCenter(parallelepiped, [0, 0, pi/2]);
parallelepiped = translation(parallelepiped, [3,8,0]);

%create pyramid
pyramid = createPyramid(3, 3, 4);
pyramid = rotation3DCenter(pyramid, [0, 0, pi/6]);
pyramid = translation(pyramid, [-4, 6, 0]);

%create trunk
trunk = createTrunk(4, 2, 3);
trunk = translation(trunk, [1 2 0]);

plot3D(cube, 'r');hold on;
plot3D(parallelepiped, 'g')
plot3D(pyramid, 'm')
plot3D(trunk, 'b');
grid;
hold off;figure;

point = [0, 2, 5]
projC = projection(cube, point);
projPa = projection(parallelepiped, point);
projPi = projection(pyramid, point);
projT = projection(trunk, point);

plot3D(projC, 'r');hold on
plot3D(projPa, 'g');
plot3D(projPi, 'm');
plot3D(projT, 'b');
hold off;
grid;
figure;

