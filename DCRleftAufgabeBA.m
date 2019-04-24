%DCR  left
figure('Name','PM linkes Bein bei 30°/s und 150°/s');
grid on
grid minor
axis ([0, 120, 0, 6])
xlabel('Knieflexionswinkel [°]','FontSize',12)
ylabel('rel. M [Nm/kg]','FontSize',48')
title('PM linkes Bein bei 30°/s und 150°/s', 'FontSize',24)
hold on
set(gca,'FontSize',12)
plot(Hlecc30BestInterval(:,2),Hlecc30BestInterval(:,3),'--','Color', [0 0 0],'lineWidth', 2);
plot(Qlcon30BestInterval(:,2),Qlcon30BestInterval(:,3),'-','Color', [0 0 0],'lineWidth', 2);
plot(Hlecc150BestInterval(:,2),Hlecc150BestInterval(:,3),':','Color', [0 0 0],'lineWidth', 2);
plot(Qlcon150BestInterval(:,2),Qlcon150BestInterval(:,3),'-.','Color', [0 0 0],'lineWidth', 2);

% plot(Hlecc30Peak(:,2), Hlecc30Peak(:,3),'^','Color', [0 0 0] ,'MarkerSize', 10);
% plot(Qlcon30Peak(:,2), Qlcon30Peak(:,3),'d','Color', [0 0 0] ,'MarkerSize', 10);
% plot(Hlecc150Peak(:,2), Hlecc150Peak(:,3),'*','Color', [0 0 0] ,'MarkerSize', 10);
% plot(Qlcon150Peak(:,2), Qlcon150Peak(:,3),'x','Color', [0 0 0] ,'MarkerSize', 10);
legend({'MFlex exz 30°/s','MExt kon 30°/s','MFlex exz 150°/s','MExt kon 150°/s'},'FontSize',12,'Location','northwest')
