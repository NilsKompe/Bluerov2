execute_process(COMMAND "/home/bluerov2-22/v1Bluerov/build/core/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/bluerov2-22/v1Bluerov/build/core/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
