%DCR  left
figure('Name','DCR linkes Bein bei 30°/s und 150°/s');
grid on
grid minor
axis ([0, 120, 0, 6])
xlabel('Knieflexionswinkel [°]','FontSize',12)
ylabel('rel. M [Nm/kg]','FontSize',48')
title('DCR linkes Bein bei 30°/s und 150°/s', 'FontSize',24)
hold on
set(gca,'FontSize',12)
plot(Hlecc30BestInterval(:,2),Hlecc30BestInterval(:,3),'--','Color', [0 0 0],'lineWidth', 2);
plot(Qlcon30BestInterval(:,2),Qlcon30BestInterval(:,3),'-','Color', [0 0 0],'lineWidth', 2);
plot(Hlecc150BestInterval(:,2),Hlecc150BestInterval(:,3),':','Color', [0 0 0],'lineWidth', 2);
plot(Qlcon150BestInterval(:,2),Qlcon150BestInterval(:,3),'-.','Color', [0 0 0],'lineWidth', 2);

plot(Hlecc30Peak(:,2), Hlecc30Peak(:,3),'^','Color', [0 0 0] ,'MarkerSize', 10);
plot(Qlcon30Peak(:,2), Qlcon30Peak(:,3),'d','Color', [0 0 0] ,'MarkerSize', 10);
plot(Hlecc150Peak(:,2), Hlecc150Peak(:,3),'*','Color', [0 0 0] ,'MarkerSize', 10);
plot(Qlcon150Peak(:,2), Qlcon150Peak(:,3),'x','Color', [0 0 0] ,'MarkerSize', 10);
legend({'Hlecc30','Qlcon30','Hlecc150','Qlcon150', 'PM Hlecc30', 'PM Qlcon30', 'PM Hlecc150', 'PM Qlcon150'},'FontSize',12,'Location','northeast')

%DCR right
figure('Name','DCR rechtes Bein bei 30°/s und 150°/s');
grid on
grid minor
axis ([0, 120, 0, 6])
xlabel('Knieflexionswinkel [°]','FontSize',12)
ylabel('rel. M [Nm/kg]','FontSize',48')
title('DCR rechtes Bein bei 30°/s und 150°/s', 'FontSize',24)
hold on
set(gca,'FontSize',12)
plot(Hrecc30BestInterval(:,2),Hrecc30BestInterval(:,3),'--','Color', [0 0 0],'lineWidth', 2);
plot(Qrcon30BestInterval(:,2),Qrcon30BestInterval(:,3),'-','Color', [0 0 0],'lineWidth', 2);
plot(Hrecc150BestInterval(:,2),Hrecc150BestInterval(:,3),':','Color', [0 0 0],'lineWidth', 2);
plot(Qrcon150BestInterval(:,2),Qrcon150BestInterval(:,3),'-.','Color', [0 0 0],'lineWidth', 2);

plot(Hrecc30Peak(:,2), Hrecc30Peak(:,3),'^','Color', [0 0 0] ,'MarkerSize', 10);
plot(Qrcon30Peak(:,2), Qrcon30Peak(:,3),'d','Color', [0 0 0] ,'MarkerSize', 10);
plot(Hrecc150Peak(:,2), Hrecc150Peak(:,3),'*','Color', [0 0 0] ,'MarkerSize', 10);
plot(Qrcon150Peak(:,2), Qrcon150Peak(:,3),'x','Color', [0 0 0] ,'MarkerSize', 10);
legend({'Hrecc30','Qrcon30','Hrecc150','Qrcon150', 'PM Hrecc30', 'PM Qrcon30', 'PM Hrecc150', 'PM Qrcon150'},'FontSize',12,'Location','northeast')

%HQ  left
figure('Name','HQ linkes Bein bei 30°/s und 150°/s');
grid on
grid minor
axis ([0, 120, 0, 6])
xlabel('Knieflexionswinkel [°]','FontSize',12)
ylabel('rel. M [Nm/kg]','FontSize',48')
title('HQ linkes Bein bei 30°/s und 150°/s', 'FontSize',24)
hold on
set(gca,'FontSize',12)
plot(Hlcon30BestInterval(:,2),Hlcon30BestInterval(:,3),'--','Color', [0 0 0],'lineWidth', 2);
plot(Qlcon30BestInterval(:,2),Qlcon30BestInterval(:,3),'-','Color', [0 0 0],'lineWidth', 2);
plot(Hlcon150BestInterval(:,2),Hlcon150BestInterval(:,3),':','Color', [0 0 0],'lineWidth', 2);
plot(Qlcon150BestInterval(:,2),Qlcon150BestInterval(:,3),'-.','Color', [0 0 0],'lineWidth', 2);

plot(Hlcon30Peak(:,2), Hlcon30Peak(:,3),'^','Color', [0 0 0] ,'MarkerSize', 10);
plot(Qlcon30Peak(:,2), Qlcon30Peak(:,3),'d','Color', [0 0 0] ,'MarkerSize', 10);
plot(Hlcon150Peak(:,2), Hlcon150Peak(:,3),'*','Color', [0 0 0] ,'MarkerSize', 10);
plot(Qlcon150Peak(:,2), Qlcon150Peak(:,3),'x','Color', [0 0 0] ,'MarkerSize', 10);
legend({'Hlcon30','Qlcon30','Hlcon150','Qlcon150', 'PM Hlcon30', 'PM Qlcon30', 'PM Hlcon150', 'PM Qlcon150'},'FontSize',12,'Location','northeast')

%HQ right
figure('Name','HQ rechtes Bein bei 30°/s und 150°/s');
grid on
grid minor
axis ([0, 120, 0, 6])
xlabel('Knieflexionswinkel [°]','FontSize',12)
ylabel('rel. M [Nm/kg]','FontSize',48')
title('HQ rechtes Bein bei 30°/s und 150°/s', 'FontSize',24)
hold on
set(gca,'FontSize',12)
plot(Hrcon30BestInterval(:,2),Hrcon30BestInterval(:,3),'--','Color', [0 0 0],'lineWidth', 2);
plot(Qrcon30BestInterval(:,2),Qrcon30BestInterval(:,3),'-','Color', [0 0 0],'lineWidth', 2);
plot(Hrcon150BestInterval(:,2),Hrcon150BestInterval(:,3),':','Color', [0 0 0],'lineWidth', 2);
plot(Qrcon150BestInterval(:,2),Qrcon150BestInterval(:,3),'-.','Color', [0 0 0],'lineWidth', 2);

plot(Hrcon30Peak(:,2), Hrcon30Peak(:,3),'^','Color', [0 0 0] ,'MarkerSize', 10);
plot(Qrcon30Peak(:,2), Qrcon30Peak(:,3),'d','Color', [0 0 0] ,'MarkerSize', 10);
plot(Hrcon150Peak(:,2), Hrcon150Peak(:,3),'*','Color', [0 0 0] ,'MarkerSize', 10);
plot(Qrcon150Peak(:,2), Qrcon150Peak(:,3),'x','Color', [0 0 0] ,'MarkerSize', 10);
legend({'Hrcon30','Qrcon30','Hrcon150','Qrcon150', 'PM Hrcon30', 'PM Qrcon30', 'PM Hrcon150', 'PM Qrcon150'},'FontSize',12,'Location','northeast')
