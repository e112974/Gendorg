function Gendorg_RemoveOutliers(app)

%% get selected row

VrowsToPlot = find(app.UITable.Data.Flag);

%% check if only a single test is selected

if length(VrowsToPlot) ~= 1
    uialert(app.GendorgInterface,'Select only a single test','warning','icon','warning');
    return;
end

%% copy data

app.TestDataCopy = app.UITable.Data.TestData(VrowsToPlot(1));

%% remove outliers

app.TestDataCopy.Vy = filloutliers(app.TestDataCopy.Vy,'linear','movmedian',app.MovMedianWindow.Value);

%% plot

plot(app.ProcessDataFigure.Axis,app.TestDataCopy.Vx,app.TestDataCopy.Vy,'LineWidth',1);

