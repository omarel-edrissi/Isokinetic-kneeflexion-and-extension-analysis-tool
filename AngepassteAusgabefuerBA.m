%DCRe left
figure('Name','DCRe linkes Bein bei 30°/s und 150°/s');
grid on
grid minor
axis ([0, 120, 0, 6])
xlabel('Knieflexionswinkel [°]','FontSize',12)
ylabel('rel. M [Nm/kg]','FontSize',48')
title('DCRe linkes Bein bei 30°/s und 150°/s', 'FontSize',24)
hold on
set(gca,'FontSize',12)
plot(Hlecc30IntervalMitDCRe(:,2),Hlecc30IntervalMitDCRe(:,3),'--','Color', [0 0 0],'lineWidth', 2);
plot(Qlcon30IntervalMitDCRe(:,2),Qlcon30IntervalMitDCRe(:,3),'-','Color', [0 0 0],'lineWidth', 2);
plot(Hlecc150IntervalMitDCRe(:,2),Hlecc150IntervalMitDCRe(:,3),':','Color', [0 0 0],'lineWidth', 2);
plot(Qlcon150IntervalMitDCRe(:,2),Qlcon150IntervalMitDCRe(:,3),'-.','Color', [0 0 0],'lineWidth', 2);



plot(lDCRe30(:,1), lDCRe30(:,3),'ko','MarkerSize', 15);
plot(lDCRe150(:,1), lDCRe150(:,3),'ks','MarkerSize', 15);

plot(Hlecc30Peak(:,2), Hlecc30Peak(:,3),'^','Color', [0 0 0] ,'MarkerSize', 10);
plot(Qlcon30Peak(:,2), Qlcon30Peak(:,3),'d','Color', [0 0 0] ,'MarkerSize', 10);
plot(Hlecc150Peak(:,2), Hlecc150Peak(:,3),'*','Color', [0 0 0] ,'MarkerSize', 10);
plot(Qlcon150Peak(:,2), Qlcon150Peak(:,3),'x','Color', [0 0 0] ,'MarkerSize', 10);
legend({'MFlex exz 30°/s','MExt kon 30°/s','MFlex exz 150°/s','MExt kon 150°/s', 'DCRe 30°/s', 'DCRe 150°/s', 'PM Flex exz 30°/s', 'PM Ext kon 30°/s', 'PM Flex exz 150°/s', 'PM Ext kon 150°/s'},'FontSize',12,'Location','northwest')

% x = [lDCRe30(:,1) lDCRe30(:,1)];
% y = [0 lDCRe30(:,3)];
% line(x,y,'Color','k','LineStyle','--')
% 
% x = [lDCRe150(:,1) lDCRe150(:,1)];
% y = [0 lDCRe150(:,3)];
% line(x,y,'Color','k','LineStyle','--')

%DCRe right
figure('Name','DCRe rechtes Bein bei 30°/s und 150°/s');
grid on
grid minor
axis ([0, 120, 0, 6])
xlabel('Knieflexionswinkel [°]','FontSize',12)
ylabel('rel. M [Nm/kg]','FontSize',48')
title('DCRe rechtes Bein bei 30°/s und 150°/s', 'FontSize',24)
hold on
set(gca,'FontSize',12)
plot(Hrecc30IntervalMitDCRe(:,2),Hrecc30IntervalMitDCRe(:,3),'--','Color', [0 0 0],'lineWidth', 2);
plot(Qrcon30IntervalMitDCRe(:,2),Qrcon30IntervalMitDCRe(:,3),'-','Color', [0 0 0],'lineWidth', 2);
plot(Hrecc150IntervalMitDCRe(:,2),Hrecc150IntervalMitDCRe(:,3),':','Color', [0 0 0],'lineWidth', 2);
plot(Qrcon150IntervalMitDCRe(:,2),Qrcon150IntervalMitDCRe(:,3),'-.','Color', [0 0 0],'lineWidth', 2);

plot(rDCRe30(:,1), rDCRe30(:,3),'ko','MarkerSize', 15);
plot(rDCRe150(:,1), rDCRe150(:,3),'ks','MarkerSize', 15);

plot(Hrecc30Peak(:,2), Hrecc30Peak(:,3),'^','Color', [0 0 0] ,'MarkerSize', 10);
plot(Qrcon30Peak(:,2), Qrcon30Peak(:,3),'d','Color', [0 0 0] ,'MarkerSize', 10);
plot(Hrecc150Peak(:,2), Hrecc150Peak(:,3),'*','Color', [0 0 0] ,'MarkerSize', 10);
plot(Qrcon150Peak(:,2), Qrcon150Peak(:,3),'x','Color', [0 0 0] ,'MarkerSize', 10);
legend({'MFlex exz 30°/s','MExt kon 30°/s','MFlex exz 150°/s','MExt kon 150°/s', 'DCRe 30°/s', 'DCRe 150°/s', 'PM Flex exz 30°/s', 'PM Ext kon 30°/s', 'PM Flex exz 150°/s', 'PM Ext kon 150°/s'},'FontSize',12,'Location','northwest')

% x = [rDCRe30(:,1) rDCRe30(:,1)];
% y = [0 rDCRe30(:,3)];
% line(x,y,'Color','m','LineStyle','--');
% 
% x = [rDCRe150(:,1) rDCRe150(:,1)];
% y = [0 rDCRe150(:,3)];
% line(x,y,'Color','m','LineStyle','--');

%DCR left and right

figure('Name','DCR linkes und rechtes Bein bei 30°/s und 150°/s');
ax = gca;
grid on
grid minor
axis ([-6, 6, -6, 6])
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.XTickLabel = '';
ax.TickDir = 'both';
ax.YTick = [-6 -5.5 -5 -4.5 -4 -3.5 -3 -2.5 -2 -1.5 -1 -0.5 0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5 5.5 6];
ax.XTick = [-6 6];

%xlabel('right leg','FontSize',12)
ylabel('rel. M [Nm/kg]','FontSize',48')
title('DCR linkes und rechtes Bein bei 30°/s und 150°/s', 'FontSize',24)
hold on
set(gca,'FontSize',12)

text(2.8, 4.5, 'Kniestrecker rechts','FontSize',16');
text(-3.2, 4.5, 'Kniestrecker links','FontSize',16');
text(2.8, -4.5, 'Kniebeuger rechts','FontSize',16');
text(-3.2, -4.5, 'Kniebeuger links','FontSize',16');

bar(1, Qrcon30Peak(1,3),'FaceColor',[0 0 0],'LineStyle','-','lineWidth', 1);
bar(1, (Hrecc30Peak(1,3)*-1),'FaceColor',[1 1 1],'LineStyle','-','lineWidth', 1);

bar(-1, Qlcon30Peak(1,3),'FaceColor',[0.3 0.3 0.3],'LineStyle','--','lineWidth', 1);
bar(-1, (Hlecc30Peak(1,3)*-1),'FaceColor',[1 1 1],'LineStyle','--','lineWidth', 1);

bar(3, Qrcon150Peak(1,3),'FaceColor',[0.6 0.6 0.6],'LineStyle','-.','lineWidth', 1);
bar(3, (Hrecc150Peak(1,3)*-1),'FaceColor',[1 1 1],'LineStyle','-.','lineWidth', 1);

bar(-3, Qlcon150Peak(1,3),'FaceColor',[.9 .9 .9],'LineStyle',':','lineWidth', 1);
bar(-3, (Hlecc150Peak(1,3)*-1),'FaceColor',[1 1 1],'LineStyle',':','lineWidth', 1);

legend({'PM Ext kon rechts 30°/s', 'PM Hrecc 30°/s', 'PM Qlcon 30°/s', 'PM Hlecc 30°/s', 'PM Qrcon 150°/s','PM Hrecc 150°/s', 'PM Qlcon 150°/s','PM Hlecc 150°/s'},'FontSize',12,'Location','northeast')

%HQRatio left and right

figure('Name','H:Q Ratio linkes und rechtes Bein bei 30°/s und 150°/s');
ax = gca;
grid on
grid minor
axis ([-6, 6, -6, 6])
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.XTickLabel = '';
ax.TickDir = 'both';
ax.XTick = [-6 6];
ax.YTick = [-6 -5.5 -5 -4.5 -4 -3.5 -3 -2.5 -2 -1.5 -1 -0.5 0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5 5.5 6];

%xlabel('right leg','FontSize',12)
ylabel('rel. M [Nm/kg]','FontSize',48')
title('H:Q Ratio linkes und rechtes Bein bei 30°/s und 150°/s', 'FontSize',24)
hold on
set(gca,'FontSize',12)

text(2.8, 4.5, 'Kniestrecker rechts','FontSize',16');
text(-3.2, 4.5, 'Kniestrecker links','FontSize',16');
text(2.8, -4.5, 'Kniebeuger rechts','FontSize',16');
text(-3.2, -4.5, 'Kniebeuger links','FontSize',16');

bar(1, Qrcon30Peak(1,3),'FaceColor',[0 0 0],'LineStyle','-','lineWidth', 1);
bar(1, (Hrcon30Peak(1,3)*-1),'FaceColor',[1 1 1],'LineStyle','-','lineWidth', 1);

bar(-1, Qlcon30Peak(1,3),'FaceColor',[0.3 0.3 0.3],'LineStyle','--','lineWidth', 1);
bar(-1, (Hlcon30Peak(1,3)*-1),'FaceColor',[1 1 1],'LineStyle','--','lineWidth', 1);

bar(3, Qrcon150Peak(1,3),'FaceColor',[0.6 0.6 0.6],'LineStyle','-.','lineWidth', 1);
bar(3, (Hrcon150Peak(1,3)*-1),'FaceColor',[1 1 1],'LineStyle','-.','lineWidth', 1);

bar(-3, Qlcon150Peak(1,3),'FaceColor',[.9 .9 .9],'LineStyle',':','lineWidth', 1);
bar(-3, (Hlcon150Peak(1,3)*-1),'FaceColor',[1 1 1],'LineStyle',':','lineWidth', 1);


legend({'PM Qrcon 30°/s', 'PM Hrcon 30°/s', 'PM Qlcon 30°/s', 'PM Hlcon 30°/s', 'PM Qrcon 150°/s','PM Hrcon 150°/s', 'PM Qlcon 150°/s','PM Hlcon 150°/s'},'FontSize',12,'Location','northeast')

%Vergleich Links zu Rechts con

figure('Name','Linkes gegen rechtes Bein isokinetisch konzentrisch 30°/s und 150°/s');
ax = gca;
grid on
grid minor
axis ([-6, 6, -6, 6])
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.YTickLabel = '';
ax.TickDir = 'both';
ax.YTick = [-6 6];
ax.XTick = [-6 -5.5 -5 -4.5 -4 -3.5 -3 -2.5 -2 -1.5 -1 -0.5 0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5 5.5 6];

%xlabel('right leg','FontSize',12)
xlabel('rel. M [Nm/kg]','FontSize',48')
title('Linkes gegen rechtes Bein isokinetisch konzentrisch 30°/s und 150°/s', 'FontSize',24)
hold on
set(gca,'FontSize',12)

text(2.8, 4.5, 'Kniestrecker rechts','FontSize',16');
text(-3.2, 4.5, 'Kniestrecker links','FontSize',16');
text(2.8, -4.5, 'Kniebeuger rechts','FontSize',16');
text(-3.2, -4.5, 'Kniebeuger links','FontSize',16');

barh(1, Qrcon30Peak(1,3),'FaceColor',[0 0 0],'LineStyle','-','lineWidth', 1);
barh(1, Qlcon30Peak(1,3)*-1,'FaceColor', [.3 0.3 0.3],'LineStyle','--','lineWidth', 1);
barh(3, Qrcon150Peak(1,3),'FaceColor', [0.6 0.6 0.6],'LineStyle','-.','lineWidth', 1);
barh(3, Qlcon150Peak(1,3)*-1,'FaceColor', [.9 0.9 0.9],'LineStyle',':','lineWidth', 1);

barh(-1, Hrcon30Peak(1,3),'FaceColor',[1 1 1],'LineStyle','-','lineWidth', 1);
barh(-1, Hlcon30Peak(1,3)*-1,'FaceColor',[1 1 1],'LineStyle','--','lineWidth', 1);
barh(-3, Hrcon150Peak(1,3),'FaceColor',[1 1 1],'LineStyle','-.','lineWidth', 1);
barh(-3, Hlcon150Peak(1,3)*-1,'FaceColor',[1 1 1],'LineStyle',':','lineWidth', 1);

legend({'PM Qrcon 30°/s', 'PM Qlcon 30°/s', 'PM Qrcon 150°/s', 'PM Qlcon 150°/s', 'PM Hrcon 30°/s','PM Hlcon 30°/s', 'PM Hrcon 150°/s','PM Hlcon 150°/s'},'FontSize',12,'Location','northeast')


%Vergleich Links zu Rechts ecc

figure('Name','Linkes gegen rechtes Bein isokinetisch exzentrisch 30°/s und 150°/s');
ax = gca;
grid on
grid minor
axis ([-6, 6, -6, 6])
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.YTickLabel = '';
ax.TickDir = 'both';
ax.YTick = [-6 6];
ax.XTick = [-6 -5.5 -5 -4.5 -4 -3.5 -3 -2.5 -2 -1.5 -1 -0.5 0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5 5.5 6];

%xlabel('right leg','FontSize',12)
xlabel('rel. M [Nm/kg]','FontSize',48')
title('Linkes gegen rechtes Bein isokinetisch exzentrisch 30°/s und 150°/s', 'FontSize',24)
hold on
set(gca,'FontSize',12)

text(2.8, 4.5, 'Kniestrecker rechts','FontSize',16');
text(-3.2, 4.5, 'Kniestrecker links','FontSize',16');
text(2.8, -4.5, 'Kniebeuger rechts','FontSize',16');
text(-3.2, -4.5, 'Kniebeuger links','FontSize',16');

barh(1, Qrecc30Peak(1,3),'FaceColor',[0 0 0],'LineStyle','-','lineWidth', 1);
barh(1, Qlecc30Peak(1,3)*-1,'FaceColor', [0.3 0.3 0.3],'LineStyle','--','lineWidth', 1);
barh(3, Qrecc150Peak(1,3),'FaceColor', [0.6 0.6 0.6],'LineStyle','-.','lineWidth', 1);
barh(3, Qlecc150Peak(1,3)*-1,'FaceColor', [.9 0.9 0.9],'LineStyle',':','lineWidth', 1);

barh(-1, Hrecc30Peak(1,3),'FaceColor',[1 1 1],'LineStyle','-','lineWidth', 1);
barh(-1, (Hlecc30Peak(1,3)*-1),'FaceColor',[1 1 1],'LineStyle','--','lineWidth', 1);
barh(-3, Hrecc150Peak(1,3),'FaceColor',[1 1 1],'LineStyle','-.','lineWidth', 1);
barh(-3, Hlecc150Peak(1,3)*-1,'FaceColor',[1 1 1],'LineStyle',':','lineWidth', 1);

legend({'PM Qrecc 30°/s', 'PM Qlecc 30°/s', 'PM Qrecc 150°/s', 'PM Qlecc 150°/s', 'PM Hrecc 30°/s','PM Hlecc 30°/s', 'PM Hrecc 150°/s','PM Hlecc 150°/s'},'FontSize',12,'Location','northeast')

