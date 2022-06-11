function pyramid = createPyramid(x, y, z)
    vertices = [   0 0 0 1;
                 x 0 0 1;
                 x y 0 1;
                 0 y 0 1;
                 x/2 y/2 z 1];

    pyramid.type = 'pyramid';
    pyramid.vertices = vertices;
    pyramid.edges = createEdges(pyramid);

end

