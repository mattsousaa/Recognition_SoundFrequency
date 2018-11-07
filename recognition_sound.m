y=isempty (input ('Press enter to record input signal'));        

Fs=49100;
        
T=0:1:Fs/2-1;
        
RecordObject=audiorecorder(Fs,16,1);
record(RecordObject,2);
pause(5);
%record(RecordObject,'off');
        
I=getaudiodata(RecordObject,'double');
        
% let's hear the input signal
        
display ('This is how the input signal sounds. ');
        
sound (I,Fs);
       
xdft = fft (I)/size(I,1);
[~,index] = max(abs(xdft(1:length(I)/2+1)));
freq = 0:(Fs/length(I)):Fs/2;

% freq(index)
fprintf('Maximum occurs at %2.3f Hz\n',freq(index))
        
% fft of input signal
        
J=fft (I)/size(I,1);
        
K=0:1:Fs/2-1;

% plot graph in time
subplot(2,1,1);plot(I);
            
subplot(2,1,2);plot(K,2*real(J(1:Fs/2)));

% plot graph in frequency
my_fft(I, Fs);