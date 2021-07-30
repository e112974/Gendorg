function Gendorg_SaveTable(app)

%% extract table

Table = app.UITable.Data;

%% ask the user to enter file name

[file,path] = uiputfile(fullfile(app.StablePath,'*.mat'),'Enter file name','Database.mat');

%% return if cancelled by user

if path == 0
    return
end

%% following command keeps GUI window top

figure(app.GendorgInterface);

%% progressbar enables to see when the save is completed

ProgressBar = uiprogressdlg(app.GendorgInterface,'Title','Saving Table','Indeterminate','on');

%% save table as mat file

save(fullfile(path,file),'Table');

%% update path

app.StablePath = path;

%% close progressbar

close(ProgressBar);

