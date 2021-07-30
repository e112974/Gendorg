function Gendorg_SaveProcessedData(app)

%% get selected row

VrowsToPlot = find(app.UITable.Data.Flag);

%% check if only a single test is selected

if length(VrowsToPlot) ~= 1
    uialert(app.GendorgInterface,'Select only a single test','warning','icon','warning');
    return;
end

%% save data

app.UITable.Data.TestData(VrowsToPlot(1)) = app.TestDataCopy;

%% update flag in data structure

app.UITable.Data.TestData(VrowsToPlot(1)).Processed = 1;

%% assign column colors

Gendorg_UpdateCellColors(app);

