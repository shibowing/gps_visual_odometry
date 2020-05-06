

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


## running process

roslaunch gps_visual_odometry global_fusion.launch

rosbag play 2020-04-21-00-24-44.bag

The link for test data: https://drive.google.com/open?id=1Zw4d80cI9uji_f8fyyLxhBRHsLWDgh7y
