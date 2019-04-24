%AnalyseQcon.m sucht auf Basis der durch FileImporter.m übergebenen iso-
%kinetisch konzentrischen Kniestrecker Arrays (T1;T2;links;rechts;
%30°/s;150°/s) die Intervalle 1,2,3,4 und 5 und speichert diese in die 
%jeweiligen Interval Arrays. Hiebei werden die Daten mit einem Butterworth
%Filter 5zer Ordnung bei einer Cutofffrequenz von 6Hz gefiiltert und auf 
%den isokinetischen Bereich beschnitten. Im folgeschritt werden die Peak
%-Drehmomente gesucht und ebenfalls in eigene Arrays gespeichert. 
%Des Weiteren werden alle Peak-Drehmomente verglichen, das größte 
%Peakdrehmoment in einer separaten Variable gespeichert und 
%das dazugehörige Interval.

minGeschwindigkeit150 = 149;
maxGeschwindigkeit150 = 151;
minGeschwindigkeit30 = 29;
maxGeschwindigkeit30 = 31;


for z=1:8
    if(z==1)
        tempQcon = Qlcon30T1;
        minGeschwindigkeit = minGeschwindigkeit30;
        maxGeschwindigkeit = maxGeschwindigkeit30;
        tempGewicht = GewichtT1;
    elseif(z==2)
        tempQcon = Qlcon30T2;
        minGeschwindigkeit = minGeschwindigkeit30;
        maxGeschwindigkeit = maxGeschwindigkeit30;
        tempGewicht = GewichtT2;
    elseif(z==3)
        tempQcon = Qlcon150T1;
        minGeschwindigkeit = minGeschwindigkeit150;
        maxGeschwindigkeit = maxGeschwindigkeit150;
        tempGewicht = GewichtT1;
    elseif(z==4)
        tempQcon = Qlcon150T2;
        minGeschwindigkeit = minGeschwindigkeit150;
        maxGeschwindigkeit = maxGeschwindigkeit150;
        tempGewicht = GewichtT2;
    elseif(z==5)
        tempQcon = Qrcon30T1;
        minGeschwindigkeit = minGeschwindigkeit30;
        maxGeschwindigkeit = maxGeschwindigkeit30;
        tempGewicht = GewichtT1;
    elseif(z==6)
        tempQcon = Qrcon30T2;
        minGeschwindigkeit = minGeschwindigkeit30;
        maxGeschwindigkeit = maxGeschwindigkeit30;
        tempGewicht = GewichtT2;
    elseif(z==7)
        tempQcon = Qrcon150T1;
        minGeschwindigkeit = minGeschwindigkeit150;
        maxGeschwindigkeit = maxGeschwindigkeit150;
        tempGewicht = GewichtT1;
    elseif(z==8)
        tempQcon = Qrcon150T2;
        minGeschwindigkeit = minGeschwindigkeit150;
        maxGeschwindigkeit = maxGeschwindigkeit150;
        tempGewicht = GewichtT2;
    end
    
    datenInFilter = tempQcon(:,3);
    ButterworthFilter;
    tempQcon(:,3) = datenAusFilter;
    clear datenAusFilter;
    
    h=0;
    j=0;
    k=0;
    l=0;
    m=0;
    n=0;
    
    tempQconInterval1 = [NaN,NaN,NaN,NaN];
    tempQconInterval2 = [NaN,NaN,NaN,NaN];
    tempQconInterval3 = [NaN,NaN,NaN,NaN];
    tempQconInterval4 = [NaN,NaN,NaN,NaN];
    tempQconInterval5 = [NaN,NaN,NaN,NaN];
    tempQconInterval6 = [NaN,NaN,NaN,NaN];

    
    for i=1:size(tempQcon)
    
        if (tempQcon(i,6) == 2)
             h = h+1;
            %1.Spalte: Zeit in Millisekunden
            tempQconInterval1(h,1) = tempQcon(i,1);
            %2.Spalte: Relative Position in 1/10 Grad wird umgerechnet in
            %Knieflexionswinkel in Grad
            tempQconInterval1(h,2) = (tempQcon(i,2)/10)+15;
            %3.Spalte: Drehmoment in 1/10 Nm wird umgerechnet in relatives
            %Drehmoment N/kg und das Vorzeichen umgedreht
            tempQconInterval1(h,3) = ((tempQcon(i,3)/10)*-1)/tempGewicht;
            %4.Spalte: Geschwindigkeit in 1/10 Grad/Sekunde wird umgerechnet in
            %Grad/Sekunde und das Vorzeichen umgedreht
            tempQconInterval1(h,4) = (tempQcon(i,4)/10)*-1;

        elseif (tempQcon(i,6) == 4)
            j = j+1;
            %1.Spalte: Zeit in Millisekunden
            tempQconInterval2(j,1) = tempQcon(i,1);
            %2.Spalte: Relative Position in 1/10 Grad wird umgerechnet in
            %Knieflexionswinkel in Grad
            tempQconInterval2(j,2) = (tempQcon(i,2)/10)+15;
            %3.Spalte: Drehmoment in 1/10 Nm wird umgerechnet in relatives
            %Drehmoment N/kg und das Vorzeichen umgedreht
            tempQconInterval2(j,3) = ((tempQcon(i,3)/10)*-1)/tempGewicht;
            %4.Spalte: Geschwindigkeit in 1/10 Grad/Sekunde wird umgerechnet in
            %Grad/Sekunde und das Vorzeichen umgedreht
            tempQconInterval2(j,4) = (tempQcon(i,4)/10)*-1;

        elseif (tempQcon(i,6) == 6)
            k = k+1;
            %1.Spalte: Zeit in Millisekunden
            tempQconInterval3(k,1) = tempQcon(i,1);
            %2.Spalte: Relative Position in 1/10 Grad wird umgerechnet in
            %Knieflexionswinkel in Grad
            tempQconInterval3(k,2) = (tempQcon(i,2)/10)+15;
            %3.Spalte: Drehmoment in 1/10 Nm wird umgerechnet in relatives
            %Drehmoment N/kg und das Vorzeichen umgedreht
            tempQconInterval3(k,3) = ((tempQcon(i,3)/10)*-1)/tempGewicht;
            %4.Spalte: Geschwindigkeit in 1/10 Grad/Sekunde wird umgerechnet in
            %Grad/Sekunde und das Vorzeichen umgedreht
            tempQconInterval3(k,4) = (tempQcon(i,4)/10)*-1;

        elseif (tempQcon(i,6) == 8)
            l = l+1;
            %1.Spalte: Zeit in Millisekunden
            tempQconInterval4(l,1) = tempQcon(i,1);
            %2.Spalte: Relative Position in 1/10 Grad wird umgerechnet in
            %Knieflexionswinkel in Grad
            tempQconInterval4(l,2) = (tempQcon(i,2)/10)+15;
            %3.Spalte: Drehmoment in 1/10 Nm wird umgerechnet in relatives
            %Drehmoment N/kg und das Vorzeichen umgedreht
            tempQconInterval4(l,3) = ((tempQcon(i,3)/10)*-1)/tempGewicht;
            %4.Spalte: Geschwindigkeit in 1/10 Grad/Sekunde wird umgerechnet in
            %Grad/Sekunde und das Vorzeichen umgedreht
            tempQconInterval4(l,4) = (tempQcon(i,4)/10)*-1;


        elseif (tempQcon(i,6) == 10)
            m = m+1;
            %1.Spalte: Zeit in Millisekunden
            tempQconInterval5(m,1) = tempQcon(i,1);
            %2.Spalte: Relative Position in 1/10 Grad wird umgerechnet in
            %Knieflexionswinkel in Grad
            tempQconInterval5(m,2) = (tempQcon(i,2)/10)+15;
            %3.Spalte: Drehmoment in 1/10 Nm wird umgerechnet in relatives
            %Drehmoment N/kg und das Vorzeichen umgedreht
            tempQconInterval5(m,3) = ((tempQcon(i,3)/10)*-1)/tempGewicht;
            %4.Spalte: Geschwindigkeit in 1/10 Grad/Sekunde wird umgerechnet in
            %Grad/Sekunde und das Vorzeichen umgedreht
            tempQconInterval5(m,4) = (tempQcon(i,4)/10)*-1;
            
        elseif (tempQcon(i,6) == 12)
            n = n+1;
            %1.Spalte: Zeit in Millisekunden
            tempQconInterval6(n,1) = tempQcon(i,1);
            %2.Spalte: Relative Position in 1/10 Grad wird umgerechnet in
            %Knieflexionswinkel in Grad
            tempQconInterval6(n,2) = (tempQcon(i,2)/10)+15;
            %3.Spalte: Drehmoment in 1/10 Nm wird umgerechnet in relatives
            %Drehmoment N/kg und das Vorzeichen umgedreht
            tempQconInterval6(n,3) = (tempQcon(i,3)/10)/tempGewicht;
            %4.Spalte: Geschwindigkeit in 1/10 Grad/Sekunde wird umgerechnet in
            %Grad/Sekunde und das Vorzeichen umgedreht
            tempQconInterval6(n,4) = (tempQcon(i,4)/10)*-1;

        end
    end
    clear h;
    clear j;
    clear k;
    clear l;
    clear m;
    clear n;
    clear i;
    
    %Entfernung aller Datenwerte auserhalb des isokinetischen Bereichs für
    %Interval 1,2,3,4,5 und 6
    
    for y=1:6
        if (y==1)
            tempIntervalInFilter = tempQconInterval1;
            clear tempQconInterval1;
        elseif(y==2)
            tempIntervalInFilter = tempQconInterval2;
            clear tempQconInterval2;
        elseif(y==3)
            tempIntervalInFilter = tempQconInterval3;
            clear tempQconInterval3;
        elseif(y==4)
            tempIntervalInFilter = tempQconInterval4;
            clear tempQconInterval4;
        elseif(y==5)
            tempIntervalInFilter = tempQconInterval5;
            clear tempQconInterval5;
        elseif(y==6)
            tempIntervalInFilter = tempQconInterval6;
            clear tempQconInterval6;
        end
        
        %Übergabe an den Butterworth Filter
        IsokinetischerBereichFilter;
        tempQconInterval = tempIntervalAusFilter;
        clear tempIntervalAusFilter;
    
        %Suche das Peakdrehmoment aus den Intervallen 1,2,3,4 und 5 und 
        %speichere es in die Variablen tempQconIntervalXPeak
    
        tempQconIntervalPeak = [0,0,0,0];

        for i=1:size(tempQconInterval)
    
            if (tempQconInterval(i,3) >= tempQconIntervalPeak(1,3))
                tempQconIntervalPeak(1,1) = tempQconInterval(i,1);
                tempQconIntervalPeak(1,2) = tempQconInterval(i,2);
                tempQconIntervalPeak(1,3) = tempQconInterval(i,3);
                tempQconIntervalPeak(1,4) = tempQconInterval(i,4);
            end
        end
    
        clear i;
        
        if (y==1)
            tempQconInterval1 = tempQconInterval;
            tempQconInterval1Peak = tempQconIntervalPeak;
        elseif(y==2)
            tempQconInterval2 = tempQconInterval;
            tempQconInterval2Peak = tempQconIntervalPeak;

        elseif(y==3)
            tempQconInterval3 = tempQconInterval;
            tempQconInterval3Peak = tempQconIntervalPeak;
        elseif(y==4)
            tempQconInterval4 = tempQconInterval;
            tempQconInterval4Peak = tempQconIntervalPeak;
        elseif(y==5)
            tempQconInterval5 = tempQconInterval;
            tempQconInterval5Peak = tempQconIntervalPeak;
        else
           tempQconInterval6 = tempQconInterval;
            tempQconInterval6Peak = tempQconIntervalPeak;            
        end
        
        clear tempQconInterval;
        clear tempQconIntervalPeak;

    end
    
    clear y;
    
    %Vergleiche die Peak-Drehmomente aus Interval 1,2, 3,4,5 und 6 und 
    %speichere das größte Drehmoment in dem Array tempQconPeak und das
    %beste Interval im Array tempQconBestInterval

    if(tempQconInterval1Peak(1,3) >= tempQconInterval2Peak(1,3) && tempQconInterval1Peak(1,3) >= tempQconInterval3Peak(1,3) && tempQconInterval1Peak(1,3) >= tempQconInterval4Peak(1,3) && tempQconInterval1Peak(1,3) >= tempQconInterval5Peak(1,3) && tempQconInterval1Peak(1,3) >= tempQconInterval6Peak(1,3))
        tempQconPeak(1,1) = tempQconInterval1Peak(1,1);
        tempQconPeak(1,2) = tempQconInterval1Peak(1,2);
        tempQconPeak(1,3) = tempQconInterval1Peak(1,3); 
        tempQconPeak(1,4) = tempQconInterval1Peak(1,4);
        tempQconBestInterval = tempQconInterval1;
        
    elseif(tempQconInterval2Peak(1,3) >= tempQconInterval3Peak(1,3) && tempQconInterval2Peak(1,3) >= tempQconInterval4Peak(1,3) && tempQconInterval2Peak(1,3) >= tempQconInterval5Peak(1,3) && tempQconInterval2Peak(1,3) >= tempQconInterval6Peak(1,3))
        tempQconPeak(1,1) = tempQconInterval2Peak(1,1);
        tempQconPeak(1,2) = tempQconInterval2Peak(1,2);
        tempQconPeak(1,3) = tempQconInterval2Peak(1,3); 
        tempQconPeak(1,4) = tempQconInterval2Peak(1,4);
        tempQconBestInterval = tempQconInterval2;
        
    elseif(tempQconInterval3Peak(1,3) >= tempQconInterval4Peak(1,3) && tempQconInterval3Peak(1,3) >= tempQconInterval5Peak(1,3) && tempQconInterval3Peak(1,3) >= tempQconInterval6Peak(1,3))
        tempQconPeak(1,1) = tempQconInterval3Peak(1,1);
        tempQconPeak(1,2) = tempQconInterval3Peak(1,2);
        tempQconPeak(1,3) = tempQconInterval3Peak(1,3); 
        tempQconPeak(1,4) = tempQconInterval3Peak(1,4);
        tempQconBestInterval = tempQconInterval3;
        
    elseif(tempQconInterval4Peak(1,3) >= tempQconInterval5Peak(1,3) && tempQconInterval4Peak(1,3) >= tempQconInterval6Peak(1,3))
        tempQconPeak(1,1) = tempQconInterval4Peak(1,1);
        tempQconPeak(1,2) = tempQconInterval4Peak(1,2);
        tempQconPeak(1,3) = tempQconInterval4Peak(1,3); 
        tempQconPeak(1,4) = tempQconInterval4Peak(1,4);
        tempQconBestInterval = tempQconInterval4;
        
    elseif(tempQconInterval5Peak(1,3) >= tempQconInterval6Peak(1,3))
        tempQconPeak(1,1) = tempQconInterval5Peak(1,1);
        tempQconPeak(1,2) = tempQconInterval5Peak(1,2);
        tempQconPeak(1,3) = tempQconInterval5Peak(1,3); 
        tempQconPeak(1,4) = tempQconInterval5Peak(1,4);
        tempQconBestInterval = tempQconInterval5;
        
    else
        tempQconPeak(1,1) = tempQconInterval6Peak(1,1);
        tempQconPeak(1,2) = tempQconInterval6Peak(1,2);
        tempQconPeak(1,3) = tempQconInterval6Peak(1,3); 
        tempQconPeak(1,4) = tempQconInterval6Peak(1,4);
        tempQconBestInterval = tempQconInterval6;
    end
    
    %Zuordnung der temporären Intervall auf die festen Intervalle
        
    if(z==1)
        Qlcon30Interval1T1 = tempQconInterval1;
        Qlcon30Interval1PeakT1 = tempQconInterval1Peak;
        Qlcon30Interval2T1 = tempQconInterval2;
        Qlcon30Interval2PeakT1 = tempQconInterval2Peak;
        Qlcon30Interval3T1 = tempQconInterval3;
        Qlcon30Interval3PeakT1 = tempQconInterval3Peak;
        Qlcon30Interval4T1 = tempQconInterval4;
        Qlcon30Interval4PeakT1 = tempQconInterval4Peak;
        Qlcon30Interval5T1 = tempQconInterval5;
        Qlcon30Interval5PeakT1 = tempQconInterval5Peak;
        Qlcon30Interval6T1 = tempQconInterval6;
        Qlcon30Interval6PeakT1 = tempQconInterval6Peak;
        Qlcon30PeakT1 = tempQconPeak;
        Qlcon30BestIntervalT1 = tempQconBestInterval;
        clear Qlcon30T1;
    elseif(z==2)
        Qlcon30Interval1T2 = tempQconInterval1;
        Qlcon30Interval1PeakT2 = tempQconInterval1Peak;
        Qlcon30Interval2T2 = tempQconInterval2;
        Qlcon30Interval2PeakT2 = tempQconInterval2Peak;
        Qlcon30Interval3T2 = tempQconInterval3;
        Qlcon30Interval3PeakT2 = tempQconInterval3Peak;
        Qlcon30Interval4T2 = tempQconInterval4;
        Qlcon30Interval4PeakT2 = tempQconInterval4Peak;
        Qlcon30Interval5T2 = tempQconInterval5;
        Qlcon30Interval5PeakT2 = tempQconInterval5Peak;
        Qlcon30Interval6T2 = tempQconInterval6;
        Qlcon30Interval6PeakT2 = tempQconInterval6Peak;
        Qlcon30PeakT2 = tempQconPeak;
        Qlcon30BestIntervalT2 = tempQconBestInterval;
        clear Qlcon30T2;
    elseif(z==3)
        Qlcon150Interval1T1 = tempQconInterval1;
        Qlcon150Interval1PeakT1 = tempQconInterval1Peak;
        Qlcon150Interval2T1 = tempQconInterval2;
        Qlcon150Interval2PeakT1 = tempQconInterval2Peak;
        Qlcon150Interval3T1 = tempQconInterval3;
        Qlcon150Interval3PeakT1 = tempQconInterval3Peak;
        Qlcon150Interval4T1 = tempQconInterval4;
        Qlcon150Interval4PeakT1 = tempQconInterval4Peak;
        Qlcon150Interval5T1 = tempQconInterval5;
        Qlcon150Interval5PeakT1 = tempQconInterval5Peak;
        Qlcon150Interval6T1 = tempQconInterval6;
        Qlcon150Interval6PeakT1 = tempQconInterval6Peak;
        Qlcon150PeakT1 = tempQconPeak;
        Qlcon150BestIntervalT1 = tempQconBestInterval;
        clear Qlcon150T1;
    elseif(z==4)
        Qlcon150Interval1T2 = tempQconInterval1;
        Qlcon150Interval1PeakT2 = tempQconInterval1Peak;
        Qlcon150Interval2T2 = tempQconInterval2;
        Qlcon150Interval2PeakT2 = tempQconInterval2Peak;
        Qlcon150Interval3T2 = tempQconInterval3;
        Qlcon150Interval3PeakT2 = tempQconInterval3Peak;
        Qlcon150Interval4T2 = tempQconInterval4;
        Qlcon150Interval4PeakT2 = tempQconInterval4Peak;
        Qlcon150Interval5T2 = tempQconInterval5;
        Qlcon150Interval5PeakT2 = tempQconInterval5Peak;
        Qlcon150Interval6T2 = tempQconInterval6;
        Qlcon150Interval6PeakT2 = tempQconInterval6Peak;
        Qlcon150PeakT2 = tempQconPeak;
        Qlcon150BestIntervalT2 = tempQconBestInterval;
        clear Qlcon150T2;
    elseif(z==5)
        Qrcon30Interval1T1 = tempQconInterval1;
        Qrcon30Interval1PeakT1 = tempQconInterval1Peak;
        Qrcon30Interval2T1 = tempQconInterval2;
        Qrcon30Interval2PeakT1 = tempQconInterval2Peak;
        Qrcon30Interval3T1 = tempQconInterval3;
        Qrcon30Interval3PeakT1 = tempQconInterval3Peak;
        Qrcon30Interval4T1 = tempQconInterval4;
        Qrcon30Interval4PeakT1 = tempQconInterval4Peak;
        Qrcon30Interval5T1 = tempQconInterval5;
        Qrcon30Interval5PeakT1 = tempQconInterval5Peak;
        Qrcon30Interval6T1 = tempQconInterval5;
        Qrcon30Interval6PeakT1 = tempQconInterval6Peak;
        Qrcon30PeakT1 = tempQconPeak;
        Qrcon30BestIntervalT1 = tempQconBestInterval;
        clear Qrcon30T1;
    elseif(z==6)
        Qrcon30Interval1T2 = tempQconInterval1;
        Qrcon30Interval1PeakT2 = tempQconInterval1Peak;
        Qrcon30Interval2T2 = tempQconInterval2;
        Qrcon30Interval2PeakT2 = tempQconInterval2Peak;
        Qrcon30Interval3T2 = tempQconInterval3;
        Qrcon30Interval3PeakT2 = tempQconInterval3Peak;
        Qrcon30Interval4T2 = tempQconInterval4;
        Qrcon30Interval4PeakT2 = tempQconInterval4Peak;
        Qrcon30Interval5T2 = tempQconInterval5;
        Qrcon30Interval5PeakT2 = tempQconInterval5Peak;
        Qrcon30Interval6T2 = tempQconInterval6;
        Qrcon30Interval6PeakT2 = tempQconInterval6Peak;
        Qrcon30PeakT2 = tempQconPeak;
        Qrcon30BestIntervalT2 = tempQconBestInterval;
        clear Qrcon30T2;
    elseif(z==7)
        Qrcon150Interval1T1 = tempQconInterval1;
        Qrcon150Interval1PeakT1 = tempQconInterval1Peak;
        Qrcon150Interval2T1 = tempQconInterval2;
        Qrcon150Interval2PeakT1 = tempQconInterval2Peak;
        Qrcon150Interval3T1 = tempQconInterval3;
        Qrcon150Interval3PeakT1 = tempQconInterval3Peak;
        Qrcon150Interval4T1 = tempQconInterval4;
        Qrcon150Interval4PeakT1 = tempQconInterval4Peak;
        Qrcon150Interval5T1 = tempQconInterval5;
        Qrcon150Interval5PeakT1 = tempQconInterval5Peak;
        Qrcon150Interval6T1 = tempQconInterval6;
        Qrcon150Interval6PeakT1 = tempQconInterval6Peak;
        Qrcon150PeakT1 = tempQconPeak;
        Qrcon150BestIntervalT1 = tempQconBestInterval;
        clear Qrcon150T1;
    else
        Qrcon150Interval1T2 = tempQconInterval1;
        Qrcon150Interval1PeakT2 = tempQconInterval1Peak;
        Qrcon150Interval2T2 = tempQconInterval2;
        Qrcon150Interval2PeakT2 = tempQconInterval2Peak;
        Qrcon150Interval3T2 = tempQconInterval3;
        Qrcon150Interval3PeakT2 = tempQconInterval3Peak;
        Qrcon150Interval4T2 = tempQconInterval4;
        Qrcon150Interval4PeakT2 = tempQconInterval4Peak;
        Qrcon150Interval5T2 = tempQconInterval5;
        Qrcon150Interval5PeakT2 = tempQconInterval5Peak;
        Qrcon150Interval6T2 = tempQconInterval6;
        Qrcon150Interval6PeakT2 = tempQconInterval6Peak;
        Qrcon150PeakT2 = tempQconPeak;
        Qrcon150BestIntervalT2 = tempQconBestInterval;
        clear Qrcon150T2;
    end
    
    %Löschung der temporäten Variablen
    
    clear tempQconInterval1;
    clear tempQconInterval2;
    clear tempQconInterval3;
    clear tempQconInterval4;
    clear tempQconInterval5;
    clear tempQconInterval6;
    clear tempQconInterval1Peak;
    clear tempQconInterval2Peak;
    clear tempQconInterval3Peak;
    clear tempQconInterval4Peak;
    clear tempQconInterval5Peak;
    clear tempQconInterval6Peak;
    clear tempQcon;
    clear tempQconPeak;
    clear tempQconBestInterval;
    clear tempGewicht;
    clear maxGeschwindigkeit;
    clear minGeschwindigkeit;
