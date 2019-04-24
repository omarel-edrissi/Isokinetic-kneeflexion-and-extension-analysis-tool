%Berechnet die DCR aus den Peak-Drehmomenten

lDCR30 = NaN;
lDCR150 = NaN;

rDCR30 = NaN;
rDCR150 = NaN;

%Links

lDCR30 = (Hlecc30Peak(1,3)/Qlcon30Peak(1,3));
lDCR150 = (Hlecc150Peak(1,3)/Qlcon150Peak(1,3));

%Rechts
rDCR30 = (Hrecc30Peak(1,3)/Qrcon30Peak(1,3));
rDCR150 = (Hrecc150Peak(1,3)/Qrcon150Peak(1,3));
