function I = video2Imags( videoFilePath )
%UNTITLED5 此处显示有关此函数的摘要
%   此处显示详细说明
clc;
xyloObj = VideoReader(videoFilePath);
nFrames = xyloObj.NumberOfFrames;
video_imagesPath = fullfile(pwd,'video_images');
if ~exist(video_imagesPath,'dir')
    mkdir(video_imagesPath);
end
files = dir(fullfile(video_imagesPath,'*.jpg'));
if length(files) == nFrames  %如果之前已经产生了图片序列的话就不用再产生了。
    I = 0;
    msgbox('之前该文件已经提取过文件了！','提示信息');
    return;
end
h = waitbar(0,'','name','获取图像视频序列');
steps = nFrames;
for step = 1:nFrames
    temp = read(xyloObj,step);%提取图像中的某一帧，核心函数
    tempstr = sprintf('%s\\%03d.jpg',video_imagesPath,step);
    imwrite(temp,tempstr);
    pause(0.01);
    waitbar(step/steps,h,sprintf('已处理：%d%%',round(step/steps*100)));
end
I = 1;
close(h);
end

