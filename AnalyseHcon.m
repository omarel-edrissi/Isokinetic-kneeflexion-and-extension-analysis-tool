%AnalyseHcon.m sucht auf Basis der durch FileImporter.m ?bergebenen iso-
%kinetisch konzentrischen Kniestrecker Arrays (T1;T2;links;rechts;
%30?/s;150?/s) die Intervalle 1,2,3,4 und 5 und speichert diese in die 
%jeweiligen Interval Arrays. Hiebei werden die Daten mit einem Butterworth
%Filter 5zer Ordnung bei einer Cutofffrequenz von 6Hz gefiiltert und auf 
%den isokinetischen Bereich beschnitten. Im folgeschritt werden die Peak
%-Drehmomente gesucht und ebenfalls in eigene Arrays gespeichert. 
%Des Weiteren werden alle Peak-Drehmomente verglichen, das gr??te 
%Peakdrehmoment in einer separaten Variable gespeichert und 
%das dazugeh?rige Interval.

minGeschwindigkeit150 = 149;
maxGeschwindigkeit150 = 151;
minGeschwindigkeit30 = 29;
maxGeschwindigkeit30 = 31;

for z=1:8
    if(z==1)
        tempHcon = Hlcon30T1;
        minGeschwindigkeit = minGeschwindigkeit30;
        maxGeschwindigkeit = maxGeschwindigkeit30;
        tempGewicht = GewichtT1;
    elseif(z==2)
        tempHcon = Hlcon30T2;
        minGeschwindigkeit = minGeschwindigkeit30;
        maxGeschwindigkeit = maxGeschwindigkeit30;
        tempGewicht = GewichtT2;
    elseif(z==3)
        tempHcon = Hlcon150T1;
        minGeschwindigkeit = minGeschwindigkeit150;
        maxGeschwindigkeit = maxGeschwindigkeit150;
        tempGewicht = GewichtT1;
    elseif(z==4)
        tempHcon = Hlcon150T2;
        minGeschwindigkeit = minGeschwindigkeit150;
        maxGeschwindigkeit = maxGeschwindigkeit150;
        tempGewicht = GewichtT2;
    elseif(z==5)
        tempHcon = Hrcon30T1;
        minGeschwindigkeit = minGeschwindigkeit30;
        maxGeschwindigkeit = maxGeschwindigkeit30;
        tempGewicht = GewichtT1;
    elseif(z==6)
        tempHcon = Hrcon30T2;
        minGeschwindigkeit = minGeschwindigkeit30;
        maxGeschwindigkeit = maxGeschwindigkeit30;
        tempGewicht = GewichtT2;
    elseif(z==7)
        tempHcon = Hrcon150T1;
        minGeschwindigkeit = minGeschwindigkeit150;
        maxGeschwindigkeit = maxGeschwindigkeit150;
        tempGewicht = GewichtT1;
    elseif(z==8)
        tempHcon = Hrcon150T2;
        minGeschwindigkeit = minGeschwindigkeit150;
        maxGeschwindigkeit = maxGeschwindigkeit150;
        tempGewicht = GewichtT2;
    end
    
    datenInFilter = tempHcon(:,3);
    ButterworthFilter;
    tempHcon(:,3) = datenAusFilter;
    clear datenAusFilter;
    
    h=0;
    j=0;
    k=0;
    l=0;
    m=0;
    n=0;
    
    tempHconInterval1 = [NaN,NaN,NaN,NaN];
    tempHconInterval2 = [NaN,NaN,NaN,NaN];
    tempHconInterval3 = [NaN,NaN,NaN,NaN];
    tempHconInterval4 = [NaN,NaN,NaN,NaN];
    tempHconInterval5 = [NaN,NaN,NaN,NaN];
    tempHconInterval6 = [NaN,NaN,NaN,NaN];
    
    for i=1:size(tempHcon)
    
        if (tempHcon(i,6) == 1)
             h = h+1;
            %1.Spalte: Zeit in Millisekunden
            tempHconInterval1(h,1) = tempHcon(i,1);
            %2.Spalte: Relative Position in 1/10 Grad wird umgerechnet in
            %Knieflexionswinkel in Grad
            tempHconInterval1(h,2) = (tempHcon(i,2)/10)+90+20;
            %3.Spalte: Drehmoment in 1/10 Nm wird umgerechnet in relatives
            %Drehmoment N/kg und das Vorzeichen umgedreht
            tempHconInterval1(h,3) = (tempHcon(i,3)/10)/tempGewicht;
            %4.Spalte: Geschwindigkeit in 1/10 Grad/Sekunde wird umgerechnet in
            %Grad/Sekunde und das Vorzeichen umgedreht
            tempHconInterval1(h,4) = (tempHcon(i,4)/10);

        elseif (tempHcon(i,6) == 3)
            j = j+1;
            %1.Spalte: Zeit in Millisekunden
            tempHconInterval2(j,1) = tempHcon(i,1);
            %2.Spalte: Relative Position in 1/10 Grad wird umgerechnet in
            %Knieflexionswinkel in Grad
            tempHconInterval2(j,2) = (tempHcon(i,2)/10)+90+20;
            %3.Spalte: Drehmoment in 1/10 Nm wird umgerechnet in relatives
            %Drehmoment N/kg und das Vorzeichen umgedreht
            tempHconInterval2(j,3) = (tempHcon(i,3)/10)/tempGewicht;
            %4.Spalte: Geschwindigkeit in 1/10 Grad/Sekunde wird umgerechnet in
            %Grad/Sekunde und das Vorzeichen umgedreht
            tempHconInterval2(j,4) = (tempHcon(i,4)/10);

        elseif (tempHcon(i,6) == 5)
            k = k+1;
            %1.Spalte: Zeit in Millisekunden
            tempHconInterval3(k,1) = tempHcon(i,1);
            %2.Spalte: Relative Position in 1/10 Grad wird umgerechnet in
            %Knieflexionswinkel in Grad
            tempHconInterval3(k,2) = (tempHcon(i,2)/10)+90+20;
            %3.Spalte: Drehmoment in 1/10 Nm wird umgerechnet in relatives
            %Drehmoment N/kg und das Vorzeichen umgedreht
            tempHconInterval3(k,3) = (tempHcon(i,3)/10)/tempGewicht;
            %4.Spalte: Geschwindigkeit in 1/10 Grad/Sekunde wird umgerechnet in
            %Grad/Sekunde und das Vorzeichen umgedreht
            tempHconInterval3(k,4) = (tempHcon(i,4)/10);

        elseif (tempHcon(i,6) == 7)
            l = l+1;
            %1.Spalte: Zeit in Millisekunden
            tempHconInterval4(l,1) = tempHcon(i,1);
            %2.Spalte: Relative Position in 1/10 Grad wird umgerechnet in
            %Knieflexionswinkel in Grad
            tempHconInterval4(l,2) = (tempHcon(i,2)/10)+90+20;
            %3.Spalte: Drehmoment in 1/10 Nm wird umgerechnet in relatives
            %Drehmoment N/kg und das Vorzeichen umgedreht
            tempHconInterval4(l,3) = (tempHcon(i,3)/10)/tempGewicht;
            %4.Spalte: Geschwindigkeit in 1/10 Grad/Sekunde wird umgerechnet in
            %Grad/Sekunde und das Vorzeichen umgedreht
            tempHconInterval4(l,4) = (tempHcon(i,4)/10);


        elseif (tempHcon(i,6) == 9)
            m = m+1;
            %1.Spalte: Zeit in Millisekunden
            tempHconInterval5(m,1) = tempHcon(i,1);
            %2.Spalte: Relative Position in 1/10 Grad wird umgerechnet in
            %Knieflexionswinkel in Grad
            tempHconInterval5(m,2) = (tempHcon(i,2)/10)+90+20;
            %3.Spalte: Drehmoment in 1/10 Nm wird umgerechnet in relatives
            %Drehmoment N/kg und das Vorzeichen umgedreht
            tempHconInterval5(m,3) = (tempHcon(i,3)/10)/tempGewicht;
            %4.Spalte: Geschwindigkeit in 1/10 Grad/Sekunde wird umgerechnet in
            %Grad/Sekunde und das Vorzeichen umgedreht
            tempHconInterval5(m,4) = (tempHcon(i,4)/10);
            
        elseif (tempHcon(i,6) == 11)
            n = n+1;
            %1.Spalte: Zeit in Millisekunden
            tempHconInterval6(n,1) = tempHcon(i,1);
            %2.Spalte: Relative Position in 1/10 Grad wird umgerechnet in
            %Knieflexionswinkel in Grad
            tempHconInterval6(n,2) = (tempHcon(i,2)/10)+90+20;
            %3.Spalte: Drehmoment in 1/10 Nm wird umgerechnet in relatives
            %Drehmoment N/kg und das Vorzeichen umgedreht
            tempHconInterval6(n,3) = (tempHcon(i,3)/10)/tempGewicht;
            %4.Spalte: Geschwindigkeit in 1/10 Grad/Sekunde wird umgerechnet in
            %Grad/Sekunde und das Vorzeichen umgedreht
            tempHconInterval6(n,4) = (tempHcon(i,4)/10);

        end
    end
    clear h;
    clear j;
    clear k;
    clear l;
    clear m;
    clear n;
    clear i;
    
    %% Isokinetischer Bereich
    %Entfernung aller Datenwerte auserhalb des isokinetischen Bereichs f?r
    %Interval 1,2,3,4,5 und 6
    
    for y=1:6
        if (y==1)
            tempIntervalInFilter = tempHconInterval1;
            clear tempHconInterval1;
        elseif(y==2)
            tempIntervalInFilter = tempHconInterval2;
            clear tempHconInterval2;
        elseif(y==3)
            tempIntervalInFilter = tempHconInterval3;
            clear tempHconInterval3;
        elseif(y==4)
            tempIntervalInFilter = tempHconInterval4;
            clear tempHconInterval4;
        elseif(y==5)
            tempIntervalInFilter = tempHconInterval5;
            clear tempHconInterval5;
        elseif(y==6)
            tempIntervalInFilter = tempHconInterval6;
            clear tempHconInterval6;
        end
        
        %% Filterung
        %Uebergabe an den Butterworth Filter
        IsokinetischerBereichFilter;
        tempHconInterval = tempIntervalAusFilter;
        clear tempIntervalAusFilter;
    
        %% Suche der Peak Drehmomente
        %Suche das Peakdrehmoment aus den Intervallen 1,2,3,4 und 5 und 
        %speichere es in die Variablen tempHconIntervalXPeak
        
        tempHconIntervalPeak = [0,0,0,0];


        for i=1:size(tempHconInterval)
    
            if (tempHconInterval(i,3) >= tempHconIntervalPeak(1,3))
                tempHconIntervalPeak(1,1) = tempHconInterval(i,1);
                tempHconIntervalPeak(1,2) = tempHconInterval(i,2);
                tempHconIntervalPeak(1,3) = tempHconInterval(i,3);
                tempHconIntervalPeak(1,4) = tempHconInterval(i,4);
            end
        end
    
        clear i;
        
        if (y==1)
            tempHconInterval1 = tempHconInterval;
            tempHconInterval1Peak = tempHconIntervalPeak;
        elseif(y==2)
            tempHconInterval2 = tempHconInterval;
            tempHconInterval2Peak = tempHconIntervalPeak;

        elseif(y==3)
            tempHconInterval3 = tempHconInterval;
            tempHconInterval3Peak = tempHconIntervalPeak;
        elseif(y==4)
            tempHconInterval4 = tempHconInterval;
            tempHconInterval4Peak = tempHconIntervalPeak;
        elseif(y==5)
            tempHconInterval5 = tempHconInterval;
            tempHconInterval5Peak = tempHconIntervalPeak;
        else
           tempHconInterval6 = tempHconInterval;
            tempHconInterval6Peak = tempHconIntervalPeak;            
        end
        
        clear tempHconInterval;
        clear tempHconIntervalPeak;

    end
    
    clear y;
    
    %% Vergleich der Peak Drehmomente aus allen Intervallen
    %Vergleiche die Peak-Drehmomente aus Interval 1,2,3,4,5 und 6 und 
    %speichere das groeszte Drehmoment in dem Array tempHconPeak und das
    %beste Interval im Array tempHconBestInterval

    if(tempHconInterval1Peak(1,3) >= tempHconInterval2Peak(1,3) && tempHconInterval1Peak(1,3) >= tempHconInterval3Peak(1,3) && tempHconInterval1Peak(1,3) >= tempHconInterval4Peak(1,3) && tempHconInterval1Peak(1,3) >= tempHconInterval5Peak(1,3) && tempHconInterval1Peak(1,3) >= tempHconInterval6Peak(1,3))
        tempHconPeak(1,1) = tempHconInterval1Peak(1,1);
        tempHconPeak(1,2) = tempHconInterval1Peak(1,2);
        tempHconPeak(1,3) = tempHconInterval1Peak(1,3); 
        tempHconPeak(1,4) = tempHconInterval1Peak(1,4);
        tempHconBestInterval = tempHconInterval1;
        
    elseif(tempHconInterval2Peak(1,3) >= tempHconInterval3Peak(1,3) && tempHconInterval2Peak(1,3) >= tempHconInterval4Peak(1,3) && tempHconInterval2Peak(1,3) >= tempHconInterval5Peak(1,3) && tempHconInterval2Peak(1,3) >= tempHconInterval6Peak(1,3))
        tempHconPeak(1,1) = tempHconInterval2Peak(1,1);
        tempHconPeak(1,2) = tempHconInterval2Peak(1,2);
        tempHconPeak(1,3) = tempHconInterval2Peak(1,3); 
        tempHconPeak(1,4) = tempHconInterval2Peak(1,4);
        tempHconBestInterval = tempHconInterval2;
        
    elseif(tempHconInterval3Peak(1,3) >= tempHconInterval4Peak(1,3) && tempHconInterval3Peak(1,3) >= tempHconInterval5Peak(1,3) && tempHconInterval3Peak(1,3) >= tempHconInterval6Peak(1,3))
        tempHconPeak(1,1) = tempHconInterval3Peak(1,1);
        tempHconPeak(1,2) = tempHconInterval3Peak(1,2);
        tempHconPeak(1,3) = tempHconInterval3Peak(1,3); 
        tempHconPeak(1,4) = tempHconInterval3Peak(1,4);
        tempHconBestInterval = tempHconInterval3;
        
    elseif(tempHconInterval4Peak(1,3) >= tempHconInterval5Peak(1,3) && tempHconInterval4Peak(1,3) >= tempHconInterval6Peak(1,3))
        tempHconPeak(1,1) = tempHconInterval4Peak(1,1);
        tempHconPeak(1,2) = tempHconInterval4Peak(1,2);
        tempHconPeak(1,3) = tempHconInterval4Peak(1,3); 
        tempHconPeak(1,4) = tempHconInterval4Peak(1,4);
        tempHconBestInterval = tempHconInterval4;
        
    elseif(tempHconInterval5Peak(1,3) >= tempHconInterval6Peak(1,3))
        tempHconPeak(1,1) = tempHconInterval5Peak(1,1);
        tempHconPeak(1,2) = tempHconInterval5Peak(1,2);
        tempHconPeak(1,3) = tempHconInterval5Peak(1,3); 
        tempHconPeak(1,4) = tempHconInterval5Peak(1,4);
        tempHconBestInterval = tempHconInterval5;
        
    else
        tempHconPeak(1,1) = tempHconInterval6Peak(1,1);
        tempHconPeak(1,2) = tempHconInterval6Peak(1,2);
        tempHconPeak(1,3) = tempHconInterval6Peak(1,3); 
        tempHconPeak(1,4) = tempHconInterval6Peak(1,4);
        tempHconBestInterval = tempHconInterval6;
    end
    
    %Zuordnung der temporaeren Intervall auf die festen Intervalle
        
    if(z==1)
        Hlcon30Interval1T1 = tempHconInterval1;
        Hlcon30Interval1PeakT1 = tempHconInterval1Peak;
        Hlcon30Interval2T1 = tempHconInterval2;
        Hlcon30Interval2PeakT1 = tempHconInterval2Peak;
        Hlcon30Interval3T1 = tempHconInterval3;
        Hlcon30Interval3PeakT1 = tempHconInterval3Peak;
        Hlcon30Interval4T1 = tempHconInterval4;
        Hlcon30Interval4PeakT1 = tempHconInterval4Peak;
        Hlcon30Interval5T1 = tempHconInterval5;
        Hlcon30Interval5PeakT1 = tempHconInterval5Peak;
        Hlcon30Interval6T1 = tempHconInterval6;
        Hlcon30Interval6PeakT1 = tempHconInterval6Peak;
        Hlcon30PeakT1 = tempHconPeak;
        Hlcon30BestIntervalT1 = tempHconBestInterval;
        clear Hlcon30T1;
    elseif(z==2)
        Hlcon30Interval1T2 = tempHconInterval1;
        Hlcon30Interval1PeakT2 = tempHconInterval1Peak;
        Hlcon30Interval2T2 = tempHconInterval2;
        Hlcon30Interval2PeakT2 = tempHconInterval2Peak;
        Hlcon30Interval3T2 = tempHconInterval3;
        Hlcon30Interval3PeakT2 = tempHconInterval3Peak;
        Hlcon30Interval4T2 = tempHconInterval4;
        Hlcon30Interval4PeakT2 = tempHconInterval4Peak;
        Hlcon30Interval5T2 = tempHconInterval5;
        Hlcon30Interval5PeakT2 = tempHconInterval5Peak;
        Hlcon30Interval6T2 = tempHconInterval6;
        Hlcon30Interval6PeakT2 = tempHconInterval6Peak;
        Hlcon30PeakT2 = tempHconPeak;
        Hlcon30BestIntervalT2 = tempHconBestInterval;
        clear Hlcon30T2;
    elseif(z==3)
        Hlcon150Interval1T1 = tempHconInterval1;
        Hlcon150Interval1PeakT1 = tempHconInterval1Peak;
        Hlcon150Interval2T1 = tempHconInterval2;
        Hlcon150Interval2PeakT1 = tempHconInterval2Peak;
        Hlcon150Interval3T1 = tempHconInterval3;
        Hlcon150Interval3PeakT1 = tempHconInterval3Peak;
        Hlcon150Interval4T1 = tempHconInterval4;
        Hlcon150Interval4PeakT1 = tempHconInterval4Peak;
        Hlcon150Interval5T1 = tempHconInterval5;
        Hlcon150Interval5PeakT1 = tempHconInterval5Peak;
        Hlcon150Interval6T1 = tempHconInterval6;
        Hlcon150Interval6PeakT1 = tempHconInterval6Peak;
        Hlcon150PeakT1 = tempHconPeak;
        Hlcon150BestIntervalT1 = tempHconBestInterval;
        clear Hlcon150T1;
    elseif(z==4)
        Hlcon150Interval1T2 = tempHconInterval1;
        Hlcon150Interval1PeakT2 = tempHconInterval1Peak;
        Hlcon150Interval2T2 = tempHconInterval2;
        Hlcon150Interval2PeakT2 = tempHconInterval2Peak;
        Hlcon150Interval3T2 = tempHconInterval3;
        Hlcon150Interval3PeakT2 = tempHconInterval3Peak;
        Hlcon150Interval4T2 = tempHconInterval4;
        Hlcon150Interval4PeakT2 = tempHconInterval4Peak;
        Hlcon150Interval5T2 = tempHconInterval5;
        Hlcon150Interval5PeakT2 = tempHconInterval5Peak;
        Hlcon150Interval6T2 = tempHconInterval6;
        Hlcon150Interval6PeakT2 = tempHconInterval6Peak;
        Hlcon150PeakT2 = tempHconPeak;
        Hlcon150BestIntervalT2 = tempHconBestInterval;
        clear Hlcon150T2;
    elseif(z==5)
        Hrcon30Interval1T1 = tempHconInterval1;
        Hrcon30Interval1PeakT1 = tempHconInterval1Peak;
        Hrcon30Interval2T1 = tempHconInterval2;
        Hrcon30Interval2PeakT1 = tempHconInterval2Peak;
        Hrcon30Interval3T1 = tempHconInterval3;
        Hrcon30Interval3PeakT1 = tempHconInterval3Peak;
        Hrcon30Interval4T1 = tempHconInterval4;
        Hrcon30Interval4PeakT1 = tempHconInterval4Peak;
        Hrcon30Interval5T1 = tempHconInterval5;
        Hrcon30Interval5PeakT1 = tempHconInterval5Peak;
        Hrcon30Interval6T1 = tempHconInterval5;
        Hrcon30Interval6PeakT1 = tempHconInterval6Peak;
        Hrcon30PeakT1 = tempHconPeak;
        Hrcon30BestIntervalT1 = tempHconBestInterval;
        clear Hrcon30T1;
    elseif(z==6)
        Hrcon30Interval1T2 = tempHconInterval1;
        Hrcon30Interval1PeakT2 = tempHconInterval1Peak;
        Hrcon30Interval2T2 = tempHconInterval2;
        Hrcon30Interval2PeakT2 = tempHconInterval2Peak;
        Hrcon30Interval3T2 = tempHconInterval3;
        Hrcon30Interval3PeakT2 = tempHconInterval3Peak;
        Hrcon30Interval4T2 = tempHconInterval4;
        Hrcon30Interval4PeakT2 = tempHconInterval4Peak;
        Hrcon30Interval5T2 = tempHconInterval5;
        Hrcon30Interval5PeakT2 = tempHconInterval5Peak;
        Hrcon30Interval6T2 = tempHconInterval6;
        Hrcon30Interval6PeakT2 = tempHconInterval6Peak;
        Hrcon30PeakT2 = tempHconPeak;
        Hrcon30BestIntervalT2 = tempHconBestInterval;
        clear Hrcon30T2;
    elseif(z==7)
        Hrcon150Interval1T1 = tempHconInterval1;
        Hrcon150Interval1PeakT1 = tempHconInterval1Peak;
        Hrcon150Interval2T1 = tempHconInterval2;
        Hrcon150Interval2PeakT1 = tempHconInterval2Peak;
        Hrcon150Interval3T1 = tempHconInterval3;
        Hrcon150Interval3PeakT1 = tempHconInterval3Peak;
        Hrcon150Interval4T1 = tempHconInterval4;
        Hrcon150Interval4PeakT1 = tempHconInterval4Peak;
        Hrcon150Interval5T1 = tempHconInterval5;
        Hrcon150Interval5PeakT1 = tempHconInterval5Peak;
        Hrcon150Interval6T1 = tempHconInterval6;
        Hrcon150Interval6PeakT1 = tempHconInterval6Peak;
        Hrcon150PeakT1 = tempHconPeak;
        Hrcon150BestIntervalT1 = tempHconBestInterval;
        clear Hrcon150T1;
    else
        Hrcon150Interval1T2 = tempHconInterval1;
        Hrcon150Interval1PeakT2 = tempHconInterval1Peak;
        Hrcon150Interval2T2 = tempHconInterval2;
        Hrcon150Interval2PeakT2 = tempHconInterval2Peak;
        Hrcon150Interval3T2 = tempHconInterval3;
        Hrcon150Interval3PeakT2 = tempHconInterval3Peak;
        Hrcon150Interval4T2 = tempHconInterval4;
        Hrcon150Interval4PeakT2 = tempHconInterval4Peak;
        Hrcon150Interval5T2 = tempHconInterval5;
        Hrcon150Interval5PeakT2 = tempHconInterval5Peak;
        Hrcon150Interval6T2 = tempHconInterval6;
        Hrcon150Interval6PeakT2 = tempHconInterval6Peak;
        Hrcon150PeakT2 = tempHconPeak;
        Hrcon150BestIntervalT2 = tempHconBestInterval;
        clear Hrcon150T2;
    end
    
    %L?schung der tempor?ten Variablen
    
    clear tempHconInterval1;
    clear tempHconInterval2;
    clear tempHconInterval3;
    clear tempHconInterval4;
    clear tempHconInterval5;
    clear tempHconInterval6;
    clear tempHconInterval1Peak;
    clear tempHconInterval2Peak;
    clear tempHconInterval3Peak;
    clear tempHconInterval4Peak;
    clear tempHconInterval5Peak;
    clear tempHconInterval6Peak;
    clear tempHcon;
    clear tempHconPeak;
    clear tempHconBestInterval;
    clear tempGewicht;
    clear maxGeschwindigkeit;
    clear minGeschwindigkeit;
