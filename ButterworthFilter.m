%Butterworth filter Eigenschaften
%Cut off Frequenz 6Hz
fc = 6;
%Aufzeichnungsfrequenz 200Hz
fs = 200;

%Butterworth Filter nach 5ter Ordnung
[b,a] = butter(5,fc/(fs/2));
datenAusFilter = filter(b,a,datenInFilter);
clear datenInFilter;

clear fc;
clear fs;
clear a;
clear b;