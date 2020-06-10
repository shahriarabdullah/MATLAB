function charnum=char_counter(fname,character)

fid=fopen(fname,'r');
charnum=-1;

if(fid~=-1)
    if(ischar(character))     
        charnum=length(find(ismember(fileread(fname),character)));
    end
    fclose(fid);
end
   
end