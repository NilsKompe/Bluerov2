# Install script for directory: /home/bluerov2-22/v1Bluerov/src/core

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/bluerov2-22/v1Bluerov/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/bluerov2-22/v1Bluerov/build/core/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/core/msg" TYPE FILE FILES
    "/home/bluerov2-22/v1Bluerov/src/core/msg/Bar30.msg"
    "/home/bluerov2-22/v1Bluerov/src/core/msg/Attitude.msg"
    "/home/bluerov2-22/v1Bluerov/src/core/msg/Set_depth.msg"
    "/home/bluerov2-22/v1Bluerov/src/core/msg/Set_heading.msg"
    "/home/bluerov2-22/v1Bluerov/src/core/msg/Set_velocity.msg"
    "/home/bluerov2-22/v1Bluerov/src/core/msg/Set_target.msg"
    "/home/bluerov2-22/v1Bluerov/src/core/msg/State.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/core/cmake" TYPE FILE FILES "/home/bluerov2-22/v1Bluerov/build/core/catkin_generated/installspace/core-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/bluerov2-22/v1Bluerov/devel/include/core")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/bluerov2-22/v1Bluerov/devel/share/roseus/ros/core")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/bluerov2-22/v1Bluerov/devel/share/common-lisp/ros/core")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/bluerov2-22/v1Bluerov/devel/share/gennodejs/ros/core")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/bluerov2-22/v1Bluerov/devel/lib/python3/dist-packages/core")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/bluerov2-22/v1Bluerov/devel/lib/python3/dist-packages/core" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/bluerov2-22/v1Bluerov/devel/lib/python3/dist-packages/core" FILES_MATCHING REGEX "/home/bluerov2-22/v1Bluerov/devel/lib/python3/dist-packages/core/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/bluerov2-22/v1Bluerov/build/core/catkin_generated/installspace/core.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/core/cmake" TYPE FILE FILES "/home/bluerov2-22/v1Bluerov/build/core/catkin_generated/installspace/core-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/core/cmake" TYPE FILE FILES
    "/home/bluerov2-22/v1Bluerov/build/core/catkin_generated/installspace/coreConfig.cmake"
    "/home/bluerov2-22/v1Bluerov/build/core/catkin_generated/installspace/coreConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/core" TYPE FILE FILES "/home/bluerov2-22/v1Bluerov/src/core/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/core/launch" TYPE FILE FILES
    "/home/bluerov2-22/v1Bluerov/src/core/launch/gazebo.launch"
    "/home/bluerov2-22/v1Bluerov/src/core/launch/gazebo_teleop.launch"
    "/home/bluerov2-22/v1Bluerov/src/core/launch/gazebo_sitl.launch"
    "/home/bluerov2-22/v1Bluerov/src/core/launch/rviz.launch"
    "/home/bluerov2-22/v1Bluerov/src/core/launch/mav_pluginlists.yaml"
    "/home/bluerov2-22/v1Bluerov/src/core/launch/user_mav.launch"
    "/home/bluerov2-22/v1Bluerov/src/core/launch/video.launch"
    "/home/bluerov2-22/v1Bluerov/src/core/launch/bluerov2_node.launch"
    "/home/bluerov2-22/v1Bluerov/src/core/launch/control.launch"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/core" TYPE DIRECTORY FILES
    "/home/bluerov2-22/v1Bluerov/src/core/model"
    "/home/bluerov2-22/v1Bluerov/src/core/config"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/home/bluerov2-22/v1Bluerov/build/core/catkin_generated/installspace/user_mav")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/home/bluerov2-22/v1Bluerov/build/core/catkin_generated/installspace/video")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/home/bluerov2-22/v1Bluerov/build/core/catkin_generated/installspace/gazebo_teleop.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/home/bluerov2-22/v1Bluerov/build/core/catkin_generated/installspace/sitl.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/home/bluerov2-22/v1Bluerov/build/core/catkin_generated/installspace/bluerov_node2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/home/bluerov2-22/v1Bluerov/build/core/catkin_generated/installspace/node")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/home/bluerov2-22/v1Bluerov/build/core/catkin_generated/installspace/depth_controller.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/home/bluerov2-22/v1Bluerov/build/core/catkin_generated/installspace/heading_controller.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/home/bluerov2-22/v1Bluerov/build/core/catkin_generated/installspace/velocity_controller.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/home/bluerov2-22/v1Bluerov/build/core/catkin_generated/installspace/commander.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/home/bluerov2-22/v1Bluerov/build/core/catkin_generated/installspace/Imu_bridge.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/home/bluerov2-22/v1Bluerov/build/core/catkin_generated/installspace/Imu_bridge_raw.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/home/bluerov2-22/v1Bluerov/build/core/catkin_generated/installspace/gamepad.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/home/bluerov2-22/v1Bluerov/build/core/catkin_generated/installspace/gui.py")
endif()

