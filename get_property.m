function [ vals ] = get_property( struct_arr, prop )
    eval(strcat('vals = [struct_arr.',prop,'].'''));
end