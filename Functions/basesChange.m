function finalForm = basesChange(initialForm, base)
    finalForm = initialForm;
    vert = initialForm.vertices(:, 1:3);
    [lin, col] = size(vert);
    vert = vert * inv(base);
    vert = vert';
    vert = [vert; ones(1, lin)];
    finalForm.vertices = vert';
    finalForm.arestas = createEdges(finalForm);
end

