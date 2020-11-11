databaseFileName = "c:\monolithDataBases\monolithDatabaseRawEDFA.csv";

%%%%%% read data %%%%%%%%%%%%%
opts = delimitedTextImportOptions("NumVariables", 208);

% Specify range and delimiter
opts.DataLines = [2, Inf];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["EDFAId", "profileId", "targetPout", "pInIdx", "measuredTotalPin", "measuredTotalPout", "inat152500", "inat152547", "inat152594", "inat152641", "inat152688", "inat152735", "inat152782", "inat152829", "inat152876", "inat152923", "inat152970", "inat153017", "inat153064", "inat153111", "inat153158", "inat153205", "inat153252", "inat153299", "inat153346", "inat153393", "inat153440", "inat153487", "inat153534", "inat153581", "inat153628", "inat153675", "inat153722", "inat153769", "inat153816", "inat153863", "inat153910", "inat153957", "inat154004", "inat154051", "inat154098", "inat154145", "inat154192", "inat154239", "inat154286", "inat154333", "inat154380", "inat154427", "inat154474", "inat154521", "inat154568", "inat154615", "inat154662", "inat154709", "inat154756", "inat154803", "inat154850", "inat154897", "inat154944", "inat154991", "inat155038", "inat155085", "inat155132", "inat155179", "inat155226", "inat155273", "inat155320", "inat155367", "inat155414", "inat155461", "inat155508", "inat155555", "inat155602", "inat155649", "inat155696", "inat155743", "inat155790", "inat155837", "inat155884", "inat155931", "inat155978", "inat156025", "inat156072", "inat156119", "inat156166", "inat156213", "inat156260", "inat156307", "inat156354", "inat156401", "inat156448", "inat156495", "inat156542", "inat156589", "inat156636", "inat156683", "inat156730", "inat156777", "inat156824", "inat156871", "inat156918", "inat156965", "inat157012", "inat157059", "inat157106", "inat157153", "inat157200", "outat152500", "outat152547", "outat152594", "outat152641", "outat152688", "outat152735", "outat152782", "outat152829", "outat152876", "outat152923", "outat152970", "outat153017", "outat153064", "outat153111", "outat153158", "outat153205", "outat153252", "outat153299", "outat153346", "outat153393", "outat153440", "outat153487", "outat153534", "outat153581", "outat153628", "outat153675", "outat153722", "outat153769", "outat153816", "outat153863", "outat153910", "outat153957", "outat154004", "outat154051", "outat154098", "outat154145", "outat154192", "outat154239", "outat154286", "outat154333", "outat154380", "outat154427", "outat154474", "outat154521", "outat154568", "outat154615", "outat154662", "outat154709", "outat154756", "outat154803", "outat154850", "outat154897", "outat154944", "outat154991", "outat155038", "outat155085", "outat155132", "outat155179", "outat155226", "outat155273", "outat155320", "outat155367", "outat155414", "outat155461", "outat155508", "outat155555", "outat155602", "outat155649", "outat155696", "outat155743", "outat155790", "outat155837", "outat155884", "outat155931", "outat155978", "outat156025", "outat156072", "outat156119", "outat156166", "outat156213", "outat156260", "outat156307", "outat156354", "outat156401", "outat156448", "outat156495", "outat156542", "outat156589", "outat156636", "outat156683", "outat156730", "outat156777", "outat156824", "outat156871", "outat156918", "outat156965", "outat157012", "outat157059", "outat157106", "outat157153", "outat157200"];
opts.VariableTypes = ["double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double"];
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Import the data
monolithDatabaseRaw = readtable(databaseFileName, opts);
monolithDatabaseRaw = table2array(monolithDatabaseRaw);
targetPout = monolithDatabaseRaw(:, 3);

usefulWavelengthIndx = 6:6+83-1;
wavelengths = opts.VariableNames(7:7+100);
channelFrequencies = [];
C = 3e8;
%
for ii = 1:length(wavelengths)
    channelFrequencies(end+1) = 1e-12*C / (str2double(opts.VariableNames{ii}(5:end))/100*1e-9);
end
channelFrequenciesAll = channelFrequencies;
channelFrequencies = channelFrequencies(usefulWavelengthIndx);

inputProfileUsefulIndx = 7+usefulWavelengthIndx;
outputProfileUsefulIndx = 108+usefulWavelengthIndx;

% 
% calibratedInputProfiles = 10.^((monolithDatabaseRaw(:, inputProfileUsefulIndx)-30)./10) ;
% calibratedOutputProfiles = 10.^((monolithDatabaseRaw(:, outputProfileUsefulIndx)-30)./10) ;
% 
% calibratedInputProfiles = calibratedInputProfiles ./ sum(calibratedInputProfiles, 2) .* repmat(10.^((monolithDatabaseRaw(:, 5)-30)/10), 1, 83);
% calibratedOutputProfiles = calibratedOutputProfiles ./ sum(calibratedOutputProfiles, 2) .* repmat(10.^((monolithDatabaseRaw(:, 6)-30)/10), 1, 83);
% 
% calibratedInputProfiles = 10*log10(calibratedInputProfiles)+30;
% calibratedOutputProfiles = 10*log10(calibratedOutputProfiles)+30;

% dB to W
calibratedInputProfiles = 10.^((monolithDatabaseRaw(:, 7:7+100)-30)./10) ;
calibratedOutputProfiles = 10.^((monolithDatabaseRaw(:, 108:108+100)-30)./10) ;

% to unit power (W) to EDFA reading power (W)
calibratedInputProfiles = calibratedInputProfiles ./ sum(calibratedInputProfiles, 2) .* repmat(10.^((monolithDatabaseRaw(:, 5)-30)/10), 1, 101);
calibratedOutputProfiles = calibratedOutputProfiles ./ sum(calibratedOutputProfiles, 2) .* repmat(10.^((monolithDatabaseRaw(:, 6)-30)/10), 1, 101);

% W to dBm
calibratedInputProfiles = 10*log10(calibratedInputProfiles)+30;
calibratedOutputProfiles = 10*log10(calibratedOutputProfiles)+30;

calibratedInputProfilesAllFreq = calibratedInputProfiles;
calibratedOutputProfilesAllFreq = calibratedOutputProfiles;

calibratedInputProfiles = calibratedInputProfiles(:, usefulWavelengthIndx+1);
calibratedOutputProfiles = calibratedOutputProfiles(:, usefulWavelengthIndx+1);

normalizedInputProfiles = calibratedInputProfiles - max(calibratedInputProfiles, [], 2);
normalizedOutputProfiles = calibratedOutputProfiles - max(calibratedOutputProfiles, [], 2);


















