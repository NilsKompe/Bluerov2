cmake_minimum_required(VERSION 2.8.3)
project(som_wall_detection)

find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  rospy
  sensor_msgs
  std_msgs
  visualization_msgs
)

catkin_python_setup()

catkin_package(
  #INCLUDE_DIRS 
  #LIBRARIES 
  CATKIN_DEPENDS geometry_msgs sensor_msgs std_msgs visualization_msgs
  #DEPENDS 
)

