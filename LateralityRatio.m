%Abweichung in Prozent von linkem zum rechten Bein
tablePosition = [10 10 400 200];


Hcon30LateralityRatio = (Hlcon30Peak(1,3)/Hrcon30Peak(1,3));
Hcon150LateralityRatio = (Hlcon150Peak(1,3)/Hrcon150Peak(1,3));

Hecc30LateralityRatio = (Hlecc30Peak(1,3)/Hrecc30Peak(1,3));
Hecc150LateralityRatio = (Hlecc150Peak(1,3)/Hrecc150Peak(1,3));

Qcon30LateralityRatio = (Qlcon30Peak(1,3)/Qrcon30Peak(1,3));
Qcon150LateralityRatio = (Qlcon150Peak(1,3)/Qrcon150Peak(1,3));

Qecc30LateralityRatio = (Qlecc30Peak(1,3)/Qrecc30Peak(1,3));
Qecc150LateralityRatio = (Qlecc150Peak(1,3)/Qrecc150Peak(1,3));

Hconecc = {'Hcon30LateralityRatio', 'Hcon150LateralityRatio', 'Hecc30LateralityRatio', 'Hecc150LateralityRatio'};
Qconecc = {'Qcon30LateralityRatio', 'Qcon150LateralityRatio', 'Qecc30LateralityRatio', 'Qecc150LateralityRatio'};

lt = uitable(uifigure, 'Position', tablePosition, 'ColumnWidth','auto', 'RowName', [Hconecc, Qconecc] ,'ColumnName', 'LateralityRatio links/rechts', 'Data', [Hcon30LateralityRatio; Hcon150LateralityRatio; Hecc30LateralityRatio; Hecc150LateralityRatio; Qcon30LateralityRatio; Qcon150LateralityRatio; Qecc30LateralityRatio; Qecc150LateralityRatio]);