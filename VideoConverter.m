myVideo = VideoWriter('Fractal.avi');
uncompressedVideo = VideoWriter('Fractal.avi', 'Uncompressed AVI');
myVideo.FrameRate = 2 ;  % Default 30
open(myVideo);
writeVideo(myVideo, F);
close(myVideo);