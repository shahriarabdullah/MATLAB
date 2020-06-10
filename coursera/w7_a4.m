function [summa, index]=max_sum(v,n)

if(n>length(v))
    summa=0;
    index=-1;
else
    sums=zeros(1,size(v,2)-n+1);
    for ii=1:size(v,2)-n+1
        sums(1,ii)=sum(v(ii:ii+n-1));
    end
    summa=max(sums);
    jj=1;
    while(sums(1,jj)~=summa)
        jj=jj+1;
    end
    index=jj;
end