end

%Verworfen auf Grund des Gew?hnungsprotokolls
%T2 wird nun immer als Peak und BestInterval gesetzt


%Vergleich der Peak-Drehmomente von T1 und T2 und Speicherung des gr??eren
%Wertes auf einer Testunabh?ngigen Peak Variablen


% if(Hlcon30PeakT1(1,3) >= Hlcon30PeakT2(1,3))
%     Hlcon30Peak = Hlcon30PeakT1;
%     Hlcon30BestInterval = Hlcon30BestIntervalT1;
% else
     Hlcon30Peak = Hlcon30PeakT2;
     Hlcon30BestInterval = Hlcon30BestIntervalT2;
% end
% 
% if(Hlcon150PeakT1(1,3) >= Hlcon150PeakT2(1,3))
%     Hlcon150Peak = Hlcon150PeakT1;
%     Hlcon150BestInterval = Hlcon150BestIntervalT1;
% else
     Hlcon150Peak = Hlcon150PeakT2;
     Hlcon150BestInterval = Hlcon150BestIntervalT2;
% end
% 
% if(Hrcon30PeakT1(1,3) >= Hrcon30PeakT2(1,3))
%     Hrcon30Peak = Hrcon30PeakT1;
%     Hrcon30BestInterval = Hrcon30BestIntervalT1;
% else
     Hrcon30Peak = Hrcon30PeakT2;
     Hrcon30BestInterval = Hrcon30BestIntervalT2;
% end
% 
% if(Hrcon150PeakT1(1,3) >= Hrcon150PeakT2(1,3))
%     Hrcon150Peak = Hrcon150PeakT1;
%     Hrcon150BestInterval = Hrcon150BestIntervalT1;
% else
     Hrcon150Peak = Hrcon150PeakT2;
     Hrcon150BestInterval = Hrcon150BestIntervalT2;
% end


clear z;
clear minGeschwindigkeit150;
clear maxGeschwindigkeit150;
clear minGeschwindigkeit30;
clear maxGeschwindigkeit30;
