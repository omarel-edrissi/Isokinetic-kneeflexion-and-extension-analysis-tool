%Abweichung in Prozent von linkem zum rechten Bein
tablePosition = [10 10 400 200];


Hcon30LateralityPercentage = ((Hlcon30Peak(1,3)/Hrcon30Peak(1,3))*100)-100;
Hcon150LateralityPercentage = ((Hlcon150Peak(1,3)/Hrcon150Peak(1,3))*100)-100;

Hecc30LateralityPercentage = ((Hlecc30Peak(1,3)/Hrecc30Peak(1,3))*100)-100;
Hecc150LateralityPercentage = ((Hlecc150Peak(1,3)/Hrecc150Peak(1,3))*100)-100;

Qcon30LateralityPercentage = ((Qlcon30Peak(1,3)/Qrcon30Peak(1,3))*100)-100;
Qcon150LateralityPercentage = ((Qlcon150Peak(1,3)/Qrcon150Peak(1,3))*100)-100;

Qecc30LateralityPercentage = ((Qlecc30Peak(1,3)/Qrecc30Peak(1,3))*100)-100;
Qecc150LateralityPercentage = ((Qlecc150Peak(1,3)/Qrecc150Peak(1,3))*100)-100;

Hconecc = {'Hcon30LateralityPercentage', 'Hcon150LateralityPercentage', 'Hecc30LateralityPercentage', 'Hecc150LateralityPercentage'};
Qconecc = {'Qcon30LateralityPercentage', 'Qcon150LateralityPercentage', 'Qecc30LateralityPercentage', 'Qecc150LateralityPercentage'};

lt = uitable(uifigure, 'Position', tablePosition, 'ColumnWidth','auto', 'RowName', [Hconecc, Qconecc] ,'ColumnName', 'PM links zu rechts', 'Data', [Hcon30LateralityPercentage; Hcon150LateralityPercentage; Hecc30LateralityPercentage; Hecc150LateralityPercentage; Qcon30LateralityPercentage; Qcon150LateralityPercentage; Qecc30LateralityPercentage; Qecc150LateralityPercentage]);