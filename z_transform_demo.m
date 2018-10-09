a_list = [0, 0.95, -1.05, 1];
w_list = [0, 1, 0.4, 0.6];
for i = 1:4
    subplot(4,1,i)
    k = [0:0.5:50];
    a = a_list(i);
    w = w_list(i);
    z = a .^ (-k) .* exp(-1j*w.*k);
    cosine = real(z);
    sine = -imag(z);
    plot(k,cosine, 'o-');
    hold on
    plot(k,sine, 'o-');
    legend('cos(\omega k)', '-jsin(\omega k)')
    title(sprintf('%.2f^{-k} e^{-j%.2fk}', a, w))
end
