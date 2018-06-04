% This script can be used to perform a comparative analyis of the experiments
% in the same manner as for the VOT challenge
% You can 5copy and modify it to create a different analyis

addpath('/home/zhangzheng/workplace/master/nntrackerpapers/matlab/vot_2018/vot-toolkit'); toolkit_path; % Make sure that VOT toolkit is in the path

[sequences, experiments] = workspace_load();

%error('Analysis not configured! Please edit run_analysis.m file.'); % Remove this line after proper configuration

trackers = tracker_list('csrt', 'CCOT','DSST','gnet','KCF','kcfcpp','ldea','LSART','SiamDCF','SiamFC','Staple','SRDCF'); % TODO: add more trackers here
   %   trackers = tracker_list('csrt'); % TODO: add more trackers here
                                                                                                                                                                                                                                                                                                                                                                                                                                                                
context = create_report_context('report_vot2018_csrt_realtime116');%(2.9 bacf++_realtime9 29-> realtime 10)
experimentszz = experiments(cellfun(@(e) strcmp(e.type, 'realtime'), experiments, 'UniformOutput', true));
addpath('/home/zhangzheng/workplace/vot-toolkit-master');
addpath('/home/zhangzheng/workplace/vot-toolkit-master/report');
report_articlerealtime(context, experimentszz, trackers, sequences, 'spotlight', 'bacfcpp'); % This report is more suitable for results included in a paper
%realtimeres=analyze_expected_overlaprealtime( experimentszz, trackers, sequences); % This report is more suitable for results included in a paper

%save realtimeres realtimeres
% report_challenge(context, experiments, trackers, sequences); % Use this report for official challenge report
% report_visualization(context, experiments, trackers, sequences);  % Use this report to generate images of visual (bounding box) results of trackers