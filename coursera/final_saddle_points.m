function indices=saddle(M)
row=size(M,1); col=size(M,2);

indices=[];
i_r=1;
i_c=1;

for ii=1:row
    for jj=1:col
        if(max(M(ii,1:end))==M(ii,jj) && min(M(1:end,jj))==M(ii,jj))
            indices(i_r,i_c)=ii;
            indices(i_r, i_c+1)=jj;
            i_r=i_r+1;
        end
    end
end     

end