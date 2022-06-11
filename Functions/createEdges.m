function edgesForm = createEdges(form)
    vertices = form.vertices;
    switch form.type
        case 'box'
            A = vertices(1,1:3);
            B = vertices(2,1:3);
            C = vertices(3,1:3);
            D = vertices(4,1:3);
            E = vertices(5,1:3);
            F = vertices(6,1:3);
            G = vertices(7,1:3);
            H = vertices(8,1:3);

            edgesForm = [A B; B C; C D; D A; E F; F G; G H; H E; C G; B F; D H; A E];

        case 'pyramid'
            A = vertices(1,1:3);
            B = vertices(2,1:3);
            C = vertices(3,1:3);
            D = vertices(4,1:3);
            E = vertices(5,1:3);

            edgesForm = [A B; B C; C D; D A; A E; B E; C E; D E];

        case 'trunk'
            A = vertices(1,1:3);
            B = vertices(2,1:3);
            C = vertices(3,1:3);
            D = vertices(4,1:3);
            E = vertices(5,1:3);
            F = vertices(6,1:3);
            G = vertices(7,1:3);
            H = vertices(8,1:3);

            edgesForm = [A B; B C; C D; D A; E F; F G; G H; H E; C G; B F; D H; A E];
    end

end

