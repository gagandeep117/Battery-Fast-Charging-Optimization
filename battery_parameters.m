%% Battery Parameters (Single Particle Model)

% Nominal parameters
Q_nominal = 3;              % Battery capacity [Ah]
V_cutoff  = 4.2;            % Cutoff voltage [V]
SOC_init  = 0.2;            % Initial State of Charge (20%)

% Thermal parameters
T_ambient = 25;             % Ambient temperature [degC]
T_max     = 60;             % Maximum allowable temperature [degC]

% Charging current limits
C_rate_1  = 2.0;            % 2C fast charging
C_rate_2  = 1.5;            % 1.5C
C_rate_3  = 1.0;            % 1C
C_rate_4  = 0.5;            % 0.5C

% Convert C-rate to current (A)
I1 = C_rate_1 * Q_nominal;
I2 = C_rate_2 * Q_nominal;
I3 = C_rate_3 * Q_nominal;
I4 = C_rate_4 * Q_nominal;
