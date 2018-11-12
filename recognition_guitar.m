clear all clc;

% Programa que identifica as notas da escala diatônica de Dó maior. 

while true

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

    %%%%%%%%%%%%%%%%%%%%%%% NOTA DÓ (C) %%%%%%%%%%%%%%%%%%%%%%%%

    if freq(index) >= 31 && freq(index) <= 34;
        fprintf('Nota C (dó) na 1ª oitava \n');

        elseif freq(index) >= 64 && freq(index) <= 66;
            fprintf('Nota C (dó) na 2ª oitava \n');

        elseif freq(index) >= 129 && freq(index) <= 131;
            fprintf('Nota C (dó) na 3ª oitava \n');

        elseif freq(index) >= 260 && freq(index) <= 265;
            fprintf('Nota C (dó) na 4ª oitava \n');

        elseif freq(index) >= 522 && freq(index) <= 530;
            fprintf('Nota C (dó) na 5ª oitava \n');

        elseif freq(index) >= 1045 && freq(index) <= 1047;
            fprintf('Nota C (dó) na 6ª oitava \n');

        elseif freq(index) >= 2092 && freq(index) <= 2094;
            fprintf('Nota C (dó) na 7ª oitava \n');

        %%%%%%%%%%%%%%%%%%%%%%% NOTA D (RÉ) %%%%%%%%%%%%%%%%%%%%%%%%

        elseif freq(index) >= 37 && freq(index) <= 39;
            fprintf('Nota D (ré) na 1ª oitava \n');

        elseif freq(index) >= 72 && freq(index) <= 74;
            fprintf('Nota D (ré) na 2ª oitava \n');

        elseif freq(index) >= 145 && freq(index) <= 149;
            fprintf('Nota D (ré) na 3ª oitava \n');

        elseif freq(index) >= 292 && freq(index) <= 297;
            fprintf('Nota D (ré) na 4ª oitava \n');

        elseif freq(index) >= 586 && freq(index) <= 588;
            fprintf('Nota D (ré) na 5ª oitava \n');

        elseif freq(index) >= 1173 && freq(index) <= 1175;
            fprintf('Nota D (ré) na 6ª oitava \n');

        elseif freq(index) >= 2348 && freq(index) <= 2350;
            fprintf('Nota D (ré) na 7ª oitava \n');

        %%%%%%%%%%%%%%%%%%%%%%% NOTA E (MI) %%%%%%%%%%%%%%%%%%%%%%%%

        elseif freq(index) >= 40 && freq(index) <= 42;
            fprintf('Nota E (MI) na 1ª oitava \n');

        elseif freq(index) >= 81 && freq(index) <= 83;
            fprintf('Nota E (mi) na 2ª oitava \n');

        elseif freq(index) >= 163 && freq(index) <= 165;
            fprintf('Nota E (mi) na 3ª oitava \n');

        elseif freq(index) >= 328 && freq(index) <= 334;
            fprintf('Nota E (mi) na 4ª oitava \n');

        elseif freq(index) >= 658 && freq(index) <= 663;
            fprintf('Nota E (mi) na 5ª oitava \n');

        elseif freq(index) >= 1317 && freq(index) <= 1319;
            fprintf('Nota E (mi) na 6ª oitava \n');

        elseif freq(index) >= 2636 && freq(index) <= 2638;
            fprintf('Nota E (mi) na 7ª oitava \n');

        %%%%%%%%%%%%%%%%%%%%%%% NOTA F (FA) %%%%%%%%%%%%%%%%%%%%%%%%

        elseif freq(index) >= 42 && freq(index) <= 45;
            fprintf('Nota F (fá) na 1ª oitava \n');

        elseif freq(index) >= 86 && freq(index) <= 88;
            fprintf('Nota F (fá) na 2ª oitava \n');

        elseif freq(index) >= 173 && freq(index) <= 187;
            fprintf('Nota F (fá) na 3ª oitava \n');

        elseif freq(index) >= 348 && freq(index) <= 375;
            fprintf('Nota F (fá) na 4ª oitava \n');

        elseif freq(index) >= 697 && freq(index) <= 699;
            fprintf('Nota F (fá) na 5ª oitava \n');

        elseif freq(index) >= 1395 && freq(index) <= 1397;
            fprintf('Nota F (fá) na 6ª oitava \n');

        elseif freq(index) >= 2792 && freq(index) <= 2794;
            fprintf('Nota F (fá) na 7ª oitava \n');

        %%%%%%%%%%%%%%%%%%%%%%% NOTA G (SOL) %%%%%%%%%%%%%%%%%%%%%%%%

        elseif freq(index) >= 47 && freq(index) <= 49;
            fprintf('Nota G (sol) na 1ª oitava \n');

        elseif freq(index) >= 96 && freq(index) <= 98;
            fprintf('Nota G (sol) na 2ª oitava \n');

        elseif freq(index) >= 194 && freq(index) <= 198;
            fprintf('Nota G (sol) na 3ª oitava \n');

        elseif freq(index) >= 390 && freq(index) <= 397;
            fprintf('Nota G (sol) na 4ª oitava \n');

        elseif freq(index) >= 782 && freq(index) <= 784;
            fprintf('Nota G (sol) na 5ª oitava \n');

        elseif freq(index) >= 1566 && freq(index) <= 1568;
            fprintf('Nota G (sol) na 6ª oitava \n');

        elseif freq(index) >= 3133 && freq(index) <= 3135;
            fprintf('Nota G (sol) na 7ª oitava \n');

        %%%%%%%%%%%%%%%%%%%%%%% NOTA A (LÁ) %%%%%%%%%%%%%%%%%%%%%%%%

        elseif freq(index) >= 54 && freq(index) <= 56;
            fprintf('Nota A (lá) na 1ª oitava \n');

        elseif freq(index) >= 109 && freq(index) <= 111;
            fprintf('Nota A (lá) na 2ª oitava \n');

        elseif freq(index) >= 219 && freq(index) <= 223;
            fprintf('Nota A (lá) na 3ª oitava \n');

        elseif freq(index) >= 439 && freq(index) <= 443;
            fprintf('Nota A (lá) na 4ª oitava \n');

        elseif freq(index) >= 879 && freq(index) <= 881;
            fprintf('Nota A (lá) na 5ª oitava \n');

        elseif freq(index) >= 1759 && freq(index) <= 1761;
            fprintf('Nota A (lá) na 6ª oitava \n');

        elseif freq(index) >= 3519 && freq(index) <= 3521;
            fprintf('Nota A (lá) na 7ª oitava \n');

        %%%%%%%%%%%%%%%%%%%%%%% NOTA B (SI) %%%%%%%%%%%%%%%%%%%%%%%%

        elseif freq(index) >= 60 && freq(index) <= 63;
            fprintf('Nota B (si) na 1ª oitava \n');

        elseif freq(index) >= 122 && freq(index) <= 124;
            fprintf('Nota B (si) na 2ª oitava \n');

        elseif freq(index) >= 245 && freq(index) <= 249;
            fprintf('Nota B (si) na 3ª oitava \n');

        elseif freq(index) >= 492 && freq(index) <= 499;
            fprintf('Nota B (si) na 4ª oitava \n');

        elseif freq(index) >= 986 && freq(index) <= 988;
            fprintf('Nota B (si) na 5ª oitava \n');

        elseif freq(index) >= 1974 && freq(index) <= 1976;
            fprintf('Nota B (si) na 6ª oitava \n');

        elseif freq(index) >= 3950 && freq(index) <= 3952;
            fprintf('Nota B (si) na 7ª oitava \n');

    end

end
