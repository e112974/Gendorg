function Gendorg_ShiftData(app)

%% get selected row

VrowsToPlot = find(app.UITable.Data.Flag);

%% check if only a single test is selected

if length(VrowsToPlot) ~= 1
    uialert(app.GendorgInterface,'Select only a single test','warning','icon','warning');
    return;
end

%% get data

app.TestDataCopy = app.UITable.Data.TestData(VrowsToPlot(1));

%% get which array if to be shifted

if strcmp(app.ShiftDataDropDown.Value,'X data')
    app.TestDataCopy.Vx = app.TestDataCopy.Vx + app.ForceOffset.Value;
else
    app.TestDataCopy.Vy = app.TestDataCopy.Vy + app.ForceOffset.Value;
end

%% plot

plot(app.ProcessDataFigure.Axis,app.TestDataCopy.Vx,app.TestDataCopy.Vy,'LineWidth',1);

