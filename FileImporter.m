clear;

GewichtT1 = NaN;
GewichtT2 = NaN;

Hlcon30T1 = NaN;
Hlcon30T2 = NaN;
Hlcon150T1 = NaN;
Hlcon150T2 = NaN;

Hrcon30T1 = NaN;
Hrcon30T2 = NaN;
Hrcon150T1 = NaN;
Hrcon150T2 = NaN;

Qlcon30T1 = NaN;
Qlcon30T2 = NaN;
Qlcon150T1 = NaN;
Qlcon150T2 = NaN;

Qrcon30T1 = NaN;
Qrcon30T2 = NaN;
Qrcon150T1 = NaN;
Qrcon150T2 = NaN;

%Datenimport von 2x 16 Testdaten und 2 Gewichtsdaten

formatSpec = '%f %f %f %f %f %f %f %f %f %f';
sizeArrayAllColumns = [10 inf];

%Lokalisiere alle 17 Daten für T1
[filenameT1] = uigetfile('*.txt', 'Selektiere alle 16 IsoMed2000 Dateien, sowie die Gewichtsdatei für Test 1 (T1)','MultiSelect', 'on');
filenameT1 = filenameT1';

%Lokalisiere alle 17 Daten für T2
[filenameT2] = uigetfile('*.txt', 'Selektiere alle 16 IsoMed2000 Dateien, sowie die Gewichtsdatei für Test 2 (T2)','MultiSelect', 'on');
filenameT2 = filenameT2';

for i=1:size(filenameT1)
    
    if(i==1)
        fileID = fopen(char(filenameT1(i,1)),'r');
        GewichtT1 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        fclose(fileID);
    elseif(i==2)
        fileID = fopen(char(filenameT1(i,1)),'r');
        Hlcon30T1 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Hlcon30T1 = Hlcon30T1';
        fclose(fileID);
    elseif(i==3)
        fileID = fopen(char(filenameT1(i,1)),'r');
        Hlcon150T1 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Hlcon150T1 = Hlcon150T1';
        fclose(fileID);
    elseif(i==4)
        fileID = fopen(char(filenameT1(i,1)),'r');
        Hlecc30T1 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Hlecc30T1 = Hlecc30T1';
        fclose(fileID);
    elseif(i==5)
        fileID = fopen(char(filenameT1(i,1)),'r');
        Hlecc150T1 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Hlecc150T1 = Hlecc150T1';
        fclose(fileID);
    elseif(i==6)
        fileID = fopen(char(filenameT1(i,1)),'r');
        Hrcon30T1 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Hrcon30T1 = Hrcon30T1';
        fclose(fileID);
    elseif(i==7)
        fileID = fopen(char(filenameT1(i,1)),'r');
        Hrcon150T1 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Hrcon150T1 = Hrcon150T1';
        fclose(fileID);
    elseif(i==8)
        fileID = fopen(char(filenameT1(i,1)),'r');
        Hrecc30T1 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Hrecc30T1 = Hrecc30T1';
        fclose(fileID);
    elseif(i==9)
        fileID = fopen(char(filenameT1(i,1)),'r');
        Hrecc150T1 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Hrecc150T1 = Hrecc150T1';
        fclose(fileID);
    elseif(i==10)
        fileID = fopen(char(filenameT1(i,1)),'r');
        Qlcon30T1 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Qlcon30T1 = Qlcon30T1';
        fclose(fileID);
    elseif(i==11)
        fileID = fopen(char(filenameT1(i,1)),'r');
        Qlcon150T1 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Qlcon150T1 = Qlcon150T1';
        fclose(fileID);
    elseif(i==12)
        fileID = fopen(char(filenameT1(i,1)),'r');
        Qlecc30T1 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Qlecc30T1 = Qlecc30T1';
        fclose(fileID);
    elseif(i==13)
        fileID = fopen(char(filenameT1(i,1)),'r');
        Qlecc150T1 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Qlecc150T1 = Qlecc150T1';
        fclose(fileID);
    elseif(i==14)
        fileID = fopen(char(filenameT1(i,1)),'r');
        Qrcon30T1 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Qrcon30T1 = Qrcon30T1';
        fclose(fileID);
    elseif(i==15)
        fileID = fopen(char(filenameT1(i,1)),'r');
        Qrcon150T1 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Qrcon150T1 = Qrcon150T1';
        fclose(fileID);
    elseif(i==16)
        fileID = fopen(char(filenameT1(i,1)),'r');
        Qrecc30T1 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Qrecc30T1 = Qrecc30T1';
        fclose(fileID);
    elseif(i==17)
        fileID = fopen(char(filenameT1(i,1)),'r');
        Qrecc150T1 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Qrecc150T1 = Qrecc150T1';
        fclose(fileID);
    else
        fprintf('\nMore test 1 input files selected, then stored in test protocol.\n');   
    end
