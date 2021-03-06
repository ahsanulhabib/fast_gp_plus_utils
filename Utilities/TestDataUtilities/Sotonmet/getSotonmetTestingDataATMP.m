% Gets the air temperature testing data from Sotonmet sensors.
% Data is from dates: 30/MAR/17 to 31/MAR/17 (2 days)
%
% See: http://www.sotonmet.co.uk
%
% Usage:
%
% [X, y] = getSotonmetTestingDataATMP()
%
%       [X, y]:     testing data
%       
% X has the following fields:
%       longitude 
%       latitude 
%       day
%       hour 
%       minute
%
% y is the air temperature
%
% Copyright (c) by Favour Mandanji Nyikosa (favour@robots.ox.ac.uk),2017-APR-18.

function [X, y] = getSotonmetTestingDataATMP()
    data = load('sotonmet_atmp_test');
    X    = data.xte;
    y    = data.yte;
end