function Gendorg_SaveFigure(app)

%% determine which plots to be saved according to the active tab
% and assign default file name accordingly

switch app.TabGroup.SelectedTab.Title
    case 'Main Plot'
        SelectedTab = app.MainPlotTab;
        DefaultFileName = 'MainPlot.jpg';
    case 'Process Data'
        SelectedTab = app.ProcessDataTab;
        DefaultFileName = 'ProcessPlot.jpg';
end

%% ask the user to enter file name

[file,path] = uiputfile(fullfile(app.SfigurePath,'*.jpg'),'Enter Figure file name',fullfile(app.SfigurePath,DefaultFileName));

%% return if cancelled by user

if path == 0
    return
end

%% update save path

app.SfigurePath = path;

%% progressbar enables to see when the save action is completed

ProgressBar = uiprogressdlg(app.GendorgInterface,'Title','Saving Figure','Indeterminate','on');

%% this command keeps GUI window on top

figure(app.GendorgInterface);

%% this command saves the plots shown in the selected into jpg file

exportgraphics(SelectedTab,fullfile(path,file));

%% close progressbar

close(ProgressBar);

