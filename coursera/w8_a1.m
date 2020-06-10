function coded=caesar(txt,shift)

txt=txt+shift;

while((all(txt>=32) && all(txt<=126))~=1)
    if(shift>=0)
        txt(txt>126)=txt(txt>126)-95;
    else
        txt(txt<32)=txt(txt<32)+95;
    end
end

coded=char(txt);
end