%Berechnet die H:Q Ratio aus den Peak-Drehmomenten

lHQRatio30 = NaN;
lHQRatio150 = NaN;

rHQRatio30 = NaN;
rHQRatio150 = NaN;

%Links

lHQRatio30 = (Hlcon30Peak(1,3)/Qlcon30Peak(1,3));
lHQRatio150 = (Hlcon150Peak(1,3)/Qlcon150Peak(1,3));

%Rechts
rHQRatio30 = (Hrcon30Peak(1,3)/Qrcon30Peak(1,3));
rHQRatio150 = (Hrcon150Peak(1,3)/Qrcon150Peak(1,3));
