

## This package fuse gps and visual odmetry through optimization method.


## install process

1.1 Ubuntu and ROS
Ubuntu 64-bit 16.04 or 18.04. ROS Kinetic or Melodic. ROS Installation

1.2 Ceres Solver

```
sudo apt-get install libceres-dev
```

1.3 Geographic Lib

```
sudo apt-get install libgeographic-dev
```

1.4 Build

cd ..

catkin build

source ~/catkin_ws/devel/setup.bash

## rostopic information

1.1 You can change the topic through global_fusion.launch file
```
  <remap from="/VIO_TOPIC" to="/vins_estimator/odometry" />
  <remap from="/GPS_TOPIC" to="/gps" />


  VIO_Odometry: /VIO_TOPIC    Topic Format: nav_msgs/Odometry
  Link: http://docs.ros.org/melodic/api/nav_msgs/html/msg/Odometry.html
  GPS_Odometry: /GPS_TOPIC    Topic Format: sensor_msgs/NavSatFix
  Link: http://docs.ros.org/melodic/api/sensor_msgs/html/msg/NavSatFix.html
```
1.2 You can change the VIO odometry's covariance through following line. 
    GPS' covariance is depended by GPS's ros message.
```
 <param name = "vio_trans_cov" type="double" value = "0.1"/>
 <param name = "vio_rotation_cov" type="double" value = "0.01"/>
```

## running process

roslaunch gps_visual_odometry global_fusion.launch

rosbag play 2020-04-21-00-24-44.bag

The link for test data: https://drive.google.com/open?id=1Zw4d80cI9uji_f8fyyLxhBRHsLWDgh7y
