function Gendorg_CreateFirstRow(app)

%% create table

T = table('Size',[1 6],                                                                     ...
          'VariableNames',{ 'Flag',  'Date',   'Name', 'Param1', 'Param2', 'Notes'},        ...
          'VariableTypes',{'logical','datetime','string','double','double', 'string'});

%% initialize structure

Tdata = struct('Vx',         [],     ...
               'Vy',         [],     ...
               'Processed',  0       ...
               );
          
%% assign default values

T.Flag(1)    = 0;
T.Date(1)    = datetime('today');
T.Name(1)    = 'test';
T.Param1(1)  = 1.1;
T.Param2(1)  = 1.2;
T.Notes(1)   = ' ';

%% add structure to table

T.TestData(1) = Tdata;

%% correct order

T = T(:,[1:5 7 6]);
          
%% add a new row to the table

app.UITable.Data = T;

