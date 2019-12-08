%Malabanan, Angelo - Perez, Eric
%2-ece-a
%Problem3 (MATLAB)
function f = MP3_ML_Malabanan_Perez(x)

l = length(x)-1; 

for w = 1:l
    
    % f = is the polynomial funtion of the coefficient
    f = polyfit(x(:,1), x(:,2), w);
    
    polyval(f, x(:,1));
    % polyval = reprents the value by f at x
    p =(x(:,2));
    P = norm(p - polyval(f, x(:,1)));
    a = [w,P];
    %if function
    if w == 1
        y = a;
    end
    if y(2) >= a(2)
        z = a(1);
    end
    
end
 
f = polyfit(x(:,1), x(:,2), z);

end