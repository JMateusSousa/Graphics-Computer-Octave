function finalForm = scaleTransformation(initialForm, vt)
    %Essa fun��o recebe uma matriz com pontos e um vetor de tranforma��o
    %com a escala para ca dimen��o, e retorna os pontos transformados.
    %   1 - utiliza vetor coluna

    finalForm = initialForm;
    vertices = initialForm.vertices;

    mt = eye(4);
    for i = 1:3
        mt(i,i) = vt(i);
    end

    finalForm.vertices = vertices*mt;
    finalForm.edges = createEdges(finalForm);

end
