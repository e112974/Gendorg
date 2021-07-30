function Gendorg_PlotData(app)

%% clear axis

cla(app.MainFigure.Axis);

%% plot

for itest = 1:length(app.Tcomparison.CdataX)
    plot(app.MainFigure.Axis,app.Tcomparison.CdataX{itest},app.Tcomparison.CdataY{itest},'LineWidth',1);
end

