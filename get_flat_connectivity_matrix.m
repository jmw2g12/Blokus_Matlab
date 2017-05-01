function [ vals ] = get_flat_connectivity_matrix( data )

% Connectivity matrix is symmetrical so this gets the upper triangular
% matrix as a vector

vals = [];
for d = data'
    v = [];
    mat = d.connectivity_matrix;
    for y = 1:21
        for x = 1:21
            if (x > y) v = [v; mat(y,x)];
            end
        end
    end
    vals = [vals; v'];
end