% load data and create tables
load('housevotes84data.mat');
Class = housevotes84.Class;
attrb = housevotes84(:, 2:17);
attrbArr = table2array(attrb); % must be an array before conversion
attrbNum = double(attrbArr()); % convert to numerical array for models
r = randperm(435); % randomise rows
attrbNumRand = attrbNum(r, :);
trainingAttrb = attrbNumRand(1:261, :); % split 60% of data for training
trainingClass = Class(1:261, :);
test = attrbNumRand(262:435, :); % use remaining 40% of data for testing
actual = Class(262:435, :); % test against actual data
cknnVote = fitcknn(trainingAttrb, trainingClass); % create models
treeVote = fitctree(trainingAttrb, trainingClass);
bayesVote = fitcnb(trainingAttrb, trainingClass);
cknnPredict = predict(cknnVote, test); % use models to predict test data
treePredict = predict(treeVote, test);
bayesPredict = predict(bayesVote, test);
% create confusion matrix for models
cm_cknn = confusionmat(actual, cknnPredict);
cm_tree = confusionmat(actual, treePredict);
cm_bayes= confusionmat(actual, bayesPredict);
% compute error for models
cknn_error = loss(cknnVote, trainingAttrb, trainingClass);
tree_error = loss(treeVote, trainingAttrb, trainingClass);
bayes_error = loss(bayesVote, trainingAttrb, trainingClass);