function boolean = inImage(s, x, y, method)
    % checks if point (x,y) falls inside image domain
    boolean = (x <= s(2)) && (y <= s(1)) && (x > 0) && (y > 0);
    
    if strcmp(method, 'linear') && boolean
        boolean = inImage(s, (x+1), (y+1), '');
    end
end