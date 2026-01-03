%% CC–CV Charging Profile

t_end = 5000;               % Simulation time [s]
dt = 1;                     % Time step [s]
time = (0:dt:t_end)';

I_CC = 1 * Q_nominal;       % 1C Constant Current
I_min = 0.05 * Q_nominal;   % Cutoff current

% Voltage placeholder (from Simulink feedback)
V_terminal = ones(length(time),1) * 3.7;

current = zeros(length(time),1);

for k = 1:length(time)
    if V_terminal(k) < V_cutoff
        current(k) = I_CC;
    else
        current(k) = max(I_CC * exp(-0.001*(k)), I_min);
    end
end

CCCV_Current = [time current];
