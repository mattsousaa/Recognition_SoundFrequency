clear all clc;

x=1;

while x==1,
    
    x=isempty (input ('Press enter to start program or press zero to quit. '));
    
    % Definition of frequencies for each string
    
    ghighE=330;
    
    gB=248;
    
    gG=392;
    
    gD=145;
    
    gA=109;
    
    glowE=165;
    
    guitar=[ghighE,gB,gG,gD,gA,glowE];
    
    if x==1,
        
        p=input ('Which string are you tuning? 1=e 2=B 3=G 4=D 5=A 6=E');
        
        w=guitar (p);
        
        y=isempty (input ('Press enter to record input signal or 0 to start over. '));
        
        % record input signal
        
        Fs=49100;
        
        T=0:1:Fs/2-1;
        
        RecordObject=audiorecorder(Fs,16,1);
        record(RecordObject,2);
        pause(5);
        %record(RecordObject,'off');
        
        I=getaudiodata(RecordObject,'double');
        
        % to compare frequencies of a stored save file
        
        % let's hear the input signal
        
        display ('This is how the input signal sounds. ');
        
        sound (I,Fs);
        
        % FFT Frequency Identification
        
        xdft = fft (I)/size(I,1);
        [~,index] = max(abs(xdft(1:length(I)/2+1)));
        freq = 0:(Fs/length(I)):Fs/2;

        % freq(index)
        fprintf('Maximum occurs at %2.3f Hz\n',freq(index))
        
        % fft of input signal
        
        J=fft (I)/size(I,1);
        
        K=0:1:Fs/2-1;
        
        while y==1,
            if p==6
                
                for i=400:size(J,1)
                    
                    J(i,1)=0;
                    
                end
                
            else
                
                for i=1500:size(J,1)
                    
                    J(i,1)=0;
                    
                end
                
            end
            
            %Plotting
            
            subplot(2,1,1);plot(I);
            
            subplot(2,1,2);plot(K,2*real(J(1:Fs/2)));
            
            if p==6
                
                axis([ 200 500 -0.01 0.01])
                
                for i=400:size(J,1)
                    
                    J(i,1)=0;
                    
                end
                
            elseif p==5
                
                axis([ 400 550 -0.01 0.01])
                
                for i=550:size(J,1)
                    
                    J(i,1)=0;
                    
                end
                
            elseif p==4
                
                axis([ 450 700 -0.01 0.01])
                
                for i=700:size(J,1)
                    
                    J(i,1)=0;
                    
                end
            elseif p==3
                
                axis([ 650 850 -0.01 0.01])
                
                for i=900:size(J,1)
                    
                    J(i,1)=0;
                    
                end
                
            elseif p==2
                
                axis([ 800 1100 -0.01 0.01])
                
                for i=1200:size(J,1)
                    
                    J(i,1)=0;
                    
                end
                
            elseif p==1
                
                axis([ 1200 1400 -0.01 0.01])
                
                for i=1500:size(J,1)
                    
                    J(i,1)=0;
                    
                end
                
            end
            
            K=0:1:(Fs/2-1);
            
            (1.0015*w);
            
            K (J==max (J));
            
            (0.9985*w)
            
            z=((K (find (J==max (J)))-w)/w)*100;
            
            if (1.0015*w)>K (find (J==max (J)))&& (0.9985*w) <K (find (J==max (J))),
                
                display ('Perfect Intonation!!!');
               
                fprintf('The frequency of the input signal is %2.3f Hz\n',freq(index))
                fprintf ('Percent Error % d %% \n',z)
                
            elseif w>K (find (J==max (J))),
                
                display ('Input frequency should be increased');
                
                fprintf('The frequency of the input signal is %2.3f Hz\n',freq(index))
                
                fprintf ('Percent Error % d %% \n',z)
                
            elseif w<K (J==max (J)),
                
                display ('Input frequency should be decreased');
                
                fprintf('The frequency of the input signal is %2.3f Hz\n',freq(index))
                
                fprintf ('Percent Error % d %% \n',z)
                
            end
            
            y=isempty (input ('Press enter to record a new input signal or 0 to start over. '));
            
            if y==1,
                
                continue;
                
            else x=1;
                
            end
            
        end
        
    end
    
end
