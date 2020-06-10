function summa=halfsum(m)

summa=0;
[row col]=size(m);

for ii=1:row
    for jj=ii:col
        summa=summa+m(ii,jj);
    end
end

end