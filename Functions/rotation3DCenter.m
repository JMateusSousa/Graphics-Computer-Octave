function finalForm = rotation3DCenter(initialForm, ang)
    finalForm = initialForm;

    center = geoCenter(initialForm.vertices);
    initialForm = translation(initialForm, -center);

    vertices = initialForm.vertices;

    mx = [1 0 0 0; 0 cos(ang(1)) -sin(ang(1)) 0; 0 sin(ang(1)) cos(ang(1)) 0; 0 0 0 1];
    my = [cos(ang(2)) 0 sin(ang(2)) 0; 0 1 0 0; -sin(ang(2)) 0 cos(ang(2)) 0; 0 0 0 1];
    mz = [cos(ang(3)) -sin(ang(3)) 0 0; sin(ang(3)) cos(ang(3)) 0 0; 0 0 1 0; 0 0 0 1];

    mt = mx*my*mz;

    finalForm.vertices = vertices * mt;
    finalForm.edges = createEdges(finalForm);

    finalForm = translation(finalForm, center);
 end
