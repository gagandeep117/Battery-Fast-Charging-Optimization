%% Multi-Stage Fast Charging Profile

t_end = 4000;   % Faster than CC-CV
dt = 1;
time = (0:dt:t_end)';

SOC = zeros(length(time),1);
SOC(1) = SOC_init;

current = zeros(length(time),1);

for k = 2:length(time)

    % Charging stages based on SOC
    if SOC(k-1) < 0.4
        current(k) = I1;    % 2C
    elseif SOC(k-1) < 0.6
        current(k) = I2;    % 1.5C
    elseif SOC(k-1) < 0.8
        current(k) = I3;    % 1C
    else
        current(k) = I4;    % 0.5C
    end

    % SOC update (Coulomb counting)
    SOC(k) = SOC(k-1) + (current(k)*dt)/(3600*Q_nominal);
end

MultiStage_Current = [time current];
