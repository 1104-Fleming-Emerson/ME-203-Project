function [fxy] = get_f_xy_Ritch_Gabriel(xi,yi) %Create a function named get_f_xy_Lastname_firstname.
%Function created by Gabriel Ritch. 
%A function  Where the output is the matrix
%g(xi,yi), and the inputs are xi and yi. 
%Allow xi and yi to be any dimension and any value. 

% (xi.^3 + yi.*xi +(xi-3)^2-yi^(-0.2))/1000

fxy = (xi'^3 + yi'*xi + (xi-3)'^2 - yi'^-.2)/1000;
end

