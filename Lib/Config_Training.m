function config = Config_Training(subjectID)
% Configuration file for the RNI-OUD Cue Reactivity project
% written Jan 2022 Jacob Suffridge
% --------------------------------------------------------------------------

config = struct();
% Main root directory
config.root = 'C:\Users\jesuffridge\Documents\MATLAB\Projects\RNI-OUD';

% Path to function Library
config.lib = [config.root '\Lib\'];

% Path to rating scales
config.rating_scales = [config.root '\Rating_Scales\Rating_Scales_0to9\'];
% config.rating_scales = [config.root '\Rating_Scales\Rating_Scales\'];
% config.rating_scales = [config.root '\Rating_Scales\Rating_Scales_1to4\'];

% Path to Drug cues
config.cues = [config.root '\Addiction Cues\Cue Library'];
% config.cues = [config.root '\OUD Cues\'];

% Path to save data recorded during RNI-OUD task
config.data = [config.root '\Data\' subjectID];
% Create save folder for Data if it doesnt already exist
if not(isfolder(config.data))
    mkdir(config.data)
end

config.load_files = [config.root '\Load Files\' subjectID];
% Create save folder for Load Files and Data
if not(isfolder(config.load_files))
    mkdir(config.load_files)
end

config.baseFixation_duration = 2;
% image_list_generator parameters -----------------------------------------
config.image_duration = 3;
config.response_duration = 3;
config.total_training_duration = 600;
config.training_list = 'OUD_CR_Training_List.mat';
config.drug_names = 'OUD_CR_Training_Cue_Names.mat';

end