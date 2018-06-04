
%error('Tracker not configured! Please edit the tracker_bacfcpp.m file.'); % Remove this line after proper configuration

% The human readable label for the tracker, used to identify the tracker in reports
% If not set, it will be set to the same value as the identifier.
% It does not have to be unique, but it is best that it is.
tracker_label = ['csrt'];

% Now you have to set up the system command to be run.
% For classical executables this is usually just a full path to the executable plus
% optional arguments:

%tracker_command =generate_python_command('python_ncc',{ '/home/zhangzheng/workplace/master/nntrackerpapers/matlab/vot_2018/vot-toolkit/tracker/examples/python/'});
%%before this line is work perfect. good.
%tracker_command =generate_matlab_command('ncc',{ '/home/zhangzheng/workplace/master/nntrackerpapers/matlab/vot_2018/vot-toolkit/tracker/examples/native/'});
tracker_command = '/home/zhangzheng/workplace/master/nntrackerpapers/matlab/vot_2018/vot-toolkit/tracker/examples/native4/build/csrt';
 %tracker_interpreter = 'python'; % Set the interpreter used here as a lower case string. E.g. if you are using Matlab, write 'matlab'. (optional)

 tracker_linkpath = {'/usr/lib64/qt4'}; % A cell array of custom library directories used by the tracker executable (optional)
 tracker_trax = true;
