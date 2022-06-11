function finalForm = project(initialForm, axle)
    finalForm = initialForm;
    if(axle == 1)
        mt = [1 0 0 1; 0 0 0 1; 0 0 1 1; 0 0 0 1];
    else if (axle == 2)
            mt = [0 0 0 1; 0 1 0 1; 0 0 1 1; 0 0 0 1];
        else
            mt = [1 0 0 1; 0 1 0 1; 0 0 0 1; 0 0 0 1];
        end
    end

    vertices = initialForm.vertices;
    finalForm.vertices = vertices * mt;
    finalForm.edges = createEdges(finalForm);

end

