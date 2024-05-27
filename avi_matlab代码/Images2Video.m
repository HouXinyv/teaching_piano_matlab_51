function Images2Video( imagesfolder,videofilename )
%UNTITLED3 此处显示有关此函数的摘要
% 将imagesfolder文件夹中的.jpg文件变成视频存到文件夹地址为videofilename的文件中
startFrame = 1;%起始帧
endFrame = size(ls(fullfile(imagesfolder,'*.jpg')),1);
hwrite = VideoWriter(videofilename);
hwrite.FrameRate = 34;%设置帧率
open(hwrite);
hwaitbar = waitbar(0,'','name','生成视频文件...');
steps = endFrame - startFrame;
for i = startFrame:endFrame
    imagFile = sprintf('%03d.jpg',i);
    imagFile = fullfile(imagesfolder,imagFile);
    imagFrame = imread(imagFile);
    imagFrame = im2frame(imagFrame);
    writeVideo(hwrite,imagFrame);
    pause(0.01);
    step = i - startFrame;
    waitbar(step/steps,hwaitbar,sprintf('已处理：%d%%',round(step/steps*100)));
end
close(hwrite);
close(hwaitbar);

end

