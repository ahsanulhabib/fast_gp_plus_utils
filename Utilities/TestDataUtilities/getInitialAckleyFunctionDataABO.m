% Gets the initial randomly generated 2d data for Ackley function for ABO.  
%
% Usage:
%
% [X, y] = getInitialAckleyFunctionDataABO(num_points, max_t)
%
%       where X = [t, x], t = time, x = input
%
%       num_points: number of datapoints neeeded (1 x 1)
%       max_t       initial time for abo (1 x 1)
%       [X, y]:     datapoints generated (number_of_points * 2)
%
% Copyright (c) by Favour Mandanji Nyikosa (favour@robots.ox.ac.uk),2017-APR-11.

function [X, y] = getInitialAckleyFunctionDataABO(num_points, dim, max_t)
    % Info: Ackley function is usually evaluated on the
    % square x_i \in [-32.768, -32.768]
    lower_b1  = -5; %-32.768;
    %upper_b1  = 32.768;
    lower_b2  = -5; %-32.768;
    upper_b2  = 5; %32.768;
    dim_      = dim-1;
    % get data
    x1   = getInitialInputFunctionData(num_points, 1, lower_b1, max_t);
    x2   = getInitialInputFunctionData(num_points, dim_, lower_b2, upper_b2);
    X    = [x1, x2];
    y    = ackley_func_bulk(X);
end