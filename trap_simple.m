function [final_sum] = Untitled( a,b,n,my_fun )
    % find h and then increment from a to b
    h = (b-a) / (n)
    x = a:h:b
    % now take function defination, and value them
    % at designated points
    my_function = inline(my_fun);
    y_at_function = my_function(x)
    trap_area = [];
    % do the trp rule
    for i=1:n
      trap_area(end+1) = (0.5) * h * ( y_at_function(i) + y_at_function(i+1));
    end
    % well well, output your stuff
    final_sum = sum(trap_area);
    %fprintf('\n\nsum is %.5f\n\n', final_val)
    
end
