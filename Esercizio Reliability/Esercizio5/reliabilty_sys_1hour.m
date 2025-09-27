x = 1;
cpu = exp(-(x/10000));
rt = exp(-(x/4500));
ahrs = exp(-(x/2000));
ins = exp(-(x/2000));
doppler = exp(-(x/500));
bus = exp(-(x/60000));
Rsys = (1 - (1 - bus).^2).*(1 - (1 - bus).^2).*(1 - (1 - cpu).^2).*(1 - (1 - rt).^2).*(1 - (1 - ins).*(1 - (doppler.*(1 - (1 - ahrs).^3))))
