lDCRe30 = [0, 0 , 0 , 0];
lDCRe150 = [0, 0 , 0 , 0];

rDCRe30 = [0, 0 , 0 , 0];
rDCRe150 = [0, 0 , 0 , 0];

%tempGewicht = (GewichtT1+GewichtT2)/2;
tempGewicht = GewichtT2;

minMToleranz = -0.25/tempGewicht;
maxMToleranz = 0.25/tempGewicht;

minPosToleranz = -0.25;
maxPosToleranz = 0.25;

Hlecc30IntervalMitDCRe = [NaN,NaN,NaN,NaN];
Qlcon30IntervalMitDCRe = [NaN,NaN,NaN,NaN];
Hrecc30IntervalMitDCRe = [NaN,NaN,NaN,NaN];
Qrcon30IntervalMitDCRe = [NaN,NaN,NaN,NaN];
Hlecc150IntervalMitDCRe = [NaN,NaN,NaN,NaN];
Qlcon150IntervalMitDCRe = [NaN,NaN,NaN,NaN];
Hrecc150IntervalMitDCRe = [NaN,NaN,NaN,NaN];
Qrcon150IntervalMitDCRe = [NaN,NaN,NaN,NaN];


for x=3:5
%Verworfen auf Grund des Gewöhnungsprotokolls
%T2 wird nun nur analysiert
% for x=1:12
%     if(x==1)
%         tempHlecc30 = Hlecc30Interval1T1;
%     elseif(x==2)
%         tempHlecc30 = Hlecc30Interval1T2;
%     elseif(x==3)
%         tempHlecc30 = Hlecc30Interval2T1;
%     elseif(x==4)
%         tempHlecc30 = Hlecc30Interval2T2;
%     elseif(x==5)
%         tempHlecc30 = Hlecc30Interval3T1;
%     elseif(x==6)
%         tempHlecc30 = Hlecc30Interval3T2;
%     elseif(x==7)
%         tempHlecc30 = Hlecc30Interval4T1;
%     elseif(x==8)
%         tempHlecc30 = Hlecc30Interval4T2;
%     elseif(x==9)
%         tempHlecc30 = Hlecc30Interval5T1;
%     elseif(x==10)
%         tempHlecc30 = Hlecc30Interval5T2;
%     elseif(x==11)
%         tempHlecc30 = Hlecc30Interval6T1;
%     elseif(x==12)
%         tempHlecc30 = Hlecc30Interval6T2;
%     end

    if(x==1)
        tempHlecc30 = Hlecc30Interval1T2;
    elseif(x==2)
        tempHlecc30 = Hlecc30Interval2T2;
    elseif(x==3)
        tempHlecc30 = Hlecc30Interval3T2;
    elseif(x==4)
        tempHlecc30 = Hlecc30Interval4T2;
    elseif(x==5)
        tempHlecc30 = Hlecc30Interval5T2;
    elseif(x==6)
        tempHlecc30 = Hlecc30Interval6T2;
    end

    
