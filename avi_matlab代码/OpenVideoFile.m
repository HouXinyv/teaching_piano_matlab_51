function filePath = OpenVideoFile()
%用对话框打开文件
%   打开视频文件
%   videoFilePath = fullfile(pwd,aviName);
[filename pathname filterindex] = uigetfile(...
    {'*.avi','视频文件(*.avi)';...
    '*.mpeg','视频文件(*.mpeg)';...
    '*.*','所有文件(*.*)'},...
    '选择视频文件','MultiSelect','off',...
    pwd);
filePath = 0;
if isequal(filename,0)||isequal(pathname,0) %只要这里面表示返回或没有合适的文件时候
    return;
end
filePath = fullfile(pathname,filename);
end

