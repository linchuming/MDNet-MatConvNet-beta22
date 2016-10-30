function generate_video(mPath, fileName)
    tmp = fullfile(mPath, '*.png');
%     fprintf('%s\n', tmp);
    png_size = size(dir(tmp));
    nFrame = png_size(1);
%     disp(nFrame);
    v_obj = VideoWriter(fileName);
    v_obj.FrameRate = 12;
    open(v_obj);
    for i = 2:nFrame+1
        img = imread(fullfile(mPath, [num2str(i),'.png']));
        writeVideo(v_obj, img);
    end
    close(v_obj);
    
end