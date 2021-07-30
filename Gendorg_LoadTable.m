function Gendorg_LoadTable(app)

%% select table file 

[file,path] = uigetfile(fullfile(app.StablePath,'*.mat'), 'Select MAT file to load the table');

%% if no file selected by user, cancel & return

if path == 0
   return; 
end

%% load the table

load(fullfile(path,file),'-mat','Table');

%% update path

app.StablePath = path;

%% get table

app.UITable.Data = Table;

%% following command keeps GUI window top

figure(app.GendorgInterface);

%% assign column colors

Gendorg_UpdateCellColors(app);

