%Entfernung aller Datenwerte auserhalb des isokinetischen Bereichs

j=1;
for i=1:size(tempIntervalInFilter)
    if tempIntervalInFilter(i,4) >= minGeschwindigkeit && tempIntervalInFilter(i,4) <= maxGeschwindigkeit
        tempIntervalAusFilter(j,1) = tempIntervalInFilter(i,1);
        tempIntervalAusFilter(j,2) = tempIntervalInFilter(i,2);
        tempIntervalAusFilter(j,3) = tempIntervalInFilter(i,3);
        tempIntervalAusFilter(j,4) = tempIntervalInFilter(i,4);
        j=j+1;
    else
        tempIntervalAusFilter(j,1) = NaN;
        tempIntervalAusFilter(j,2) = NaN;
        tempIntervalAusFilter(j,3) = NaN;
        tempIntervalAusFilter(j,4) = NaN;
    end
end
clear tempIntervalInFilter;
clear j;
clear i;