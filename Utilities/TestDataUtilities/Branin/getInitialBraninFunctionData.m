% Gets the initial randomly generated 2d data for Branin function.  
%
% Usage:
%
% [X, y] = getInitialBraninFunctionData(num_points)
%
%       num_points: number of datapoints neeeded (1 x 1)
%       [X, y]:     datapoints generated (number_of_points * 2)
%
% Copyright (c) by Favour Mandanji Nyikosa (favour@robots.ox.ac.uk),2017-APR-11.

function [X, y] = getInitialBraninFunctionData(num_points)
    % Info: Branin function is usually evaluated on the
    % square x1 \in [-5, 10], x2 \in [0, 15]
    lower_b1  = -5;
    upper_b1  = 10;
    lower_b2  = 0;
    upper_b2  = 15;
    % get data
    x1   = getInitialInputFunctionData(num_points, 1, lower_b1, upper_b1);
    x2   = getInitialInputFunctionData(num_points, 1, lower_b2, upper_b2);
    X    = [x1, x2];
    y    = branin_func_bulk(X);
end