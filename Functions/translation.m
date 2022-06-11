function finalForm = translation(initialForm, vt)
    finalForm = initialForm;
    vertices = initialForm.vertices;

    mt = eye(4); % Create identity matrix
    mt = [mt(1:3,:); vt(:,1:3) 1];
    finalForm.vertices = vertices * mt;
    finalForm.edges = createEdges(finalForm);
end
