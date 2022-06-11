function box = createBox(x,y,z)
    vertices = [ 0 0 0 1; x 0 0 1; x y 0 1; 0 y 0 1; 0 0 z 1; x 0 z 1; x y z 1; 0 y z 1];
    box.type = 'box';
    box.vertices = vertices;
    box.edges = createEdges(box);

end

