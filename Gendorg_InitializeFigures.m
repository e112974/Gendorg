function Gendorg_InitializeFigures(app)

%% Create Main Figure

% create layout
MainFigureLayout = tiledlayout(app.MainPlotTab,1,1);
% Create axis
app.MainFigure.Axis = nexttile(MainFigureLayout);
% set grid & hold
hold(app.MainFigure.Axis,"on");
grid(app.MainFigure.Axis,"on");
% set labels
xlabel(app.MainFigure.Axis,'x data','interpreter','latex');
ylabel(app.MainFigure.Axis,'y data','interpreter','latex');

%% Create Process Data Figure

% create layout
ProcessFigureLayout = tiledlayout(app.ProcessDataTab,2,1);
% Create axis
app.ProcessDataFigure.Axis = nexttile(ProcessFigureLayout);
% set grid & hold
hold(app.ProcessDataFigure.Axis,"on");
grid(app.ProcessDataFigure.Axis,"on");
% set labels
xlabel(app.ProcessDataFigure.Axis,'x data','interpreter','latex');
ylabel(app.ProcessDataFigure.Axis,'y data','interpreter','latex');

