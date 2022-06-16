function finalForm = project(initialForm, point)
    finalForm = initialForm;
    mt = [1 0 0 point(1);
          0 1 0 point(2);
          0 0 1 0;
          0 0 0 1] * [1 0 0 0;
                      0 1 0 0;
                      0 0 1 0;
                      0 0 -(1/point(3)) 1] * [1 0 0 -point(1);
                                       0 1 0 -point(2);
                                       0 0 1 0;
                                       0 0 0 1];

    mt(3,3) = 0;

    vertices = initialForm.vertices;
    finalForm.vertices = (mt * vertices')';
    finalForm.edges = createEdges(finalForm);
end

