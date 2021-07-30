function Gendorg_PlotProcessDataFigure(app)

%% get selected row

VrowsToPlot = find(app.UITable.Data.Flag);

%% check if only a single test is selected

if length(VrowsToPlot) ~= 1
    uialert(app.GendorgInterface,'Select only a single test','warning','icon','warning');
    return;
end

%% clear axis

cla(app.ProcessDataFigure.Axis);

%% get data

TestData = app.UITable.Data.TestData(VrowsToPlot(1));

%% plot

plot(app.ProcessDataFigure.Axis,TestData.Vx,TestData.Vy,'LineWidth',1);

