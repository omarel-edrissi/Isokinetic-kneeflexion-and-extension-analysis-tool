%AnalyseHecc.m sucht auf Basis der durch FileImporter.m übergebenen iso-
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
        tempHecc = Hlecc30T1;
        minGeschwindigkeit = minGeschwindigkeit30;
        maxGeschwindigkeit = maxGeschwindigkeit30;
        tempGewicht = GewichtT1;
    elseif(z==2)
        tempHecc = Hlecc30T2;
        minGeschwindigkeit = minGeschwindigkeit30;
        maxGeschwindigkeit = maxGeschwindigkeit30;
        tempGewicht = GewichtT2;
    elseif(z==3)
        tempHecc = Hlecc150T1;
        minGeschwindigkeit = minGeschwindigkeit150;
        maxGeschwindigkeit = maxGeschwindigkeit150;
        tempGewicht = GewichtT1;
    elseif(z==4)
        tempHecc = Hlecc150T2;
        minGeschwindigkeit = minGeschwindigkeit150;
        maxGeschwindigkeit = maxGeschwindigkeit150;
        tempGewicht = GewichtT2;
    elseif(z==5)
        tempHecc = Hrecc30T1;
        minGeschwindigkeit = minGeschwindigkeit30;
        maxGeschwindigkeit = maxGeschwindigkeit30;
        tempGewicht = GewichtT1;
    elseif(z==6)
        tempHecc = Hrecc30T2;
        minGeschwindigkeit = minGeschwindigkeit30;
        maxGeschwindigkeit = maxGeschwindigkeit30;
        tempGewicht = GewichtT2;
    elseif(z==7)
        tempHecc = Hrecc150T1;
        minGeschwindigkeit = minGeschwindigkeit150;
        maxGeschwindigkeit = maxGeschwindigkeit150;
        tempGewicht = GewichtT1;
    elseif(z==8)
        tempHecc = Hrecc150T2;
        minGeschwindigkeit = minGeschwindigkeit150;
        maxGeschwindigkeit = maxGeschwindigkeit150;
        tempGewicht = GewichtT2;
    end
    
    datenInFilter = tempHecc(:,3);
    ButterworthFilter;
    tempHecc(:,3) = datenAusFilter;
    clear datenAusFilter;
    
    h=0;
    j=0;
    k=0;
    l=0;
    m=0;
    n=0;
    
    tempHeccInterval1 = [NaN,NaN,NaN,NaN];
    tempHeccInterval2 = [NaN,NaN,NaN,NaN];
    tempHeccInterval3 = [NaN,NaN,NaN,NaN];
    tempHeccInterval4 = [NaN,NaN,NaN,NaN];
    tempHeccInterval5 = [NaN,NaN,NaN,NaN];
    tempHeccInterval6 = [NaN,NaN,NaN,NaN];

    
    for i=1:size(tempHecc)
    
        if (tempHecc(i,6) == 2)
             h = h+1;
            %1.Spalte: Zeit in Millisekunden
            tempHeccInterval1(h,1) = tempHecc(i,1);
            %2.Spalte: Relative Position in 1/10 Grad wird umgerechnet in
            %Knieflexionswinkel in Grad
            tempHeccInterval1(h,2) = (tempHecc(i,2)/10)+90+20;
            %3.Spalte: Drehmoment in 1/10 Nm wird umgerechnet in relatives
            %Drehmoment N/kg und das Vorzeichen umgedreht
            tempHeccInterval1(h,3) = (tempHecc(i,3)/10)/tempGewicht;
            %4.Spalte: Geschwindigkeit in 1/10 Grad/Sekunde wird umgerechnet in
            %Grad/Sekunde und das Vorzeichen umgedreht
            tempHeccInterval1(h,4) = (tempHecc(i,4)/10)*-1;

        elseif (tempHecc(i,6) == 4)
            j = j+1;
            %1.Spalte: Zeit in Millisekunden
            tempHeccInterval2(j,1) = tempHecc(i,1);
            %2.Spalte: Relative Position in 1/10 Grad wird umgerechnet in
            %Knieflexionswinkel in Grad
            tempHeccInterval2(j,2) = (tempHecc(i,2)/10)+90+20;
            %3.Spalte: Drehmoment in 1/10 Nm wird umgerechnet in relatives
            %Drehmoment N/kg und das Vorzeichen umgedreht
            tempHeccInterval2(j,3) = (tempHecc(i,3)/10)/tempGewicht;
            %4.Spalte: Geschwindigkeit in 1/10 Grad/Sekunde wird umgerechnet in
            %Grad/Sekunde und das Vorzeichen umgedreht
            tempHeccInterval2(j,4) = (tempHecc(i,4)/10)*-1;

        elseif (tempHecc(i,6) == 6)
            k = k+1;
            %1.Spalte: Zeit in Millisekunden
            tempHeccInterval3(k,1) = tempHecc(i,1);
            %2.Spalte: Relative Position in 1/10 Grad wird umgerechnet in
            %Knieflexionswinkel in Grad
            tempHeccInterval3(k,2) = (tempHecc(i,2)/10)+90+20;
            %3.Spalte: Drehmoment in 1/10 Nm wird umgerechnet in relatives
            %Drehmoment N/kg und das Vorzeichen umgedreht
            tempHeccInterval3(k,3) = (tempHecc(i,3)/10)/tempGewicht;
            %4.Spalte: Geschwindigkeit in 1/10 Grad/Sekunde wird umgerechnet in
            %Grad/Sekunde und das Vorzeichen umgedreht
            tempHeccInterval3(k,4) = (tempHecc(i,4)/10)*-1;

        elseif (tempHecc(i,6) == 8)
            l = l+1;
            %1.Spalte: Zeit in Millisekunden
            tempHeccInterval4(l,1) = tempHecc(i,1);
            %2.Spalte: Relative Position in 1/10 Grad wird umgerechnet in
            %Knieflexionswinkel in Grad
            tempHeccInterval4(l,2) = (tempHecc(i,2)/10)+90+20;
            %3.Spalte: Drehmoment in 1/10 Nm wird umgerechnet in relatives
            %Drehmoment N/kg und das Vorzeichen umgedreht
            tempHeccInterval4(l,3) = (tempHecc(i,3)/10)/tempGewicht;
            %4.Spalte: Geschwindigkeit in 1/10 Grad/Sekunde wird umgerechnet in
            %Grad/Sekunde und das Vorzeichen umgedreht
            tempHeccInterval4(l,4) = (tempHecc(i,4)/10)*-1;


        elseif (tempHecc(i,6) == 10)
            m = m+1;
            %1.Spalte: Zeit in Millisekunden
            tempHeccInterval5(m,1) = tempHecc(i,1);
            %2.Spalte: Relative Position in 1/10 Grad wird umgerechnet in
            %Knieflexionswinkel in Grad
            tempHeccInterval5(m,2) = (tempHecc(i,2)/10)+90+20;
            %3.Spalte: Drehmoment in 1/10 Nm wird umgerechnet in relatives
            %Drehmoment N/kg und das Vorzeichen umgedreht
            tempHeccInterval5(m,3) = (tempHecc(i,3)/10)/tempGewicht;
            %4.Spalte: Geschwindigkeit in 1/10 Grad/Sekunde wird umgerechnet in
            %Grad/Sekunde und das Vorzeichen umgedreht
            tempHeccInterval5(m,4) = (tempHecc(i,4)/10)*-1;
            
        elseif (tempHecc(i,6) == 12)
            n = n+1;
            %1.Spalte: Zeit in Millisekunden
            tempHeccInterval6(n,1) = tempHecc(i,1);
            %2.Spalte: Relative Position in 1/10 Grad wird umgerechnet in
            %Knieflexionswinkel in Grad
            tempHeccInterval6(n,2) = (tempHecc(i,2)/10)+90+20;
            %3.Spalte: Drehmoment in 1/10 Nm wird umgerechnet in relatives
            %Drehmoment N/kg und das Vorzeichen umgedreht
            tempHeccInterval6(n,3) = (tempHecc(i,3)/10)/tempGewicht;
            %4.Spalte: Geschwindigkeit in 1/10 Grad/Sekunde wird umgerechnet in
            %Grad/Sekunde und das Vorzeichen umgedreht
            tempHeccInterval6(n,4) = (tempHecc(i,4)/10)*-1;

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
            tempIntervalInFilter = tempHeccInterval1;
            clear tempHeccInterval1;
        elseif(y==2)
            tempIntervalInFilter = tempHeccInterval2;
            clear tempHeccInterval2;
        elseif(y==3)
            tempIntervalInFilter = tempHeccInterval3;
            clear tempHeccInterval3;
        elseif(y==4)
            tempIntervalInFilter = tempHeccInterval4;
            clear tempHeccInterval4;
        elseif(y==5)
            tempIntervalInFilter = tempHeccInterval5;
            clear tempHeccInterval5;
        elseif(y==6)
            tempIntervalInFilter = tempHeccInterval6;
            clear tempHeccInterval6;
        end
        
        %Übergabe an den Butterworth Filter
        IsokinetischerBereichFilter;
        tempHeccInterval = tempIntervalAusFilter;
        clear tempIntervalAusFilter;
    
        %Suche das Peakdrehmoment aus den Intervallen 1,2,3,4 und 5 und 
        %speichere es in die Variablen tempHeccIntervalXPeak
    
        tempHeccIntervalPeak = [0,0,0,0];

        
        for i=1:size(tempHeccInterval)
    
            if (tempHeccInterval(i,3) >= tempHeccIntervalPeak(1,3))
                tempHeccIntervalPeak(1,1) = tempHeccInterval(i,1);
                tempHeccIntervalPeak(1,2) = tempHeccInterval(i,2);
                tempHeccIntervalPeak(1,3) = tempHeccInterval(i,3);
                tempHeccIntervalPeak(1,4) = tempHeccInterval(i,4);
            end
        end
    
        clear i;
        
        if (y==1)
            tempHeccInterval1 = tempHeccInterval;
            tempHeccInterval1Peak = tempHeccIntervalPeak;
        elseif(y==2)
            tempHeccInterval2 = tempHeccInterval;
            tempHeccInterval2Peak = tempHeccIntervalPeak;

        elseif(y==3)
            tempHeccInterval3 = tempHeccInterval;
            tempHeccInterval3Peak = tempHeccIntervalPeak;
        elseif(y==4)
            tempHeccInterval4 = tempHeccInterval;
            tempHeccInterval4Peak = tempHeccIntervalPeak;
        elseif(y==5)
            tempHeccInterval5 = tempHeccInterval;
            tempHeccInterval5Peak = tempHeccIntervalPeak;
        else
           tempHeccInterval6 = tempHeccInterval;
            tempHeccInterval6Peak = tempHeccIntervalPeak;            
        end
        
        clear tempHeccInterval;
        clear tempHeccIntervalPeak;

    end
    
    clear y;
    
    %Vergleiche die Peak-Drehmomente aus Interval 1,2, 3,4,5 und 6 und 
    %speichere das größte Drehmoment in dem Array tempHeccPeak und das
    %beste Interval im Array tempHeccBestInterval

    if(tempHeccInterval1Peak(1,3) >= tempHeccInterval2Peak(1,3) && tempHeccInterval1Peak(1,3) >= tempHeccInterval3Peak(1,3) && tempHeccInterval1Peak(1,3) >= tempHeccInterval4Peak(1,3) && tempHeccInterval1Peak(1,3) >= tempHeccInterval5Peak(1,3) && tempHeccInterval1Peak(1,3) >= tempHeccInterval6Peak(1,3))
        tempHeccPeak(1,1) = tempHeccInterval1Peak(1,1);
        tempHeccPeak(1,2) = tempHeccInterval1Peak(1,2);
        tempHeccPeak(1,3) = tempHeccInterval1Peak(1,3); 
        tempHeccPeak(1,4) = tempHeccInterval1Peak(1,4);
        tempHeccBestInterval = tempHeccInterval1;
        
    elseif(tempHeccInterval2Peak(1,3) >= tempHeccInterval3Peak(1,3) && tempHeccInterval2Peak(1,3) >= tempHeccInterval4Peak(1,3) && tempHeccInterval2Peak(1,3) >= tempHeccInterval5Peak(1,3) && tempHeccInterval2Peak(1,3) >= tempHeccInterval6Peak(1,3))
        tempHeccPeak(1,1) = tempHeccInterval2Peak(1,1);
        tempHeccPeak(1,2) = tempHeccInterval2Peak(1,2);
        tempHeccPeak(1,3) = tempHeccInterval2Peak(1,3); 
        tempHeccPeak(1,4) = tempHeccInterval2Peak(1,4);
        tempHeccBestInterval = tempHeccInterval2;
        
    elseif(tempHeccInterval3Peak(1,3) >= tempHeccInterval4Peak(1,3) && tempHeccInterval3Peak(1,3) >= tempHeccInterval5Peak(1,3) && tempHeccInterval3Peak(1,3) >= tempHeccInterval6Peak(1,3))
        tempHeccPeak(1,1) = tempHeccInterval3Peak(1,1);
        tempHeccPeak(1,2) = tempHeccInterval3Peak(1,2);
        tempHeccPeak(1,3) = tempHeccInterval3Peak(1,3); 
        tempHeccPeak(1,4) = tempHeccInterval3Peak(1,4);
        tempHeccBestInterval = tempHeccInterval3;
        
    elseif(tempHeccInterval4Peak(1,3) >= tempHeccInterval5Peak(1,3) && tempHeccInterval4Peak(1,3) >= tempHeccInterval6Peak(1,3))
        tempHeccPeak(1,1) = tempHeccInterval4Peak(1,1);
        tempHeccPeak(1,2) = tempHeccInterval4Peak(1,2);
        tempHeccPeak(1,3) = tempHeccInterval4Peak(1,3); 
        tempHeccPeak(1,4) = tempHeccInterval4Peak(1,4);
        tempHeccBestInterval = tempHeccInterval4;
        
    elseif(tempHeccInterval5Peak(1,3) >= tempHeccInterval6Peak(1,3))
        tempHeccPeak(1,1) = tempHeccInterval5Peak(1,1);
        tempHeccPeak(1,2) = tempHeccInterval5Peak(1,2);
        tempHeccPeak(1,3) = tempHeccInterval5Peak(1,3); 
        tempHeccPeak(1,4) = tempHeccInterval5Peak(1,4);
        tempHeccBestInterval = tempHeccInterval5;
        
    else
        tempHeccPeak(1,1) = tempHeccInterval6Peak(1,1);
        tempHeccPeak(1,2) = tempHeccInterval6Peak(1,2);
        tempHeccPeak(1,3) = tempHeccInterval6Peak(1,3); 
        tempHeccPeak(1,4) = tempHeccInterval6Peak(1,4);
        tempHeccBestInterval = tempHeccInterval6;
    end
    
    %Zuordnung der temporären Intervall auf die festen Intervalle
        
    if(z==1)
        Hlecc30Interval1T1 = tempHeccInterval1;
        Hlecc30Interval1PeakT1 = tempHeccInterval1Peak;
        Hlecc30Interval2T1 = tempHeccInterval2;
        Hlecc30Interval2PeakT1 = tempHeccInterval2Peak;
        Hlecc30Interval3T1 = tempHeccInterval3;
        Hlecc30Interval3PeakT1 = tempHeccInterval3Peak;
        Hlecc30Interval4T1 = tempHeccInterval4;
        Hlecc30Interval4PeakT1 = tempHeccInterval4Peak;
        Hlecc30Interval5T1 = tempHeccInterval5;
        Hlecc30Interval5PeakT1 = tempHeccInterval5Peak;
        Hlecc30Interval6T1 = tempHeccInterval6;
        Hlecc30Interval6PeakT1 = tempHeccInterval6Peak;
        Hlecc30PeakT1 = tempHeccPeak;
        Hlecc30BestIntervalT1 = tempHeccBestInterval;
        clear Hlecc30T1;
    elseif(z==2)
        Hlecc30Interval1T2 = tempHeccInterval1;
        Hlecc30Interval1PeakT2 = tempHeccInterval1Peak;
        Hlecc30Interval2T2 = tempHeccInterval2;
        Hlecc30Interval2PeakT2 = tempHeccInterval2Peak;
        Hlecc30Interval3T2 = tempHeccInterval3;
        Hlecc30Interval3PeakT2 = tempHeccInterval3Peak;
        Hlecc30Interval4T2 = tempHeccInterval4;
        Hlecc30Interval4PeakT2 = tempHeccInterval4Peak;
        Hlecc30Interval5T2 = tempHeccInterval5;
        Hlecc30Interval5PeakT2 = tempHeccInterval5Peak;
        Hlecc30Interval6T2 = tempHeccInterval6;
        Hlecc30Interval6PeakT2 = tempHeccInterval6Peak;
        Hlecc30PeakT2 = tempHeccPeak;
        Hlecc30BestIntervalT2 = tempHeccBestInterval;
        clear Hlecc30T2;
    elseif(z==3)
        Hlecc150Interval1T1 = tempHeccInterval1;
        Hlecc150Interval1PeakT1 = tempHeccInterval1Peak;
        Hlecc150Interval2T1 = tempHeccInterval2;
        Hlecc150Interval2PeakT1 = tempHeccInterval2Peak;
        Hlecc150Interval3T1 = tempHeccInterval3;
        Hlecc150Interval3PeakT1 = tempHeccInterval3Peak;
        Hlecc150Interval4T1 = tempHeccInterval4;
        Hlecc150Interval4PeakT1 = tempHeccInterval4Peak;
        Hlecc150Interval5T1 = tempHeccInterval5;
        Hlecc150Interval5PeakT1 = tempHeccInterval5Peak;
        Hlecc150Interval6T1 = tempHeccInterval6;
        Hlecc150Interval6PeakT1 = tempHeccInterval6Peak;
        Hlecc150PeakT1 = tempHeccPeak;
        Hlecc150BestIntervalT1 = tempHeccBestInterval;
        clear Hlecc150T1;
    elseif(z==4)
        Hlecc150Interval1T2 = tempHeccInterval1;
        Hlecc150Interval1PeakT2 = tempHeccInterval1Peak;
        Hlecc150Interval2T2 = tempHeccInterval2;
        Hlecc150Interval2PeakT2 = tempHeccInterval2Peak;
        Hlecc150Interval3T2 = tempHeccInterval3;
        Hlecc150Interval3PeakT2 = tempHeccInterval3Peak;
        Hlecc150Interval4T2 = tempHeccInterval4;
        Hlecc150Interval4PeakT2 = tempHeccInterval4Peak;
        Hlecc150Interval5T2 = tempHeccInterval5;
        Hlecc150Interval5PeakT2 = tempHeccInterval5Peak;
        Hlecc150Interval6T2 = tempHeccInterval6;
        Hlecc150Interval6PeakT2 = tempHeccInterval6Peak;
        Hlecc150PeakT2 = tempHeccPeak;
        Hlecc150BestIntervalT2 = tempHeccBestInterval;
        clear Hlecc150T2;
    elseif(z==5)
        Hrecc30Interval1T1 = tempHeccInterval1;
        Hrecc30Interval1PeakT1 = tempHeccInterval1Peak;
        Hrecc30Interval2T1 = tempHeccInterval2;
        Hrecc30Interval2PeakT1 = tempHeccInterval2Peak;
        Hrecc30Interval3T1 = tempHeccInterval3;
        Hrecc30Interval3PeakT1 = tempHeccInterval3Peak;
        Hrecc30Interval4T1 = tempHeccInterval4;
        Hrecc30Interval4PeakT1 = tempHeccInterval4Peak;
        Hrecc30Interval5T1 = tempHeccInterval5;
        Hrecc30Interval5PeakT1 = tempHeccInterval5Peak;
        Hrecc30Interval6T1 = tempHeccInterval5;
        Hrecc30Interval6PeakT1 = tempHeccInterval6Peak;
        Hrecc30PeakT1 = tempHeccPeak;
        Hrecc30BestIntervalT1 = tempHeccBestInterval;
        clear Hrecc30T1;
    elseif(z==6)
        Hrecc30Interval1T2 = tempHeccInterval1;
        Hrecc30Interval1PeakT2 = tempHeccInterval1Peak;
        Hrecc30Interval2T2 = tempHeccInterval2;
        Hrecc30Interval2PeakT2 = tempHeccInterval2Peak;
        Hrecc30Interval3T2 = tempHeccInterval3;
        Hrecc30Interval3PeakT2 = tempHeccInterval3Peak;
        Hrecc30Interval4T2 = tempHeccInterval4;
        Hrecc30Interval4PeakT2 = tempHeccInterval4Peak;
        Hrecc30Interval5T2 = tempHeccInterval5;
        Hrecc30Interval5PeakT2 = tempHeccInterval5Peak;
        Hrecc30Interval6T2 = tempHeccInterval6;
        Hrecc30Interval6PeakT2 = tempHeccInterval6Peak;
        Hrecc30PeakT2 = tempHeccPeak;
        Hrecc30BestIntervalT2 = tempHeccBestInterval;
        clear Hrecc30T2;
    elseif(z==7)
        Hrecc150Interval1T1 = tempHeccInterval1;
        Hrecc150Interval1PeakT1 = tempHeccInterval1Peak;
        Hrecc150Interval2T1 = tempHeccInterval2;
        Hrecc150Interval2PeakT1 = tempHeccInterval2Peak;
        Hrecc150Interval3T1 = tempHeccInterval3;
        Hrecc150Interval3PeakT1 = tempHeccInterval3Peak;
        Hrecc150Interval4T1 = tempHeccInterval4;
        Hrecc150Interval4PeakT1 = tempHeccInterval4Peak;
        Hrecc150Interval5T1 = tempHeccInterval5;
        Hrecc150Interval5PeakT1 = tempHeccInterval5Peak;
        Hrecc150Interval6T1 = tempHeccInterval6;
        Hrecc150Interval6PeakT1 = tempHeccInterval6Peak;
        Hrecc150PeakT1 = tempHeccPeak;
        Hrecc150BestIntervalT1 = tempHeccBestInterval;
        clear Hrecc150T1;
    else
        Hrecc150Interval1T2 = tempHeccInterval1;
        Hrecc150Interval1PeakT2 = tempHeccInterval1Peak;
        Hrecc150Interval2T2 = tempHeccInterval2;
        Hrecc150Interval2PeakT2 = tempHeccInterval2Peak;
        Hrecc150Interval3T2 = tempHeccInterval3;
        Hrecc150Interval3PeakT2 = tempHeccInterval3Peak;
        Hrecc150Interval4T2 = tempHeccInterval4;
        Hrecc150Interval4PeakT2 = tempHeccInterval4Peak;
        Hrecc150Interval5T2 = tempHeccInterval5;
        Hrecc150Interval5PeakT2 = tempHeccInterval5Peak;
        Hrecc150Interval6T2 = tempHeccInterval6;
        Hrecc150Interval6PeakT2 = tempHeccInterval6Peak;
        Hrecc150PeakT2 = tempHeccPeak;
        Hrecc150BestIntervalT2 = tempHeccBestInterval;
        clear Hrecc150T2;
    end
    
    %Löschung der temporäten Variablen
    
    clear tempHeccInterval1;
    clear tempHeccInterval2;
    clear tempHeccInterval3;
    clear tempHeccInterval4;
    clear tempHeccInterval5;
    clear tempHeccInterval6;
    clear tempHeccInterval1Peak;
    clear tempHeccInterval2Peak;
    clear tempHeccInterval3Peak;
    clear tempHeccInterval4Peak;
    clear tempHeccInterval5Peak;
    clear tempHeccInterval6Peak;
    clear tempHecc;
    clear tempHeccPeak;
    clear tempHeccBestInterval;
    clear tempGewicht;
    clear maxGeschwindigkeit;
    clear minGeschwindigkeit;
