
cur_dir = pwd;
cd(fileparts(mfilename('fullpath')));

try
    fprintf('Downloading model_VGG16...\n');
    urlwrite('https://onedrive.live.com/download?resid=4006CBB8476FF777!17257&authkey=!AO38BiePXqYrz5M&ithint=file%2czip', ...
        'model_VGG16.zip');

    fprintf('Unzipping...\n');
    unzip('model_VGG16.zip', '..');

    fprintf('Done.\n');
    system('del model_VGG16.zip');
catch
    fprintf('Error in downloading, please try links in README.md https://github.com/ShaoqingRen/faster_rcnn');
end

cd(cur_dir);