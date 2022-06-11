addpath('Functions')

%create cube
cube = createBox(2,2,2);
cube = translation(cube, [-4.5,-5,0]);

%create parallelepiped
parallelepiped = createBox(2, 4, 3);
parallelepiped = rotation3D(parallelepiped, [0, 0, pi/2]);
parallelepiped = translation(parallelepiped, [-11.2, -7.5, 0]);

%create pyramid
pyramid = createPyramid(2.5, 2.5, 3);
pyramid = rotation3D(pyramid, [0, 0, pi/4]);
pyramid = translation(pyramid, [-12.8 -3.5 0]);

%create trunk
trunk = createTrunk(2.5,1.5,3);
trunk = translation(trunk, [-8 -4 0]);

plot3D(cube, 'r');hold on;
plot3D(parallelepiped, 'g')
plot3D(pyramid, 'm')
plot3D(trunk, 'b');
grid;
hold off;figure;

projC = projection(cube, 1);
projPa = projection(parallelepiped, 1);
projPi = projection(pyramid, 1);
projT = projection(trunk, 1);


plot3D(projC, 'r');hold on
plot3D(projPa, 'g');
plot3D(projPi, 'm');
plot3D(projT, 'b');
hold off;
grid;
figure;

projC = projection(cube, 2);
projPa = projection(parallelepiped, 2);
projPi = projection(pyramid, 2);
projT = projection(trunk, 2);

plot3D(projC, 'r');hold on;
plot3D(projPa, 'g');
plot3D(projPi, 'm');
plot3D(projT, 'b');
hold off;
grid;
figure;

projC = projection(cube, 3);
projPa = projection(parallelepiped, 3);
projPi = projection(pyramid, 3);
projT = projection(trunk, 3);

plot3D(projC, 'r');hold on
plot3D(projPa, 'g');
plot3D(projPi, 'm');
plot3D(projT, 'b');

hold off;
grid;

