function matrix=sparse2matrix(cv)

matrix=zeros(cv{1}(1),cv{1}(2))+cv{2};
if(length(cv)>2)
    for ii=3:length(cv)
        matrix(cv{ii}(1),cv{ii}(2))=cv{ii}(3);
    end
end

end