%     for w=1:12
%         if(w==1)
%             tempQlcon30 = Qlcon30Interval1T1;
%         elseif(w==2)
%             tempQlcon30 = Qlcon30Interval1T2;
%         elseif(w==3)
%             tempQlcon30 = Qlcon30Interval2T1;
%         elseif(w==4)
%             tempQlcon30 = Qlcon30Interval2T2;
%         elseif(w==5)
%             tempQlcon30 = Qlcon30Interval3T1;
%         elseif(w==6)
%             tempQlcon30 = Qlcon30Interval3T2;
%         elseif(w==7)
%             tempQlcon30 = Qlcon30Interval4T1;
%         elseif(w==8)
%             tempQlcon30 = Qlcon30Interval4T2;
%         elseif(w==9)
%             tempQlcon30 = Qlcon30Interval5T1;
%         elseif(w==10)
%             tempQlcon30 = Qlcon30Interval5T2;
%         elseif(w==11)
%             tempQlcon30 = Qlcon30Interval6T1;
%         elseif(w==12)
%             tempQlcon30 = Qlcon30Interval6T2;
%         end

    for w=3:5
        if(w==1)
            tempQlcon30 = Qlcon30Interval1T2;
        elseif(w==2)
            tempQlcon30 = Qlcon30Interval2T2;
        elseif(w==3)
            tempQlcon30 = Qlcon30Interval3T2;
        elseif(w==4)
            tempQlcon30 = Qlcon30Interval4T2;
        elseif(w==5)
            tempQlcon30 = Qlcon30Interval5T2;
        elseif(w==6)
            tempQlcon30 = Qlcon30Interval6T2;
        end

                
       for v=1:size(tempHlecc30)
           for u=1:size(tempQlcon30)
                if(((tempHlecc30(v,3) - tempQlcon30(u,3)) >= minMToleranz) && ((tempHlecc30(v,3) - tempQlcon30(u,3)) <= maxMToleranz))
                   if (((tempHlecc30(v,2) - tempQlcon30(u,2)) >= minPosToleranz) && ((tempHlecc30(v,2) - tempQlcon30(u,2)) <= maxPosToleranz))
                     if((tempHlecc30(v,3) >= lDCRe30(1,3) && (tempQlcon30(u,3) >= lDCRe30(1,4))))
                        lDCRe30(1,1) = tempHlecc30(v,2);
                        lDCRe30(1,2) = tempQlcon30(u,2);
                        lDCRe30(1,3) = tempHlecc30(v,3);
                        lDCRe30(1,4) = tempQlcon30(u,3);
                        Hlecc30IntervalMitDCRe = tempHlecc30;
                        Qlcon30IntervalMitDCRe = tempQlcon30;
                      end
                   end
                end
           end
       end
        clear tempQlcon30:
    end
    
   clear tempHlecc30; 
    
end

clear u;
clear v;
clear w;
clear x;

for x=3:5
% for x=1:12
%     if(x==1)
%         tempHrecc30 = Hrecc30Interval1T1;
%     elseif(x==2)
%         tempHrecc30 = Hrecc30Interval1T2;
%     elseif(x==3)
%         tempHrecc30 = Hrecc30Interval2T1;
%     elseif(x==4)
%         tempHrecc30 = Hrecc30Interval2T2;
%     elseif(x==5)
%         tempHrecc30 = Hrecc30Interval3T1;
%     elseif(x==6)
%         tempHrecc30 = Hrecc30Interval3T2;
%     elseif(x==7)
%         tempHrecc30 = Hrecc30Interval4T1;
%     elseif(x==8)
%         tempHrecc30 = Hrecc30Interval4T2;
%     elseif(x==9)
%         tempHrecc30 = Hrecc30Interval5T1;
%     elseif(x==10)
%         tempHrecc30 = Hrecc30Interval5T2;
%     elseif(x==11)
%         tempHrecc30 = Hrecc30Interval6T1;
%     elseif(x==12)
%         tempHrecc30 = Hrecc30Interval6T1;
%     end


    if(x==1)
        tempHrecc30 = Hrecc30Interval1T2;
    elseif(x==2)
        tempHrecc30 = Hrecc30Interval2T2;
    elseif(x==3)
        tempHrecc30 = Hrecc30Interval3T2;
    elseif(x==4)
        tempHrecc30 = Hrecc30Interval4T2;
    elseif(x==5)
        tempHrecc30 = Hrecc30Interval5T2;
    elseif(x==6)
        tempHrecc30 = Hrecc30Interval6T2;
    end


    
