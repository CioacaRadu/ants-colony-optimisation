function [ACOstruct] = graph_generator(ACOstruct)

%To be changed with real ROMANIAN cities

%     x=[82 91 12 92 63 9 28 55 96 97 15 98 96 49 80 14 42 92 80 96];
%     
%     y=[66 3 85 94 68 76 75 39 66 17 71 3 27 4 9 83 70 32 95 3];
% 
% n=numel(x);
% D=zeros(n,n);
% 
% for i=1:n-1
%     for j=i+1:n
% 
%         D(i,j)=sqrt((x(i)-x(j))^2+(y(i)-y(j))^2);
% 
%         D(j,i)=D(i,j);
% 
%     end
% end

n=4;
D = [0 10 1 1; 10 0 1000 100 ; 1 1000 0 200; 1 100 200 0]

ACOstruct.n_cities=n;
% ACOstruct.x_coord=x;
% ACOstruct.y_coord=y;
ACOstruct.D=D; %distance
ACOstruct.C=D; % cost of the arc


for i=1:ACOstruct.n_cities
    for j=1:ACOstruct.n_cities

        if( D(i,j) ~= 0 && i~=j )

            ACOstruct.childs(i,j) = 1;
        end

    end
end



end