fileID = fopen('ExportBestIntervalHlcon150.txt','w');
fprintf(fileID,'%d;%d;%d;\n', Hlcon150BestInterval(:,2), Hlcon150BestInterval(:,3), Hlcon150BestInterval(:,4));
fclose(fileID);