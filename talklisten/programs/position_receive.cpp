#include "ros/ros.h"
#include "talklisten/Position.h"
#include "std_msgs/String.h"
#include <sstream>
#include <cstdlib>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "position_receive");
  if (argc < 4) 
  {
    ROS_INFO("usage: position_receive X Y and Direction");
    return 1;
  }

  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<talklisten::Position>("position");
  talklisten::Position srv;
  srv.request.posx = atoll(argv[1]);
  srv.request.posy = atoll(argv[2]);
  srv.request.ch = argv[3][0];
  if (client.call(srv))
  {
    ROS_INFO("moving the rover: x:[%ld], y:[%ld],dir:[%s])",srv.response.posx,srv.response.posy,srv.response.dir.c_str());
  }
  else
  {
    ROS_ERROR("Failed to call service position");
    return 1;
  }

  return 0;
}
