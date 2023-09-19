function CWT = get_cwt(signals, fs)

s = size(signals);
for i=1:s(1)
    CWT{i} = cwt(signals(i, :), fs);
end

end