clear;

delta = linspace(0,1,100);

n = 16; %numerical errors occur beyond n=16
en = zeros(100,1);
delta = delta';
for p = 1:1:100
  en(p) = open_vw_ee(1-delta(p),delta(p),n,n/2,n/2); % calculating EE, with half filling using correlator matrix
endfor
en = real(en);

figure;
plot(delta(1:99),en(1:99));
xlabel('\delta','Fontsize', 16);
ylabel('Entanglement Entropy','Fontsize', 16);