function Gendorg_EditTitleAndLegend(app)

%% edit legend

if ~isempty(app.LegendField.Value)
    eval(['LegendText = ' app.LegendField.Value ';']);
    switch app.TabGroup.SelectedTab.Title
        case 'Main Plot'
            legend(app.MainFigure.Axis,LegendText,'Location',"eastoutside");
        case 'Process Data'
            legend(app.ProcessDataFigure.Axis,LegendText,'Location',"eastoutside");
    end
else
    switch app.TabGroup.SelectedTab.Title
        case 'Main Plot'
            delete(app.MainFigure.Axis.Legend);
        case 'Process Data'
            delete(app.ProcessDataFigure.Axis.Legend);
    end
end

%% edit title

switch app.TabGroup.SelectedTab.Title
    case 'Main Plot'
        sgtitle(app.MainPlotTab,app.TitleField.Value,'interpreter','latex');
    case 'Process Data'
        sgtitle(app.ProcessDataTab,app.TitleField.Value,'interpreter','latex');
end

