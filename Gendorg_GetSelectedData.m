function Gendorg_GetSelectedData(app)

%% get selected rows

VrowsSelected = find(app.UITable.Data.Flag);

%% initialize variable to store data from the selected tests

app.Tcomparison = struct('CdataX',            [],      ...     
                         'CdataY',            []       ...    
                         );

%% loop over selected tests

for irow = 1:length(VrowsSelected)
    % get selected test ID
    rowID = VrowsSelected(irow);
    % get data structure
    TestData = app.UITable.Data.TestData(rowID);
    % save
    app.Tcomparison.CdataX{irow} = TestData.Vx;
    app.Tcomparison.CdataY{irow} = TestData.Vy;
end

