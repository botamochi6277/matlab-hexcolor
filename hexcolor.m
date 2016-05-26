function [ v ] = hexcolor( str )
% HEXCOLOR - convert hex colorcode into RGB vector for matlab
%   col = hexcolor(str)
% 
%   str: string data including '#FF0000'
% 
%   e.g.
%   col = hexcolor('#5856D6')
%
% See also HEX2DEC.

if ~ischar(str)
    error('input string data');
elseif ~strcmp(str(1),'#')    
    error('The first letter must be "#".');
elseif length(str) ~= 7
    error('Length of str is not suitable');
end

R = hex2dec(str(2:3))/255;
G = hex2dec(str(4:5))/255;
B = hex2dec(str(6:7))/255;
v = [R, G, B];

end