end

%Verworfen auf Grund des Gewöhnungsprotokolls
%T2 wird nun immer als Peak und BestInterval gesetzt

%Vergleich der Peak-Drehmomente von T1 und T2 und Speicherung des größeren
%Wertes auf einer Testunabhängigen Peak Variablen

% if(Qlcon30PeakT1(1,3) >= Qlcon30PeakT2(1,3))
%     Qlcon30Peak = Qlcon30PeakT1;
%     Qlcon30BestInterval = Qlcon30BestIntervalT1;
% else
     Qlcon30Peak = Qlcon30PeakT2;
     Qlcon30BestInterval = Qlcon30BestIntervalT2;
% end
% 
% if(Qlcon150PeakT1(1,3) >= Qlcon150PeakT2(1,3))
%     Qlcon150Peak = Qlcon150PeakT1;
%     Qlcon150BestInterval = Qlcon150BestIntervalT1;
% else
     Qlcon150Peak = Qlcon150PeakT2;
     Qlcon150BestInterval = Qlcon150BestIntervalT2;
% end
% 
% if(Qrcon30PeakT1(1,3) >= Qrcon30PeakT2(1,3))
%     Qrcon30Peak = Qrcon30PeakT1;
%     Qrcon30BestInterval = Qrcon30BestIntervalT1;
% else
     Qrcon30Peak = Qrcon30PeakT2;
     Qrcon30BestInterval = Qrcon30BestIntervalT2;
% end
% 
% if(Qrcon150PeakT1(1,3) >= Qrcon150PeakT2(1,3))
%     Qrcon150Peak = Qrcon150PeakT1;
%     Qrcon150BestInterval = Qrcon150BestIntervalT1;
% else
     Qrcon150Peak = Qrcon150PeakT2;
     Qrcon150BestInterval = Qrcon150BestIntervalT2;
% end

clear z;
clear minGeschwindigkeit150;
clear maxGeschwindigkeit150;
clear minGeschwindigkeit30;
clear maxGeschwindigkeit30;
