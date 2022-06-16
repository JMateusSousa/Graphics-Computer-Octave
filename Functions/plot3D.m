function plot3D(form, color)
    edges = form.edges;
    [lin, col] = size(edges);

    for i = 1:lin
        line([edges(i,1) edges(i,4)], [edges(i,2) edges(i,5)], [edges(i,3) edges(i,6)], 'Color',color);
        hold on;
    end

    hold off;
    axis equal;

    xlabel("x")
    ylabel("y")
    zlabel("z")
    grid;
    view(-37.5,30);

    v1 = get(gca,'CameraPosition');
    fprintf('camera position: %g %g %g\n',v1);
    v2 = get(gca,'CameraTarget');
    fprintf('camera target: %g %g %g\n',v2);

end
