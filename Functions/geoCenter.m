function center = geoCenter(m)
    m = m(:,1:3)';

    [lin, col] = size(m);
    center = zeros(1,lin);

    for i = 1:lin
        sum = 0;
        for j = 1:col
            sum = sum + m(i,j);
        end
        center(i) = sum/col
    end
end
