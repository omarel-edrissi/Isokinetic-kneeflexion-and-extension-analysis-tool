
%hier weiter Arbeiten
zeilenNamen1 = {'H:Q Ratio 30°/s', 'H:Q Ratio 150°/s', 'DCR 30°/s', 'DCR 150°/s', 'DCRe 30°/s M [Nm/kg]','DCRe 30°/s Winkel [°]', 'DCRe 150°/s M [Nm/kg]','DCRe 150°/s Winkel [°]'};
zeilenNamen2 = {'PM kon 30°/s T1 [N/kg]', 'APM kon 30°/s T1 [°]', 'PM kon 150°/s T1 [N/kg]', 'APM kon 150°/s T1 [°]', 'PM exz 30°/s T1 [N/kg]', 'APM exz 30°/s T1 [°]','PM exz 150°/s T1 [N/kg]','APM exz 150°/s T1 [°]'};
zeilenNamen3 = {'PM kon 30°/s T2 [N/kg]', 'APM kon 30°/s T2 [°]', 'PM kon 150°/s T2 [N/kg]', 'APM kon 150°/s T2 [°]', 'PM exz 30°/s T2 [N/kg]', 'APM exz 30°/s T2 [°]','PM exz 150°/s T2 [N/kg]','APM exz 150°/s T2 [°]'};

spaltenName = {'Kniestrecker links';'Kniebeuger links'; 'Kniestrecker rechts';'Kniebeuger rechts'};
tablePosition = [10 10 600 300];

DatenHQR30 = [lHQRatio30 lHQRatio30 rHQRatio30 rHQRatio30];
DatenHQR150 = [lHQRatio150 lHQRatio150 rHQRatio150 rHQRatio150];

DatenDCR30 = [lDCR30 lDCR30 rDCR30 rDCR30];
DatenDCR150 = [lDCR150 lDCR150 rDCR150 rDCR150];

DatenDCRe30M = [lDCRe30(1,3) lDCRe30(1,3) rDCRe30(1,3) rDCRe30(1,3)];
DatenDCRe30W = [lDCRe30(1,1) lDCRe30(1,1) rDCRe30(1,1) rDCRe30(1,1)];

DatenDCRe150M = [lDCRe150(1,3) lDCRe150(1,3) rDCRe150(1,3) rDCRe150(1,3)];
DatenDCRe150W = [lDCRe150(1,1) lDCRe150(1,1) rDCRe150(1,1) rDCRe150(1,1)];

DatenPMkon30T1 = [Qlcon30PeakT1(1,3) Hlcon30PeakT1(1,3) Qrcon30PeakT1(1,3) Hrcon30PeakT1(1,3)];
DatenAPMkon30T1 = [Qlcon30PeakT1(1,2) Hlcon30PeakT1(1,2) Qrcon30PeakT1(1,2) Hrcon30PeakT1(1,2)];
DatenPMkon150T1 = [Qlcon150PeakT1(1,3) Hlcon150PeakT1(1,3) Qrcon150PeakT1(1,3) Hrcon150PeakT1(1,3)];
DatenAPMkon150T1 = [Qlcon150PeakT1(1,2) Hlcon150PeakT1(1,2) Qrcon150PeakT1(1,2) Hrcon150PeakT1(1,2)];

DatenPMecc30T1 = [Qlecc30PeakT1(1,3) Hlecc30PeakT1(1,3) Qrecc30PeakT1(1,3) Hrecc30PeakT1(1,3)];
DatenAPMecc30T1 = [Qlecc30PeakT1(1,2) Hlecc30PeakT1(1,2) Qrecc30PeakT1(1,2) Hrecc30PeakT1(1,2)];
DatenPMecc150T1 = [Qlecc150PeakT1(1,3) Hlecc150PeakT1(1,3) Qrecc150PeakT1(1,3) Hrecc150PeakT1(1,3)];
DatenAPMecc150T1 = [Qlecc150PeakT1(1,2) Hlecc150PeakT1(1,2) Qrecc150PeakT1(1,2) Hrecc150PeakT1(1,2)];

DatenPMkon30T2 = [Qlcon30PeakT2(1,3) Hlcon30PeakT2(1,3) Qrcon30PeakT2(1,3) Hrcon30PeakT2(1,3)];
DatenAPMkon30T2 = [Qlcon30PeakT2(1,2) Hlcon30PeakT2(1,2) Qrcon30PeakT2(1,2) Hrcon30PeakT2(1,2)];
DatenPMkon150T2 = [Qlcon150PeakT2(1,3) Hlcon150PeakT2(1,3) Qrcon150PeakT2(1,3) Hrcon150PeakT2(1,3)];
DatenAPMkon150T2 = [Qlcon150PeakT2(1,2) Hlcon150PeakT2(1,2) Qrcon150PeakT2(1,2) Hrcon150PeakT2(1,2)];

DatenPMecc30T2 = [Qlecc30PeakT2(1,3) Hlecc30PeakT2(1,3) Qrecc30PeakT2(1,3) Hrecc30PeakT2(1,3)];
DatenAPMecc30T2 = [Qlecc30PeakT2(1,2) Hlecc30PeakT2(1,2) Qrecc30PeakT2(1,2) Hrecc30PeakT2(1,2)];
DatenPMecc150T2 = [Qlecc150PeakT2(1,3) Hlecc150PeakT2(1,3) Qrecc150PeakT2(1,3) Hrecc150PeakT2(1,3)];
DatenAPMecc150T2 = [Qlecc150PeakT2(1,2) Hlecc150PeakT2(1,2) Qrecc150PeakT2(1,2) Hrecc150PeakT2(1,2)];



t = uitable(uifigure, 'Position', tablePosition, 'ColumnWidth','auto', 'RowName', [zeilenNamen1, zeilenNamen2, zeilenNamen3] ,'ColumnName', spaltenName, 'Data', [DatenHQR30; DatenHQR150; DatenDCR30; DatenDCR150; DatenDCRe30M; DatenDCRe30W; DatenDCRe150M; DatenDCRe150W; DatenPMkon30T1; DatenAPMkon30T1; DatenPMkon150T1; DatenAPMkon150T1; DatenPMecc30T1; DatenAPMecc30T1; DatenPMecc150T1; DatenAPMecc150T1; DatenPMkon30T2; DatenAPMkon30T2; DatenPMkon150T2; DatenAPMkon150T2; DatenPMecc30T2; DatenAPMecc30T2; DatenPMecc150T2; DatenAPMecc150T2]);


%PM kon 30°/s [N/kg]', 'PM kon 30°/s Winkel [°]', 'PM kon 150°/s [N/kg]', 'PM kon 150°/s Winkel [°]', 'PM exz 30°/s [N/kg]', 'PM exz 30°/s Winkel [°]', 'PM exz 150°/s [N/kg]', 'PM exz 150°/s Winkel [°]'
%DatenPMkon30; DatenPMkon30W; DatenPMkon150; DatenPMkon150W; DatenPMecc30; DatenPMecc30W; DatenPMecc150; DatenPMecc150W; 