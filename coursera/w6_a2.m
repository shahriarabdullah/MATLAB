function admit=eligible(v,q)
avrg_percent=(v+q)/2;
if(avrg_percent>=92 && (v>88 && q>88))
    admit=true
else
    admit=false
end