%AnalyseQecc.m sucht auf Basis der durch FileImporter.m übergebenen iso-
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
        tempQecc = Qlecc30T1;
        minGeschwindigkeit = minGeschwindigkeit30;
        maxGeschwindigkeit = maxGeschwindigkeit30;
        tempGewicht = GewichtT1;
    elseif(z==2)
        tempQecc = Qlecc30T2;
        minGeschwindigkeit = minGeschwindigkeit30;
        maxGeschwindigkeit = maxGeschwindigkeit30;
        tempGewicht = GewichtT2;
    elseif(z==3)
        tempQecc = Qlecc150T1;
        minGeschwindigkeit = minGeschwindigkeit150;
        maxGeschwindigkeit = maxGeschwindigkeit150;
        tempGewicht = GewichtT1;
    elseif(z==4)
        tempQecc = Qlecc150T2;
        minGeschwindigkeit = minGeschwindigkeit150;
        maxGeschwindigkeit = maxGeschwindigkeit150;
        tempGewicht = GewichtT2;
    elseif(z==5)
        tempQecc = Qrecc30T1;
        minGeschwindigkeit = minGeschwindigkeit30;
        maxGeschwindigkeit = maxGeschwindigkeit30;
        tempGewicht = GewichtT1;
    elseif(z==6)
        tempQecc = Qrecc30T2;
        minGeschwindigkeit = minGeschwindigkeit30;
        maxGeschwindigkeit = maxGeschwindigkeit30;
        tempGewicht = GewichtT2;
    elseif(z==7)
        tempQecc = Qrecc150T1;
        minGeschwindigkeit = minGeschwindigkeit150;
        maxGeschwindigkeit = maxGeschwindigkeit150;
        tempGewicht = GewichtT1;
    elseif(z==8)
        tempQecc = Qrecc150T2;
        minGeschwindigkeit = minGeschwindigkeit150;
        maxGeschwindigkeit = maxGeschwindigkeit150;
        tempGewicht = GewichtT2;
    end
    
    datenInFilter = tempQecc(:,3);
    ButterworthFilter;
    tempQecc(:,3) = datenAusFilter;
    clear datenAusFilter;
    
    h=0;
    j=0;
    k=0;
    l=0;
    m=0;
    n=0;
    
    tempQeccInterval1 = [NaN,NaN,NaN,NaN];
    tempQeccInterval2 = [NaN,NaN,NaN,NaN];
    tempQeccInterval3 = [NaN,NaN,NaN,NaN];
    tempQeccInterval4 = [NaN,NaN,NaN,NaN];
    tempQeccInterval5 = [NaN,NaN,NaN,NaN];
    tempQeccInterval6 = [NaN,NaN,NaN,NaN];
    
    for i=1:size(tempQecc)
    
        if (tempQecc(i,6) == 1)
             h = h+1;
            %1.Spalte: Zeit in Millisekunden
            tempQeccInterval1(h,1) = tempQecc(i,1);
            %2.Spalte: Relative Position in 1/10 Grad wird umgerechnet in
            %Knieflexionswinkel in Grad
            tempQeccInterval1(h,2) = (tempQecc(i,2)/10)+15;
            %3.Spalte: Drehmoment in 1/10 Nm wird umgerechnet in relatives
            %Drehmoment N/kg und das Vorzeichen umgedreht
            tempQeccInterval1(h,3) = ((tempQecc(i,3)/10)*-1)/tempGewicht;
            %4.Spalte: Geschwindigkeit in 1/10 Grad/Sekunde wird umgerechnet in
            %Grad/Sekunde und das Vorzeichen umgedreht
            tempQeccInterval1(h,4) = (tempQecc(i,4)/10);

        elseif (tempQecc(i,6) == 3)
            j = j+1;
            %1.Spalte: Zeit in Millisekunden
            tempQeccInterval2(j,1) = tempQecc(i,1);
            %2.Spalte: Relative Position in 1/10 Grad wird umgerechnet in
            %Knieflexionswinkel in Grad
            tempQeccInterval2(j,2) = (tempQecc(i,2)/10)+15;
            %3.Spalte: Drehmoment in 1/10 Nm wird umgerechnet in relatives
            %Drehmoment N/kg und das Vorzeichen umgedreht
            tempQeccInterval2(j,3) = ((tempQecc(i,3)/10)*-1)/tempGewicht;
            %4.Spalte: Geschwindigkeit in 1/10 Grad/Sekunde wird umgerechnet in
            %Grad/Sekunde und das Vorzeichen umgedreht
            tempQeccInterval2(j,4) = (tempQecc(i,4)/10);

        elseif (tempQecc(i,6) == 5)
            k = k+1;
            %1.Spalte: Zeit in Millisekunden
            tempQeccInterval3(k,1) = tempQecc(i,1);
            %2.Spalte: Relative Position in 1/10 Grad wird umgerechnet in
            %Knieflexionswinkel in Grad
            tempQeccInterval3(k,2) = (tempQecc(i,2)/10)+15;
            %3.Spalte: Drehmoment in 1/10 Nm wird umgerechnet in relatives
            %Drehmoment N/kg und das Vorzeichen umgedreht
            tempQeccInterval3(k,3) = ((tempQecc(i,3)/10)*-1)/tempGewicht;
            %4.Spalte: Geschwindigkeit in 1/10 Grad/Sekunde wird umgerechnet in
            %Grad/Sekunde und das Vorzeichen umgedreht
            tempQeccInterval3(k,4) = (tempQecc(i,4)/10);

        elseif (tempQecc(i,6) == 7)
            l = l+1;
            %1.Spalte: Zeit in Millisekunden
            tempQeccInterval4(l,1) = tempQecc(i,1);
            %2.Spalte: Relative Position in 1/10 Grad wird umgerechnet in
            %Knieflexionswinkel in Grad
            tempQeccInterval4(l,2) = (tempQecc(i,2)/10)+15;
            %3.Spalte: Drehmoment in 1/10 Nm wird umgerechnet in relatives
            %Drehmoment N/kg und das Vorzeichen umgedreht
            tempQeccInterval4(l,3) = ((tempQecc(i,3)/10)*-1)/tempGewicht;
            %4.Spalte: Geschwindigkeit in 1/10 Grad/Sekunde wird umgerechnet in
            %Grad/Sekunde und das Vorzeichen umgedreht
            tempQeccInterval4(l,4) = (tempQecc(i,4)/10);


        elseif (tempQecc(i,6) == 9)
            m = m+1;
            %1.Spalte: Zeit in Millisekunden
            tempQeccInterval5(m,1) = tempQecc(i,1);
            %2.Spalte: Relative Position in 1/10 Grad wird umgerechnet in
            %Knieflexionswinkel in Grad
            tempQeccInterval5(m,2) = (tempQecc(i,2)/10)+15;
            %3.Spalte: Drehmoment in 1/10 Nm wird umgerechnet in relatives
            %Drehmoment N/kg und das Vorzeichen umgedreht
            tempQeccInterval5(m,3) = ((tempQecc(i,3)/10)*-1)/tempGewicht;
            %4.Spalte: Geschwindigkeit in 1/10 Grad/Sekunde wird umgerechnet in
            %Grad/Sekunde und das Vorzeichen umgedreht
            tempQeccInterval5(m,4) = (tempQecc(i,4)/10);
            
        elseif (tempQecc(i,6) == 11)
            n = n+1;
            %1.Spalte: Zeit in Millisekunden
            tempQeccInterval6(n,1) = tempQecc(i,1);
            %2.Spalte: Relative Position in 1/10 Grad wird umgerechnet in
            %Knieflexionswinkel in Grad
            tempQeccInterval6(n,2) = (tempQecc(i,2)/10)+15;
            %3.Spalte: Drehmoment in 1/10 Nm wird umgerechnet in relatives
            %Drehmoment N/kg und das Vorzeichen umgedreht
            tempQeccInterval6(n,3) = (tempQecc(i,3)/10)/tempGewicht;
            %4.Spalte: Geschwindigkeit in 1/10 Grad/Sekunde wird umgerechnet in
            %Grad/Sekunde und das Vorzeichen umgedreht
            tempQeccInterval6(n,4) = (tempQecc(i,4)/10);

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
            tempIntervalInFilter = tempQeccInterval1;
            clear tempQeccInterval1;
        elseif(y==2)
            tempIntervalInFilter = tempQeccInterval2;
            clear tempQeccInterval2;
        elseif(y==3)
            tempIntervalInFilter = tempQeccInterval3;
            clear tempQeccInterval3;
        elseif(y==4)
            tempIntervalInFilter = tempQeccInterval4;
            clear tempQeccInterval4;
        elseif(y==5)
            tempIntervalInFilter = tempQeccInterval5;
            clear tempQeccInterval5;
        elseif(y==6)
            tempIntervalInFilter = tempQeccInterval6;
            clear tempQeccInterval6;
        end
        
        %Übergabe an den Butterworth Filter
        IsokinetischerBereichFilter;
        tempQeccInterval = tempIntervalAusFilter;
        clear tempIntervalAusFilter;
    
        %Suche das Peakdrehmoment aus den Intervallen 1,2,3,4 und 5 und 
        %speichere es in die Variablen tempQeccIntervalXPeak
       
        tempQeccIntervalPeak = [0,0,0,0];

        for i=1:size(tempQeccInterval)
    
            if (tempQeccInterval(i,3) >= tempQeccIntervalPeak(1,3))
                tempQeccIntervalPeak(1,1) = tempQeccInterval(i,1);
                tempQeccIntervalPeak(1,2) = tempQeccInterval(i,2);
                tempQeccIntervalPeak(1,3) = tempQeccInterval(i,3);
                tempQeccIntervalPeak(1,4) = tempQeccInterval(i,4);
            end
        end
    
        clear i;
        
        if (y==1)
            tempQeccInterval1 = tempQeccInterval;
            tempQeccInterval1Peak = tempQeccIntervalPeak;
        elseif(y==2)
            tempQeccInterval2 = tempQeccInterval;
            tempQeccInterval2Peak = tempQeccIntervalPeak;

        elseif(y==3)
            tempQeccInterval3 = tempQeccInterval;
            tempQeccInterval3Peak = tempQeccIntervalPeak;
        elseif(y==4)
            tempQeccInterval4 = tempQeccInterval;
            tempQeccInterval4Peak = tempQeccIntervalPeak;
        elseif(y==5)
            tempQeccInterval5 = tempQeccInterval;
            tempQeccInterval5Peak = tempQeccIntervalPeak;
        else
           tempQeccInterval6 = tempQeccInterval;
            tempQeccInterval6Peak = tempQeccIntervalPeak;            
        end
        
        clear tempQeccInterval;
        clear tempQeccIntervalPeak;

    end
    
    clear y;
    
    %Vergleiche die Peak-Drehmomente aus Interval 1,2, 3,4,5 und 6 und 
    %speichere das größte Drehmoment in dem Array tempQeccPeak und das
    %beste Interval im Array tempQeccBestInterval

    if(tempQeccInterval1Peak(1,3) >= tempQeccInterval2Peak(1,3) && tempQeccInterval1Peak(1,3) >= tempQeccInterval3Peak(1,3) && tempQeccInterval1Peak(1,3) >= tempQeccInterval4Peak(1,3) && tempQeccInterval1Peak(1,3) >= tempQeccInterval5Peak(1,3) && tempQeccInterval1Peak(1,3) >= tempQeccInterval6Peak(1,3))
        tempQeccPeak(1,1) = tempQeccInterval1Peak(1,1);
        tempQeccPeak(1,2) = tempQeccInterval1Peak(1,2);
        tempQeccPeak(1,3) = tempQeccInterval1Peak(1,3); 
        tempQeccPeak(1,4) = tempQeccInterval1Peak(1,4);
        tempQeccBestInterval = tempQeccInterval1;
        
    elseif(tempQeccInterval2Peak(1,3) >= tempQeccInterval3Peak(1,3) && tempQeccInterval2Peak(1,3) >= tempQeccInterval4Peak(1,3) && tempQeccInterval2Peak(1,3) >= tempQeccInterval5Peak(1,3) && tempQeccInterval2Peak(1,3) >= tempQeccInterval6Peak(1,3))
        tempQeccPeak(1,1) = tempQeccInterval2Peak(1,1);
        tempQeccPeak(1,2) = tempQeccInterval2Peak(1,2);
        tempQeccPeak(1,3) = tempQeccInterval2Peak(1,3); 
        tempQeccPeak(1,4) = tempQeccInterval2Peak(1,4);
        tempQeccBestInterval = tempQeccInterval2;
        
    elseif(tempQeccInterval3Peak(1,3) >= tempQeccInterval4Peak(1,3) && tempQeccInterval3Peak(1,3) >= tempQeccInterval5Peak(1,3) && tempQeccInterval3Peak(1,3) >= tempQeccInterval6Peak(1,3))
        tempQeccPeak(1,1) = tempQeccInterval3Peak(1,1);
        tempQeccPeak(1,2) = tempQeccInterval3Peak(1,2);
        tempQeccPeak(1,3) = tempQeccInterval3Peak(1,3); 
        tempQeccPeak(1,4) = tempQeccInterval3Peak(1,4);
        tempQeccBestInterval = tempQeccInterval3;
        
    elseif(tempQeccInterval4Peak(1,3) >= tempQeccInterval5Peak(1,3) && tempQeccInterval4Peak(1,3) >= tempQeccInterval6Peak(1,3))
        tempQeccPeak(1,1) = tempQeccInterval4Peak(1,1);
        tempQeccPeak(1,2) = tempQeccInterval4Peak(1,2);
        tempQeccPeak(1,3) = tempQeccInterval4Peak(1,3); 
        tempQeccPeak(1,4) = tempQeccInterval4Peak(1,4);
        tempQeccBestInterval = tempQeccInterval4;
        
    elseif(tempQeccInterval5Peak(1,3) >= tempQeccInterval6Peak(1,3))
        tempQeccPeak(1,1) = tempQeccInterval5Peak(1,1);
        tempQeccPeak(1,2) = tempQeccInterval5Peak(1,2);
        tempQeccPeak(1,3) = tempQeccInterval5Peak(1,3); 
        tempQeccPeak(1,4) = tempQeccInterval5Peak(1,4);
        tempQeccBestInterval = tempQeccInterval5;
        
    else
        tempQeccPeak(1,1) = tempQeccInterval6Peak(1,1);
        tempQeccPeak(1,2) = tempQeccInterval6Peak(1,2);
        tempQeccPeak(1,3) = tempQeccInterval6Peak(1,3); 
        tempQeccPeak(1,4) = tempQeccInterval6Peak(1,4);
        tempQeccBestInterval = tempQeccInterval6;
    end
    
    %Zuordnung der temporären Intervall auf die festen Intervalle
        
    if(z==1)
        Qlecc30Interval1T1 = tempQeccInterval1;
        Qlecc30Interval1PeakT1 = tempQeccInterval1Peak;
        Qlecc30Interval2T1 = tempQeccInterval2;
        Qlecc30Interval2PeakT1 = tempQeccInterval2Peak;
        Qlecc30Interval3T1 = tempQeccInterval3;
        Qlecc30Interval3PeakT1 = tempQeccInterval3Peak;
        Qlecc30Interval4T1 = tempQeccInterval4;
        Qlecc30Interval4PeakT1 = tempQeccInterval4Peak;
        Qlecc30Interval5T1 = tempQeccInterval5;
        Qlecc30Interval5PeakT1 = tempQeccInterval5Peak;
        Qlecc30Interval6T1 = tempQeccInterval6;
        Qlecc30Interval6PeakT1 = tempQeccInterval6Peak;
        Qlecc30PeakT1 = tempQeccPeak;
        Qlecc30BestIntervalT1 = tempQeccBestInterval;
        clear Qlecc30T1;
    elseif(z==2)
        Qlecc30Interval1T2 = tempQeccInterval1;
        Qlecc30Interval1PeakT2 = tempQeccInterval1Peak;
        Qlecc30Interval2T2 = tempQeccInterval2;
        Qlecc30Interval2PeakT2 = tempQeccInterval2Peak;
        Qlecc30Interval3T2 = tempQeccInterval3;
        Qlecc30Interval3PeakT2 = tempQeccInterval3Peak;
        Qlecc30Interval4T2 = tempQeccInterval4;
        Qlecc30Interval4PeakT2 = tempQeccInterval4Peak;
        Qlecc30Interval5T2 = tempQeccInterval5;
        Qlecc30Interval5PeakT2 = tempQeccInterval5Peak;
        Qlecc30Interval6T2 = tempQeccInterval6;
        Qlecc30Interval6PeakT2 = tempQeccInterval6Peak;
        Qlecc30PeakT2 = tempQeccPeak;
        Qlecc30BestIntervalT2 = tempQeccBestInterval;
        clear Qlecc30T2;
    elseif(z==3)
        Qlecc150Interval1T1 = tempQeccInterval1;
        Qlecc150Interval1PeakT1 = tempQeccInterval1Peak;
        Qlecc150Interval2T1 = tempQeccInterval2;
        Qlecc150Interval2PeakT1 = tempQeccInterval2Peak;
        Qlecc150Interval3T1 = tempQeccInterval3;
        Qlecc150Interval3PeakT1 = tempQeccInterval3Peak;
        Qlecc150Interval4T1 = tempQeccInterval4;
        Qlecc150Interval4PeakT1 = tempQeccInterval4Peak;
        Qlecc150Interval5T1 = tempQeccInterval5;
        Qlecc150Interval5PeakT1 = tempQeccInterval5Peak;
        Qlecc150Interval6T1 = tempQeccInterval6;
        Qlecc150Interval6PeakT1 = tempQeccInterval6Peak;
        Qlecc150PeakT1 = tempQeccPeak;
        Qlecc150BestIntervalT1 = tempQeccBestInterval;
        clear Qlecc150T1;
    elseif(z==4)
        Qlecc150Interval1T2 = tempQeccInterval1;
        Qlecc150Interval1PeakT2 = tempQeccInterval1Peak;
        Qlecc150Interval2T2 = tempQeccInterval2;
        Qlecc150Interval2PeakT2 = tempQeccInterval2Peak;
        Qlecc150Interval3T2 = tempQeccInterval3;
        Qlecc150Interval3PeakT2 = tempQeccInterval3Peak;
        Qlecc150Interval4T2 = tempQeccInterval4;
        Qlecc150Interval4PeakT2 = tempQeccInterval4Peak;
        Qlecc150Interval5T2 = tempQeccInterval5;
        Qlecc150Interval5PeakT2 = tempQeccInterval5Peak;
        Qlecc150Interval6T2 = tempQeccInterval6;
        Qlecc150Interval6PeakT2 = tempQeccInterval6Peak;
        Qlecc150PeakT2 = tempQeccPeak;
        Qlecc150BestIntervalT2 = tempQeccBestInterval;
        clear Qlecc150T2;
    elseif(z==5)
        Qrecc30Interval1T1 = tempQeccInterval1;
        Qrecc30Interval1PeakT1 = tempQeccInterval1Peak;
        Qrecc30Interval2T1 = tempQeccInterval2;
        Qrecc30Interval2PeakT1 = tempQeccInterval2Peak;
        Qrecc30Interval3T1 = tempQeccInterval3;
        Qrecc30Interval3PeakT1 = tempQeccInterval3Peak;
        Qrecc30Interval4T1 = tempQeccInterval4;
        Qrecc30Interval4PeakT1 = tempQeccInterval4Peak;
        Qrecc30Interval5T1 = tempQeccInterval5;
        Qrecc30Interval5PeakT1 = tempQeccInterval5Peak;
        Qrecc30Interval6T1 = tempQeccInterval5;
        Qrecc30Interval6PeakT1 = tempQeccInterval6Peak;
        Qrecc30PeakT1 = tempQeccPeak;
        Qrecc30BestIntervalT1 = tempQeccBestInterval;
        clear Qrecc30T1;
    elseif(z==6)
        Qrecc30Interval1T2 = tempQeccInterval1;
        Qrecc30Interval1PeakT2 = tempQeccInterval1Peak;
        Qrecc30Interval2T2 = tempQeccInterval2;
        Qrecc30Interval2PeakT2 = tempQeccInterval2Peak;
        Qrecc30Interval3T2 = tempQeccInterval3;
        Qrecc30Interval3PeakT2 = tempQeccInterval3Peak;
        Qrecc30Interval4T2 = tempQeccInterval4;
        Qrecc30Interval4PeakT2 = tempQeccInterval4Peak;
        Qrecc30Interval5T2 = tempQeccInterval5;
        Qrecc30Interval5PeakT2 = tempQeccInterval5Peak;
        Qrecc30Interval6T2 = tempQeccInterval6;
        Qrecc30Interval6PeakT2 = tempQeccInterval6Peak;
        Qrecc30PeakT2 = tempQeccPeak;
        Qrecc30BestIntervalT2 = tempQeccBestInterval;
        clear Qrecc30T2;
    elseif(z==7)
        Qrecc150Interval1T1 = tempQeccInterval1;
        Qrecc150Interval1PeakT1 = tempQeccInterval1Peak;
        Qrecc150Interval2T1 = tempQeccInterval2;
        Qrecc150Interval2PeakT1 = tempQeccInterval2Peak;
        Qrecc150Interval3T1 = tempQeccInterval3;
        Qrecc150Interval3PeakT1 = tempQeccInterval3Peak;
        Qrecc150Interval4T1 = tempQeccInterval4;
        Qrecc150Interval4PeakT1 = tempQeccInterval4Peak;
        Qrecc150Interval5T1 = tempQeccInterval5;
        Qrecc150Interval5PeakT1 = tempQeccInterval5Peak;
        Qrecc150Interval6T1 = tempQeccInterval6;
        Qrecc150Interval6PeakT1 = tempQeccInterval6Peak;
        Qrecc150PeakT1 = tempQeccPeak;
        Qrecc150BestIntervalT1 = tempQeccBestInterval;
        clear Qrecc150T1;
    else
        Qrecc150Interval1T2 = tempQeccInterval1;
        Qrecc150Interval1PeakT2 = tempQeccInterval1Peak;
        Qrecc150Interval2T2 = tempQeccInterval2;
        Qrecc150Interval2PeakT2 = tempQeccInterval2Peak;
        Qrecc150Interval3T2 = tempQeccInterval3;
        Qrecc150Interval3PeakT2 = tempQeccInterval3Peak;
        Qrecc150Interval4T2 = tempQeccInterval4;
        Qrecc150Interval4PeakT2 = tempQeccInterval4Peak;
        Qrecc150Interval5T2 = tempQeccInterval5;
        Qrecc150Interval5PeakT2 = tempQeccInterval5Peak;
        Qrecc150Interval6T2 = tempQeccInterval6;
        Qrecc150Interval6PeakT2 = tempQeccInterval6Peak;
        Qrecc150PeakT2 = tempQeccPeak;
        Qrecc150BestIntervalT2 = tempQeccBestInterval;
        clear Qrecc150T2;
    end
    
    %Löschung der temporäten Variablen
    
    clear tempQeccInterval1;
    clear tempQeccInterval2;
    clear tempQeccInterval3;
    clear tempQeccInterval4;
    clear tempQeccInterval5;
    clear tempQeccInterval6;
    clear tempQeccInterval1Peak;
    clear tempQeccInterval2Peak;
    clear tempQeccInterval3Peak;
    clear tempQeccInterval4Peak;
    clear tempQeccInterval5Peak;
    clear tempQeccInterval6Peak;
    clear tempQecc;
    clear tempQeccPeak;
    clear tempQeccBestInterval;
    clear tempGewicht;
    clear maxGeschwindigkeit;
    clear minGeschwindigkeit;
