function trunk = createTrunk(B, b, h)
    d = (B - b)/2;
    vertices = [ 0 0 0 1; B 0 0 1; B B 0 1; 0 B 0 1; d d h 1; b+d d h 1; b+d b+d h 1; d b+d h 1];

    %vertices = [ 0 0 0 1; 2.5 0 0 1; 2.5 2.5 0 1; 0 2.5 0 1; 0.5 0.5 3 1; 2 0.5 3 1; 2 2 3 1; 0.5 2 3 1];

    trunk.type = 'trunk';
    trunk.vertices = vertices;
    trunk.edges = createEdges(trunk);
end

