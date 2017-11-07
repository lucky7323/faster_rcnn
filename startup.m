function startup()
% startup()
% --------------------------------------------------------
% Faster R-CNN
% Copyright (c) 2015, Shaoqing Ren
% Licensed under The MIT License [see LICENSE for details]
% --------------------------------------------------------
%   clear mex;
%   clear is_valid_handle; % to clear init_key

   gpuDevice(1);
   
   
   addpath(genpath('/home/eunho/vision_project/OD_fromVideo/matconvnet-1.0-beta25/matlab'));
   vl_setupnn;
   fprintf('siamese_cnn startup done\n');
   
     
    curdir = fileparts(mfilename('fullpath'));
%    curdir = '/home/eunho/vision_project/OD_fromVideo/faster_rcnn/';
    addpath(genpath(fullfile(curdir, 'utils')));
    addpath(genpath(fullfile(curdir, 'functions')));
    addpath(genpath(fullfile(curdir, 'bin')));
    addpath(genpath(fullfile(curdir, 'experiments')));
    addpath(genpath(fullfile(curdir, 'imdb')));

    mkdir_if_missing(fullfile(curdir, 'datasets'));

    mkdir_if_missing(fullfile(curdir, 'external'));

    caffe_path = fullfile(curdir, 'external', 'caffe', 'matlab');
    if exist(caffe_path, 'dir') == 0
        error('matcaffe is missing from external/caffe/matlab; See README.md');
    end
    addpath(genpath(caffe_path));

    mkdir_if_missing(fullfile(curdir, 'imdb', 'cache'));

    mkdir_if_missing(fullfile(curdir, 'output'));

    mkdir_if_missing(fullfile(curdir, 'models'));

    fprintf('fast_rcnn startup done\n');

%    addpath(genpath('/home/eunho/vision_project/OD_fromVideo/matconvnet-1.0-beta25/matlab'));
%    addpath(genpath('/path/to/deep-one-shot/util'));
%    vl_setupnn;
%    fprintf('siamese_cnn startup done\n');
end