%     for w=1:12
%         if(w==1)
%             tempQrcon30 = Qrcon30Interval1T1;
%         elseif(w==2)
%             tempQrcon30 = Qrcon30Interval1T2;
%         elseif(w==3)
%             tempQrcon30 = Qrcon30Interval2T1;
%         elseif(w==4)
%             tempQrcon30 = Qrcon30Interval2T2;
%         elseif(w==5)
%             tempQrcon30 = Qrcon30Interval3T1;
%         elseif(w==6)
%             tempQrcon30 = Qrcon30Interval3T2;
%         elseif(w==7)
%             tempQrcon30 = Qrcon30Interval4T1;
%         elseif(w==8)
%             tempQrcon30 = Qrcon30Interval4T2;
%         elseif(w==9)
%             tempQrcon30 = Qrcon30Interval5T1;
%         elseif(w==10)
%             tempQrcon30 = Qrcon30Interval5T2;
%         elseif(w==11)
%             tempQrcon30 = Qrcon30Interval6T1;
%         elseif(w==12)
%             tempQrcon30 = Qrcon30Interval6T2;
%         end

    for w=3:5
        if(w==1)
            tempQrcon30 = Qrcon30Interval1T2;
        elseif(w==2)
            tempQrcon30 = Qrcon30Interval2T2;
        elseif(w==3)
            tempQrcon30 = Qrcon30Interval3T2;
        elseif(w==4)
            tempQrcon30 = Qrcon30Interval4T2;
        elseif(w==5)
            tempQrcon30 = Qrcon30Interval5T2;
        elseif(w==6)
            tempQrcon30 = Qrcon30Interval6T2;
        end

                
       for v=1:size(tempHrecc30)
           for u=1:size(tempQrcon30)
                if(((tempHrecc30(v,3) - tempQrcon30(u,3)) >= minMToleranz) && ((tempHrecc30(v,3) - tempQrcon30(u,3)) <= maxMToleranz))
                   if (((tempHrecc30(v,2) - tempQrcon30(u,2)) >= minPosToleranz) && ((tempHrecc30(v,2) - tempQrcon30(u,2)) <= maxPosToleranz))
                     if((tempHrecc30(v,3) >= rDCRe30(1,3) && (tempQrcon30(u,3) >= rDCRe30(1,4))))
                        rDCRe30(1,1) = tempHrecc30(v,2);
                        rDCRe30(1,2) = tempQrcon30(u,2);
                        rDCRe30(1,3) = tempHrecc30(v,3);
                        rDCRe30(1,4) = tempQrcon30(u,3);
                        Hrecc30IntervalMitDCRe = tempHrecc30;
                        Qrcon30IntervalMitDCRe = tempQrcon30;
                      end
                   end
                end
           end
       end       
    end
    
   
end

clear u;
clear v;
clear w;
clear x;

for x=3:5
% for x=1:12
%     if(x==1)
%         tempHlecc150 = Hlecc150Interval1T1;
%     elseif(x==2)
%         tempHlecc150 = Hlecc150Interval1T2;
%     elseif(x==3)
%         tempHlecc150 = Hlecc150Interval2T1;
%     elseif(x==4)
%         tempHlecc150 = Hlecc150Interval2T2;
%     elseif(x==5)
%         tempHlecc150 = Hlecc150Interval3T1;
%     elseif(x==6)
%         tempHlecc150 = Hlecc150Interval3T2;
%     elseif(x==7)
%         tempHlecc150 = Hlecc150Interval4T1;
%     elseif(x==8)
%         tempHlecc150 = Hlecc150Interval4T2;
%     elseif(x==9)
%         tempHlecc150 = Hlecc150Interval5T1;
%     elseif(x==10)
%         tempHlecc150 = Hlecc150Interval5T2;
%     elseif(x==11)
%         tempHlecc150 = Hlecc150Interval6T1;
%     elseif(x==12)
%         tempHlecc150 = Hlecc150Interval6T1;
%     end

    if(x==1)
        tempHlecc150 = Hlecc150Interval1T2;
    elseif(x==2)
        tempHlecc150 = Hlecc150Interval2T2;
    elseif(x==3)
        tempHlecc150 = Hlecc150Interval3T2;
    elseif(x==4)
        tempHlecc150 = Hlecc150Interval4T2;
    elseif(x==5)
        tempHlecc150 = Hlecc150Interval5T2;
    elseif(x==6)
        tempHlecc150 = Hlecc150Interval6T2;
    end
    
    for w=3:5
