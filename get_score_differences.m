function [ output ] = get_score_differences( struct_arr )
    vals = [struct_arr.final_score].'
    p1_scores = vals(1:2:end,:)  % odd matrix
    p2_scores = vals(2:2:end,:)  % even matrix
    output = p1_scores-p2_scores; %if positive then p1 won
end

