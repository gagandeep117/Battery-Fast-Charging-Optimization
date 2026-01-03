%% Plot Results

figure
plot(SOC.time, SOC.signals.values,'LineWidth',2)
xlabel('Time (s)')
ylabel('State of Charge')
title('SOC vs Time')
grid on

figure
plot(Voltage.time, Voltage.signals.values,'LineWidth',2)
xlabel('Time (s)')
ylabel('Voltage (V)')
title('Voltage vs Time')
grid on

figure
plot(Temperature.time, Temperature.signals.values,'LineWidth',2)
xlabel('Time (s)')
ylabel('Temperature (°C)')
title('Temperature vs Time')
grid on
