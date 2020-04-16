function [p0, p_des] = formation(n,h)

    %% Generate initial random positions for n agents:

    for i=1:1:n

        v = [round(10*rand) round(10*rand) round(10*rand)];
        p(:,i) = v';

    end

    p0 = p(:); %initial positions organized in a column GIGA-vector

    %% Planar formation definition:

    angle = 360/(n-1);
    p_des(:,1) = [0; 0; 0];

    for i=2:1:n

        v = [cosd(i*angle) sind(i*angle) h];
        p_des(:,i) = v';

    end

    p_des = p_des(:);
    
end

