function distance=get_distance(c1,c2)
persistent d, persistent c;

[d,c]=xlsread('Distances.xlsx');
indx1=find(ismember(c,c1));
indx2=find(ismember(c,c2));

if(isempty(indx1)|| isempty(indx2))
    distance=-1;
else
    i1=indx1(1)-1;
    i2=indx2(1)-1;
    distance=d(i1,i2);
end

end