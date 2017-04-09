function [ vals ] = get_connectivity_input_matrix( data )
mat = zeros(5,5);
vals = [];
for d = data'
    v = [];
    mat = d.connectivity_matrix;
    %gets upper triangular as flat array
    for y = 1:21
        for x = 1:21
            if (x > y) v = [v; mat(y,x)];
            end
        end
    end
    vals = [vals; v'];
end