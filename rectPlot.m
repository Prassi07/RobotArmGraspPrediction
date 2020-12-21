function rectPlot(y,fileNumber)
    if(fileNumber<10)
        positive= fopen(strcat('F:\Eng_6thSem\ML\ML-project\CODE\pcd000',num2str(fileNumber),'cpos.txt'),'r');
        negative= fopen(strcat('F:\Eng_6thSem\ML\ML-project\CODE\pcd000',num2str(fileNumber),'cneg.txt'),'r');
        img=imread(strcat('F:\Eng_6thSem\ML\ML-project\CODE\pcd000',num2str(fileNumber),'r.png'));
    elseif(fileNumber<100)
        positive= fopen(strcat('F:\Eng_6thSem\ML\ML-project\CODE\pcd00',num2str(fileNumber),'cpos.txt'),'r');
        negative= fopen(strcat('F:\Eng_6thSem\ML\ML-project\CODE\pcd00',num2str(fileNumber),'cneg.txt'),'r');
        img=imread(strcat('F:\Eng_6thSem\ML\ML-project\CODE\pcd00',num2str(fileNumber),'r.png'));
    elseif(fileNumber<1000)
        positive= fopen(strcat('F:\Eng_6thSem\ML\ML-project\CODE\pcd0',num2str(fileNumber),'cpos.txt'),'r');
        negative= fopen(strcat('F:\Eng_6thSem\ML\ML-project\CODE\pcd0',num2str(fileNumber),'cneg.txt'),'r');
        img=imread(strcat('F:\Eng_6thSem\ML\ML-project\CODE\pcd0',num2str(fileNumber),'r.png'));
    else
        positive= fopen(strcat('F:\Eng_6thSem\ML\ML-project\CODE\pcd',num2str(fileNumber),'cpos.txt'),'r');
        negative= fopen(strcat('F:\Eng_6thSem\ML\ML-project\CODE\pcd',num2str(fileNumber),'cneg.txt'),'r');
        img=imread(strcat('F:\Eng_6thSem\ML\ML-project\CODE\pcd',num2str(fileNumber),'r.png'));
    end
imshow(img);
hold on;
points=fscanf(positive,'%f');
points=points(1:40);
points=[points; fscanf(negative,'%f')];

count=1;
[rows,columns]=size(points);
for i=0:8:rows-1
    if(y(count)==1)
        plot([points(i+1),points(i+3)],[points(i+2), points(i+4)],'r');
        plot([points(i+3),points(i+5)],[points(i+4), points(i+6)],'r');
        plot([points(i+5),points(i+7)],[points(i+6), points(i+8)],'r');
        plot([points(i+7),points(i+1)],[points(i+8), points(i+2)],'r');
    else
        plot([points(i+1),points(i+3)],[points(i+2), points(i+4)],'b');
        plot([points(i+3),points(i+5)],[points(i+4), points(i+6)],'b');
        plot([points(i+5),points(i+7)],[points(i+6), points(i+8)],'b');
        plot([points(i+7),points(i+1)],[points(i+8), points(i+2)],'b');
    end
    if(count<(rows/4))
        count=count+1;
    end
end
hold off;
fclose(positive);
fclose(negative);