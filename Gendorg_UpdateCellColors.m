function Gendorg_UpdateCellColors(app)

%% get the calculated structure

TestData = app.UITable.Data.TestData;

%% get rows for which the data has been processed

VrowsProcessed = find(arrayfun(@(TestData) TestData.Processed == 1,TestData));

%% first set all background to white

s1 = uistyle;
s1.BackgroundColor = 'white';
addStyle(app.UITable,s1);

%% then change background color processed tests

if ~isempty(VrowsProcessed)
    s1 = uistyle;
    s1.BackgroundColor = 'green';
    addStyle(app.UITable,s1,'cell',[VrowsProcessed (width(app.UITable.Data)-1)*ones(length(VrowsProcessed),1)]);
end