%     for w=1:12
%         if(w==1)
%             tempQlcon150 = Qlcon150Interval1T1;
%         elseif(w==2)
%             tempQlcon150 = Qlcon150Interval1T2;
%         elseif(w==3)
%             tempQlcon150 = Qlcon150Interval2T1;
%         elseif(w==4)
%             tempQlcon150 = Qlcon150Interval2T2;
%         elseif(w==5)
%             tempQlcon150 = Qlcon150Interval3T1;
%         elseif(w==6)
%             tempQlcon150 = Qlcon150Interval3T2;
%         elseif(w==7)
%             tempQlcon150 = Qlcon150Interval4T1;
%         elseif(w==8)
%             tempQlcon150 = Qlcon150Interval4T2;
%         elseif(w==9)
%             tempQlcon150 = Qlcon150Interval5T1;
%         elseif(w==10)
%             tempQlcon150 = Qlcon150Interval5T2;
%         elseif(w==11)
%             tempQlcon150 = Qlcon150Interval6T1;
%         elseif(w==12)
%             tempQlcon150 = Qlcon150Interval6T2;
%         end

        
        if(w==1)
            tempQlcon150 = Qlcon150Interval1T2;
        elseif(w==2)
            tempQlcon150 = Qlcon150Interval2T2;
        elseif(w==3)
            tempQlcon150 = Qlcon150Interval3T2;
        elseif(w==4)
            tempQlcon150 = Qlcon150Interval4T2;
        elseif(w==5)
            tempQlcon150 = Qlcon150Interval5T2;
        elseif(w==6)
            tempQlcon150 = Qlcon150Interval6T2;
        end
                
       for v=1:size(tempHlecc150)
           for u=1:size(tempQlcon150)
                if(((tempHlecc150(v,3) - tempQlcon150(u,3)) >= minMToleranz) && ((tempHlecc150(v,3) - tempQlcon150(u,3)) <= maxMToleranz))
                   if (((tempHlecc150(v,2) - tempQlcon150(u,2)) >= minPosToleranz) && ((tempHlecc150(v,2) - tempQlcon150(u,2)) <= maxPosToleranz))
                     if((tempHlecc150(v,3) >= lDCRe150(1,3) && (tempQlcon150(u,3) >= lDCRe150(1,4))))
                        lDCRe150(1,1) = tempHlecc150(v,2);
                        lDCRe150(1,2) = tempQlcon150(u,2);
                        lDCRe150(1,3) = tempHlecc150(v,3);
                        lDCRe150(1,4) = tempQlcon150(u,3);
                        Hlecc150IntervalMitDCRe = tempHlecc150;
                        Qlcon150IntervalMitDCRe = tempQlcon150;
                      end
                   end
                end
           end
       end       
    end

end

clear u;
clear v;
clear w;
clear x;

for x=3:5
% for x=1:12
%     if(x==1)
%         tempHrecc150 = Hrecc150Interval1T1;
%     elseif(x==2)
%         tempHrecc150 = Hrecc150Interval1T2;
%     elseif(x==3)
%         tempHrecc150 = Hrecc150Interval2T1;
%     elseif(x==4)
%         tempHrecc150 = Hrecc150Interval2T2;
%     elseif(x==5)
%         tempHrecc150 = Hrecc150Interval3T1;
%     elseif(x==6)
%         tempHrecc150 = Hrecc150Interval3T2;
%     elseif(x==7)
%         tempHrecc150 = Hrecc150Interval4T1;
%     elseif(x==8)
%         tempHrecc150 = Hrecc150Interval4T2;
%     elseif(x==9)
%         tempHrecc150 = Hrecc150Interval5T1;
%     elseif(x==10)
%         tempHrecc150 = Hrecc150Interval5T2;
%     elseif(x==11)
%         tempHrecc150 = Hrecc150Interval6T1;
%     elseif(x==12)
%         tempHrecc150 = Hrecc150Interval6T1;
%     end

    if(x==1)
        tempHrecc150 = Hrecc150Interval1T2;
    elseif(x==2)
        tempHrecc150 = Hrecc150Interval2T2;
    elseif(x==3)
        tempHrecc150 = Hrecc150Interval3T2;
    elseif(x==4)
        tempHrecc150 = Hrecc150Interval4T2;
    elseif(x==5)
        tempHrecc150 = Hrecc150Interval5T2;
    elseif(x==6)
        tempHrecc150 = Hrecc150Interval6T2;
    end
    
    
