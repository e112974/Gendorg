function Gendorg_InitializeGUI(app)

%% supress warning message

warning('off','MATLAB:table:RowsAddedExistingVars');

%% set table properties

app.UITable.ColumnName     = {' ','Date','Name','Param1','Param2','Data','Notes'};
app.UITable.ColumnSortable = [true true   true    true    true    false   true];
app.UITable.ColumnEditable = [true true   true    true    true    false   true];

%% add style

s1 = uistyle;
s1.HorizontalAlignment = 'center';
addStyle(app.UITable,s1);     

%% check if deafult path exist

if ~exist(app.StablePath,'dir')
   app.StablePath = pwd;    
end

%% wait for main GUI to appear

pause(2.0);

%% get table

Gendorg_LoadTable(app);

%% initialize plot

Gendorg_InitializeFigures(app);

