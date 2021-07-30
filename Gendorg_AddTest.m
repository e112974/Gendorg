function Gendorg_AddTest(app)

%% get no of rows of the table

Nrows = height(app.UITable.Data);

%% Create a first row if table is empty

if Nrows == 0
    Gendorg_CreateFirstRow(app);
else
    app.UITable.Data.Date(Nrows+1)  = datetime('today');  
    app.UITable.Data.Notes(Nrows+1) = ' ';
    app.UITable.Data.Name(Nrows+1)  = ' ';
end

%% load test/simulation data

[file,path] = uigetfile(fullfile(app.SdataPath,'*.mat'), 'Select Select file to load the data');

%% following command keeps GUI window top

figure(app.GendorgInterface);

%% proceed if a selection is made by user

if path == 0
    return;
else
    try
        load(fullfile(path,file),'-mat','Vx','Vy');
    catch
        uialert(app.GendorgInterface,'Data could not be found in the selected MAT file','Warning','Icon','warning');
    end     
    app.UITable.Data.TestData(Nrows+1).Vx        = Vx;
    app.UITable.Data.TestData(Nrows+1).Vy        = Vy; 
    app.UITable.Data.TestData(Nrows+1).Processed = 0; 
end

%% save selected path

app.SdataPath = path;

