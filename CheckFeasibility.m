function [colChk, colDist] = CheckFeasibility(hed, posi, posj, rcoll)
    
    hed_norm = norm(hed);
    
    if hed_norm == 0
        colChk = false;
        codDist = Inf;
    end
    
    hed = hed/hed_norm;
    vec = posj - posi;
    dotVal = dot(hed,vec);
    
    if dotVal <= 0
        colChk = false;
        colDist = inf;
    else 
        colDist = norm(dotVal*hed - vec);
        if colDist <= rcoll
            colChk = true;
        else
            colChk = false;
        end
    end


end

