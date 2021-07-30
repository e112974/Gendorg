function Gendorg_CropData(app)

%% get selected row

VrowsToPlot = find(app.UITable.Data.Flag);

%% check if only a single test is selected

if length(VrowsToPlot) ~= 1
    uialert(app.GendorgInterface,'Select only a single test','warning','icon','warning');
    return;
end

%% copy data

app.TestDataCopy = app.UITable.Data.TestData(VrowsToPlot(1));

%% crop data

[~,IndexStart]   = min(abs(app.TestDataCopy.Vx - app.CropStart.Value));
[~,IndexEnd]     = min(abs(app.TestDataCopy.Vx - app.CropEnd.Value));

app.TestDataCopy.Vx = app.TestDataCopy.Vx(IndexStart:IndexEnd);
app.TestDataCopy.Vy = app.TestDataCopy.Vy(IndexStart:IndexEnd);

%% plot

plot(app.ProcessDataFigure.Axis,app.TestDataCopy.Vx,app.TestDataCopy.Vy,'LineWidth',1);