end

%Verworfen auf Grund des Gewöhnungsprotokolls
%T2 wird nun immer als Peak und BestInterval gesetzt

%Vergleich der Peak-Drehmomente von T1 und T2 und Speicherung des größeren
%Wertes auf einer Testunabhängigen Peak Variablen

% if(Qlecc30PeakT1(1,3) >= Qlecc30PeakT2(1,3))
%     Qlecc30Peak = Qlecc30PeakT1;
%     Qlecc30BestInterval = Qlecc30BestIntervalT1;
% else
     Qlecc30Peak = Qlecc30PeakT2;
     Qlecc30BestInterval = Qlecc30BestIntervalT2;
% end
% 
% if(Qlecc150PeakT1(1,3) >= Qlecc150PeakT2(1,3))
%     Qlecc150Peak = Qlecc150PeakT1;
%     Qlecc150BestInterval = Qlecc150BestIntervalT1;
% else
     Qlecc150Peak = Qlecc150PeakT2;
     Qlecc150BestInterval = Qlecc150BestIntervalT2;
% end
% 
% if(Qrecc30PeakT1(1,3) >= Qrecc30PeakT2(1,3))
%     Qrecc30Peak = Qrecc30PeakT1;
%     Qrecc30BestInterval = Qrecc30BestIntervalT1;
% else
     Qrecc30Peak = Qrecc30PeakT2;
     Qrecc30BestInterval = Qrecc30BestIntervalT2;
% end
% 
% if(Qrecc150PeakT1(1,3) >= Qrecc150PeakT2(1,3))
%     Qrecc150Peak = Qrecc150PeakT1;
%     Qrecc150BestInterval = Qrecc150BestIntervalT1;
% else
     Qrecc150Peak = Qrecc150PeakT2;
     Qrecc150BestInterval = Qrecc150BestIntervalT2;
% end

clear z;
clear minGeschwindigkeit150;
clear maxGeschwindigkeit150;
clear minGeschwindigkeit30;
clear maxGeschwindigkeit30;
