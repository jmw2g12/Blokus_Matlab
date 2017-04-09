function print_property( all_data, property_name )
    for d = all_data'
        test = strcat('d.',property_name);
        disp(eval(test));
    end
end

