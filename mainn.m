srcFiles = dir('C:\Users\dazzler\Documents\ai\user2\*.png');  % the folder in which ur images exists

filename = strcat('C:\Users\dazzler\Documents\ai\user2\',srcFiles(1).name);
    I = imread(filename);
    %figure, imshow(I);
    tr=main(I);
    %tr=[tr; temp];
    %display(tr);

for i = 2 : length(srcFiles)-1
    filename = strcat('C:\Users\dazzler\Documents\ai\user2\',srcFiles(i).name);
    I = imread(filename);
    %figure, imshow(I);
    temp=main(I);
    tr=[tr; temp];
   % display(temp);
    
end
%display(tr);
gr(1:10)=0;
gr(11:12)=1;
%display(size(gr));
%display(size(tr));

%SVMStruct = svmtrain(tr,gr,'kernel_function','rbf');
SVMStruct = svmtrain(tr,gr,'kernel_function',@rbf,'method','LS');

filename = 'C:\Users\dazzler\Documents\ai\user2\13.png';
    I = imread(filename);
    %figure, imshow(I);
    test1=main(I);
    
    group=svmclassify(SVMStruct,test1);
    
 
 display(group);
