function pert_sig = add_noise(pure_sig, snr)

s = size(pure_sig);
pert_sig = zeros(s(1), s(2));
for i=1:s(1)
    sig = awgn(pure_sig(i, :), snr, 'measured');
    pert_sig(i, :) = sig;
end

end