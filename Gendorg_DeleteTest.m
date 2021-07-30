function Gendorg_DeleteTest(app)

%% check the rows with plot option selected

VrowsToDelete = find(app.UITable.Data.Flag);

%% execute this function only if one test is selected

if isempty(VrowsToDelete)
    uialert(app.GendorgInterface,'Select tests to delete','Warning','Icon','warning');
    return
else
    Selection = uiconfirm(app.GendorgInterface,...
        'Are you sure to delete selected tests?','Delete Tests','Icon','warning');
    if strcmpi(Selection,"ok")
        app.UITable.Data(VrowsToDelete,:) = [];
        app.UITable.Data.Flag(:)  = 0;
    end
end

