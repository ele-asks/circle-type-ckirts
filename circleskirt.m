%Make a circle skirt 
circleskirts(1,62,80)


function circleskirts(perc_of_circle,waist_circumference,long)
%perc of circle:
 % 1 for full circle; 
 %0.5 for half circle;
 %0.25 for quarter-circle(A-line),
 %than no longer a circle skirt type skirt
%long - how long do you want it to be? in cm 

disp(" Make sure your mesuring tape does not cut into your skin ")
disp("If the waist is too tight your breathing will be impaired ")
disp('')

if perc_of_circle<0.2  
    error( "consider making a pencil skirt,this is madness")
end
%fabric angle  : in degrees (360 for a circle)
degree=perc_of_circle*360;
msg=['Take a piece of fabbric with and draw a ', num2str(round(degree)),' degree angle'];
disp(msg)
disp('  ')
c=waist_circumference; 
m=1/perc_of_circle;
% C=2*pi*r
r=c/(2*pi);
r_waist=r*m;
r_long=r_waist+long;
disp('You will now draw the the waist of your skirt:') 
disp(['Starting from the tip of your angle, draw a radious of ',num2str(round(r_waist)),'cm'])
disp('  ')
disp('You will now cut the the bottom hem of the skirt :') 
disp(['starting from the tip of your angle, draw a radious of ' ,num2str(round(r_long)),'cm'])
disp('  ')
disp("Add 2.5 cm of seam allowance on all of your hems")
disp(" Cut the fabric and sew")
end