end

for i=1:size(filenameT2)
    
    if(i==1)
        fileID = fopen(char(filenameT2(i,1)),'r');
        GewichtT2 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        fclose(fileID);
    
    elseif(i==2)
        fileID = fopen(char(filenameT2(i,1)),'r');
        Hlcon30T2 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Hlcon30T2 = Hlcon30T2';
        fclose(fileID);
    elseif(i==3)
        fileID = fopen(char(filenameT2(i,1)),'r');
        Hlcon150T2 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Hlcon150T2 = Hlcon150T2';
        fclose(fileID);
    elseif(i==4)
        fileID = fopen(char(filenameT2(i,1)),'r');
        Hlecc30T2 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Hlecc30T2 = Hlecc30T2';
        fclose(fileID);
    elseif(i==5)
        fileID = fopen(char(filenameT2(i,1)),'r');
        Hlecc150T2 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Hlecc150T2 = Hlecc150T2';
        fclose(fileID);
    elseif(i==6)
        fileID = fopen(char(filenameT2(i,1)),'r');
        Hrcon30T2 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Hrcon30T2 = Hrcon30T2';
        fclose(fileID);
    elseif(i==7)
        fileID = fopen(char(filenameT2(i,1)),'r');
        Hrcon150T2 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Hrcon150T2 = Hrcon150T2';
        fclose(fileID);
    elseif(i==8)
        fileID = fopen(char(filenameT2(i,1)),'r');
        Hrecc30T2 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Hrecc30T2 = Hrecc30T2';
        fclose(fileID);
    elseif(i==9)
        fileID = fopen(char(filenameT2(i,1)),'r');
        Hrecc150T2 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Hrecc150T2 = Hrecc150T2';
        fclose(fileID);
    elseif(i==10)
        fileID = fopen(char(filenameT2(i,1)),'r');
        Qlcon30T2 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Qlcon30T2 = Qlcon30T2';
        fclose(fileID);
    elseif(i==11)
        fileID = fopen(char(filenameT2(i,1)),'r');
        Qlcon150T2 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Qlcon150T2 = Qlcon150T2';
        fclose(fileID);
    elseif(i==12)
        fileID = fopen(char(filenameT2(i,1)),'r');
        Qlecc30T2 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Qlecc30T2 = Qlecc30T2';
        fclose(fileID);
    elseif(i==13)
        fileID = fopen(char(filenameT2(i,1)),'r');
        Qlecc150T2 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Qlecc150T2 = Qlecc150T2';
        fclose(fileID);
    elseif(i==14)
        fileID = fopen(char(filenameT2(i,1)),'r');
        Qrcon30T2 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Qrcon30T2 = Qrcon30T2';
        fclose(fileID);
    elseif(i==15)
        fileID = fopen(char(filenameT2(i,1)),'r');
        Qrcon150T2 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Qrcon150T2 = Qrcon150T2';
        fclose(fileID);
    elseif(i==16)
        fileID = fopen(char(filenameT2(i,1)),'r');
        Qrecc30T2 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Qrecc30T2 = Qrecc30T2';
        fclose(fileID);
    elseif(i==17)
        fileID = fopen(char(filenameT2(i,1)),'r');
        Qrecc150T2 = fscanf(fileID,formatSpec,sizeArrayAllColumns);
        Qrecc150T2 = Qrecc150T2';
        fclose(fileID);
    else
        fprintf('\nMore test 2 input files selected, then stored in test protocol.\n');   
    end
end

%Leeren der Variablen

clear i;
clear formatSpec;
clear sizeArrayAllColumns;
clear fileID;
clear filenameT1;
clear filenameT2;

%Starte Analysatoren

AnalyseQcon;
AnalyseQecc;
AnalyseHcon;
AnalyseHecc;

HQRatioCalc;
DCRCalc;
DCReCalc;
LateralityCalc;
GraphischeAusgabe;
PMGraphischeAusgabe;
Ausgabe;
AusgabeSPSS;