for w=3:5
%     for w=1:12
%         if(w==1)
%             tempQrcon150 = Qrcon150Interval1T1;
%         elseif(w==2)
%             tempQrcon150 = Qrcon150Interval1T2;
%         elseif(w==3)
%             tempQrcon150 = Qrcon150Interval2T1;
%         elseif(w==4)
%             tempQrcon150 = Qrcon150Interval2T2;
%         elseif(w==5)
%             tempQrcon150 = Qrcon150Interval3T1;
%         elseif(w==6)
%             tempQrcon150 = Qrcon150Interval3T2;
%         elseif(w==7)
%             tempQrcon150 = Qrcon150Interval4T1;
%         elseif(w==8)
%             tempQrcon150 = Qrcon150Interval4T2;
%         elseif(w==9)
%             tempQrcon150 = Qrcon150Interval5T1;
%         elseif(w==10)
%             tempQrcon150 = Qrcon150Interval5T2;
%         elseif(w==11)
%             tempQrcon150 = Qrcon150Interval6T1;
%         elseif(w==12)
%             tempQrcon150 = Qrcon150Interval6T2;
%         end


        if(w==1)
            tempQrcon150 = Qrcon150Interval1T2;
        elseif(w==2)
            tempQrcon150 = Qrcon150Interval2T2;
        elseif(w==3)
            tempQrcon150 = Qrcon150Interval3T2;
        elseif(w==4)
            tempQrcon150 = Qrcon150Interval4T2;
        elseif(w==5)
            tempQrcon150 = Qrcon150Interval5T2;
        elseif(w==6)
            tempQrcon150 = Qrcon150Interval6T2;
        end


                
       for v=1:size(tempHrecc150)
           for u=1:size(tempQrcon150)
                if(((tempHrecc150(v,3) - tempQrcon150(u,3)) >= minMToleranz) && ((tempHrecc150(v,3) - tempQrcon150(u,3)) <= maxMToleranz))
                   if (((tempHrecc150(v,2) - tempQrcon150(u,2)) >= minPosToleranz) && ((tempHrecc150(v,2) - tempQrcon150(u,2)) <= maxPosToleranz))
                     if((tempHrecc150(v,3) >= rDCRe150(1,3) && (tempQrcon150(u,3) >= rDCRe150(1,4))))
                        rDCRe150(1,1) = tempHrecc150(v,2);
                        rDCRe150(1,2) = tempQrcon150(u,2);
                        rDCRe150(1,3) = tempHrecc150(v,3);
                        rDCRe150(1,4) = tempQrcon150(u,3);
                        Hrecc150IntervalMitDCRe = tempHrecc150;
                        Qrcon150IntervalMitDCRe = tempQrcon150;
                      end
                   end
                end
           end
       end       
    end
   
end

clear u;
clear v;
clear w;
clear x;

clear tempHrecc150;
clear tempQrcon150;    
clear tempHlecc150;
clear tempQlcon150;
clear tempHrecc30;
clear tempQrcon30;
    
clear tempHlecc30;
clear tempQlcon30;

clear minMToleranz;
clear maxMToleranz;

clear minPosToleranz;
clear maxPosToleranz;