end

%Verworfen auf Grund des Gewöhnungsprotokolls
%T2 wird nun immer als Peak und BestInterval gesetzt

%Vergleich der Peak-Drehmomente von T1 und T2 und Speicherung des größeren
%Wertes auf einer Testunabhängigen Peak Variablen

% if(Hlecc30PeakT1(1,3) >= Hlecc30PeakT2(1,3))
%     Hlecc30Peak = Hlecc30PeakT1;
%     Hlecc30BestInterval = Hlecc30BestIntervalT1;
% else
     Hlecc30Peak = Hlecc30PeakT2;
     Hlecc30BestInterval = Hlecc30BestIntervalT2;
% end
% 
% if(Hlecc150PeakT1(1,3) >= Hlecc150PeakT2(1,3))
%     Hlecc150Peak = Hlecc150PeakT1;
%     Hlecc150BestInterval = Hlecc150BestIntervalT1;
% else
     Hlecc150Peak = Hlecc150PeakT2;
     Hlecc150BestInterval = Hlecc150BestIntervalT2;
% end
% 
% if(Hrecc30PeakT1(1,3) >= Hrecc30PeakT2(1,3))
%     Hrecc30Peak = Hrecc30PeakT1;
%     Hrecc30BestInterval = Hrecc30BestIntervalT1;
% else
     Hrecc30Peak = Hrecc30PeakT2;
     Hrecc30BestInterval = Hrecc30BestIntervalT2;
% end
% 
% if(Hrecc150PeakT1(1,3) >= Hrecc150PeakT2(1,3))
%     Hrecc150Peak = Hrecc150PeakT1;
%     Hrecc150BestInterval = Hrecc150BestIntervalT1;
% else
     Hrecc150Peak = Hrecc150PeakT2;
     Hrecc150BestInterval = Hrecc150BestIntervalT2;
% end

clear z;
clear minGeschwindigkeit150;
clear maxGeschwindigkeit150;
clear minGeschwindigkeit30;
clear maxGeschwindigkeit30;
