function [y] = egg_func_glo(x)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% EGGHOLDER FUNCTION
%
% Authors: Sonja Surjanovic, Simon Fraser University
%          Derek Bingham, Simon Fraser University
% Questions/Comments: Please email Derek Bingham at dbingham@stat.sfu.ca.
%
% Copyright 2013. Derek Bingham, Simon Fraser University.
%
% THERE IS NO WARRANTY, EXPRESS OR IMPLIED. WE DO NOT ASSUME ANY LIABILITY
% FOR THE USE OF THIS SOFTWARE.  If software is modified to produce
% derivative works, such modified software should be clearly marked.
% Additionally, this program is free software; you can redistribute it 
% and/or modify it under the terms of the GNU General Public License as 
% published by the Free Software Foundation; version 2.0 of the License. 
% Accordingly, this program is distributed in the hope that it will be 
% useful, but WITHOUT ANY WARRANTY; without even the implied warranty 
% of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU 
% General Public License for more details.
%
% For function details and reference information, see:
% http://www.sfu.ca/~ssurjano/
%
% Modified by Favour Mandanji Nyikosa on November 3rd 2016
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% declare global variables
global init_t
global i      
global delta_t
global times
global traceX
global traceFunc

%disp(['i = ', num2str(i)])
%-------------------------------------------------------------------------------

% get current time tag
current_t   = init_t + (i-1)*delta_t;
times(i)    = current_t;

% update input variable
temp        = current_t .* ones( size( xx(:,1) )  );
xx          = [temp, xx];

traceX(i,:) = xx;

%-------------------------------------------------------------------------------



x1    = x(:,1); 
x2    = x(:,2);

term1 = -(x2+47) .* sin(sqrt(abs(x2+x1./2+47)));
term2 = -x1 .* sin(sqrt(abs(x1-(x2+47))));

y = term1 + term2;

y = y;

traceFunc(i)   = y;

% update iterator i
i           = i + 1;

end