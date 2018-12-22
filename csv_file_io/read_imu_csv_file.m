function imu_data = read_imu_csv_file(csv_filename)
% imu_data = read_imu_csv_file(csv_filename)
% Jesse: read IMU data from a given CSV file. The CSV file has such format:
% row#0, data descriptions: # timestamp [ns],w_RS_S_x [rad s^-1],w_RS_S_y [rad s^-1],w_RS_S_z [rad s^-1],a_RS_S_x [m s^-2],a_RS_S_y [m s^-2],a_RS_S_z [m s^-2]
% From rwo#1 to the file end, IMU data are presented in the following order:
% timestamp, gyro data x, gyro data y, gyro data z, acc data x, acc data y,
% acc data z
%
% imu_data is Nx7 matrix. The first column is time stamp in second.

imu_data = dlmread(csv_filename, ',', 1, 0);
imu_data(:,1) = imu_data(:,1)/1e9;

