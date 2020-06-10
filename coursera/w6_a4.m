function valid=valid_date(year,month,day)

if(isscalar(year)==false || isscalar(month)==false || isscalar(day)==false)
    valid=false
else
     if mod(year,4)==0
            if mod(year,100)==0
                if mod(year,400)==0
                    leap=true;
                else
                    leap=false;
                end
            else
                leap=true;
            end
        else
            leap=false;
        end
    
    if(year<1 || month<1 || day <1)
        valid=false;
    
    else
        
        if((month==1 || month ==3 || month==5 || month ==7 || month==8 || month==10 || month==12) && day<=31)
            valid=true;
        elseif(month==2 && leap==true && day<=29)
            valid=true;
        elseif(month==2 && leap==false && day<=28)
            valid=true;
        elseif((month==4 || month==6 || month==9 || month==11) && day<=30)
            valid=true;
        else
            valid=false;
        end
    end  
        
end