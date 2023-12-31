cmake_minimum_required(VERSION 2.8.3)
project(talklisten)

## Find catkin and any catkin packages
find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs genmsg gazebo_ros gazebo_msgs)

## Declare ROS messages and services
add_message_files(FILES posi.msg)
add_service_files(FILES Position.srv)

## Generate added messages and services
generate_messages(DEPENDENCIES std_msgs ${PROJECT_NAME})

## Declare a catkin package
catkin_package()

install(DIRECTORY urdf launch
    DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
## Build talker and listener
include_directories(include ${catkin_INCLUDE_DIRS})
add_library(talker programs/talker.cpp)
add_library(listener programs/listener.cpp)
add_executable(talke programs/talker.cpp)
target_link_libraries(talke ${catkin_LIBRARIES})

add_executable(listene programs/listener.cpp)
target_link_libraries(listene ${catkin_LIBRARIES})

add_executable(add_two_ints_server programs/add_two_ints_server.cpp)
target_link_libraries(add_two_ints_server ${catkin_LIBRARIES})

add_executable(add_two_ints_client programs/add_two_ints_client.cpp)
target_link_libraries(add_two_ints_client ${catkin_LIBRARIES})

add_executable(position_send programs/position_send.cpp)
target_link_libraries(position_send ${catkin_LIBRARIES})

add_executable(position_receive programs/position_receive.cpp)
target_link_libraries(position_receive ${catkin_LIBRARIES})
