for i=1:360
    n(i,1) = i;
    n(i,2) = acosd(0.2365-(0.6279*cosd(i+20)));
    p(i,1) = i;
    s = (0.4680-(0.2376*cosd(i+20)))^0.5;
    p(i,2) = (asind((0.1800*sind(i+20))/s)+asind((0.4400*sind(n(i,2)))/s))+20;
    lh(i,1) = i;
    lh(i,2) = (0.1914+(0.0344*cosd(n(i,2))+(0.0602*sind(p(i,2)))-(0.0056*sind(n(i,2)-p(i,2)))))^0.5;
    lq(i,1) = i;
    lq(i,2) = (0.0400*(n(i,2)+(pi/2)))+((0.1914-(0.0602*sind(p(i,2)))-(0.0056*cosd(p(i,2))))^0.5);
    
end

nmin(1,2) = min(n(:,2));
nmax(1,2) = max(n(:,2));
pmin(1,2) = min(p(:,2));
pmax(1,2) = max(p(:,2));

for j=1:360
    if n(j,2) == nmin(1,2)
        nmin(1,1) = n(j,1);
    end
end

for k=1:360
    if n(k,2) == nmax(1,2)
        nmax(1,1) = n(k,1);
    end
end

for j=1:360
    if p(j,2) == pmin(1,2)
        pmin(1,1) = p(j,1);
    end
end

for k=1:360
    if p(k,2) == pmax(1,2)
        pmax(1,1) = p(k,1);
    end
end

clear k;
clear j;
clear i;

%Kniegelenkwinkel
figure('Name','Knieflexionswinkel im Kurbelumdrehungszyklus');
grid on
grid minor
axis ([0, 360, 0, 130])
xlabel('Kurbelwinkel [°]','FontSize',12)
ylabel('Knieflexionswinkel [°]','FontSize',48')
title('Knieflexionswinkel im Kurbelumdrehungszyklus', 'FontSize',24)
hold on
set(gca,'FontSize',12)

plot(n(:,1),n(:,2),'-','Color', [0 0 0],'lineWidth', 2);

legend({'Knieflexionswinkel'},'FontSize',12,'Location','northwest')
% 
%  p1 = [45 45];
%  p2 = [0 n(45,2)];
%  line(p1,p2,'Color','k','LineStyle','--')
%  
%  p1 = [90 90];
%  p2 = [0 n(90,2)];
%  line(p1,p2,'Color','k','LineStyle','-')
%  
%  p2 = [n(90,2) n(90,2)];
%  p1 = [90 0];
%  line(p1,p2,'Color','b','LineStyle','-')
% 
%  p1 = [135 135];
%  p2 = [0 n(135,2)];
%  line(p1,p2,'Color','m','LineStyle','--')
% 
%  p1 = [110 110];
%  p2 = [0 n(110,2)];
%  line(p1,p2,'Color','r','LineStyle','-')
%  
%  p2 = [n(110,2) n(110,2)];
%  p1 = [110 0];
%  line(p1,p2,'Color','r','LineStyle','-')
%  
%  p1 = [225 225];
%  p2 = [0 n(225,2)];
%  line(p1,p2,'Color','m','LineStyle','--')
 
%  p1 = [n(225,2) n(225,2)];
%  p2 = [225 0];
%  line(p1,p2,'Color','m','LineStyle','--')
 
%  p1 = [315 315];
%  p2 = [0 n(315,2)];
%  line(p1,p2,'Color','m','LineStyle','--')
 
%  p1 = [n(315,2) n(315,2)];
%  p2 = [315 0];
%  line(p1,p2,'Color','m','LineStyle','--')

clear p1;
clear p2;

n(90,2)
n(110,2)

%plot(Qlcon30BestInterval(:,2),Qlcon30BestInterval(:,3)*70,'-','Color', [0 0 0],'lineWidth', 2);

%Hüftgelenkswinkel
figure('Name','Hüftflexionswinkel im Kurbelumdrehungszyklus');
grid on
grid minor
axis ([0, 360, 0, 130])
xlabel('Kurbelwinkel [°]','FontSize',12)
ylabel('Hüftflexionswinkel [°]','FontSize',48')
title('Hüftflexionswinkel im Kurbelumdrehungszyklus', 'FontSize',24)
hold on
set(gca,'FontSize',12)

plot(p(:,1),p(:,2),'-','Color', [0 0 0],'lineWidth', 2);

legend({'Hüftflexionswinkel'},'FontSize',12,'Location','northwest')

%  p1 = [45 45];
%  p2 = [0 p(45,2)];
%  line(p1,p2,'Color','m','LineStyle','--')
%  
%  p1 = [90 90];
%  p2 = [0 p(90,2)];
%  line(p1,p2,'Color','r','LineStyle','-')
%  
%  p2 = [p(90,2) p(90,2)];
%  p1 = [90 0];
%  line(p1,p2,'Color','r','LineStyle','-')
% 
%  p1 = [135 135];
%  p2 = [0 p(135,2)];
%  line(p1,p2,'Color','m','LineStyle','--')
% 
%  p1 = [110 110];
%  p2 = [0 p(110,2)];
%  line(p1,p2,'Color','r','LineStyle','-')
%  
%  p2 = [p(110,2) p(110,2)];
%  p1 = [110 0];
%  line(p1,p2,'Color','r','LineStyle','-')
%  
%  p1 = [225 225];
%  p2 = [0 p(225,2)];
%  line(p1,p2,'Color','m','LineStyle','--')
%  
% %  p1 = [n(225,2) n(225,2)];
% %  p2 = [225 0];
% %  line(p1,p2,'Color','m','LineStyle','--')
%  
%  p1 = [315 315];
%  p2 = [0 p(315,2)];
%  line(p1,p2,'Color','m','LineStyle','--')
 
%  p1 = [n(315,2) n(315,2)];
%  p2 = [315 0];
%  line(p1,p2,'Color','m','LineStyle','--')

clear p1;
clear p2;

p(90,2)
p(110,2)

%plot(Qlcon30BestInterval(:,2),Qlcon30BestInterval(:,3)*70,'-','Color', [0 0 0],'lineWidth', 2);