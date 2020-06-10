function output=blur(img,w)
row=size(img,1);
col=size(img,2);

output=uint8(zeros(row,col));

for ii=1:row
    for jj=1:col
        sm=(0);
        sz=0;
        corner=[ii jj]-w;
        for r=corner(1):(corner(1)+(2*w))
            for c=corner(2):(corner(2)+(2*w))
                if((r>0 && r<=row) && (c>0 && c<=col))
                    sz=sz+1;                
                    sm=[sm, img(r,c)];
                end
            end
        end
        m=sum(sm)/(sz);
        output(ii,jj)=uint8(m);
    end
end
             
end