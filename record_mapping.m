%This function is used for mapping the fixation record into the corresponding fixation maps.
screen_res_x = 1440;
screen_res_y = 900;

datasetFile1 = 'movie';
datasetFile = 'videodata';
gazeFile = 'gaze_record';

videoFiles = dir(fullfile('./', datasetFile));
videoNUM = length(videoFiles)-2;
rate = 30;
    
 for videonum = 1:700
        videofolder =  videoFiles(videonum+2).name
        options.infolder = fullfile( './', datasetFile,  videofolder, 'images' );
        % Cache all frames in memory
        [data.frames,names,video_res_y,video_res_x,nframe ]= readAllFrames( options );
        a=video_res_x/screen_res_x;
        b=(screen_res_y-video_res_y/a)/2;
        all_fixation = zeros(video_res_y,video_res_x,nframe);
        for person = 1:17
            txtloc = fullfile('./', gazeFile, sprintf('P%03d',person), [sprintf('P%03d_Trail',person), sprintf('%04d.txt',videonum)]);
            if exist(txtloc, 'file')
                [time,x_screen,y_screen,event]=textread(txtloc,'%f%f%f%s','headerlines',1);
                if size(time,1)
                    time = time-time(1);
                    event = cellfun(@(x) x(1), event);
                    for index = 1:nframe
                            eff = find( ((index-1)<rate*time/1000000)&(rate*time/1000000<index)&event=='F'); %framerate = 10;
                            x_stimulus=int32(a*x_screen(eff));
                            y_stimulus=int32(a*(y_screen(eff)-b));
                            t = x_stimulus<=0|x_stimulus>=video_res_x|y_stimulus<=0|y_stimulus>=video_res_y;
                            all_fixation(y_stimulus(~t),x_stimulus(~t),index) = 1;
                    end
                end
            end
        end 
end