#include "ros/ros.h"
#include "talklisten/Position.h"
#include <cstdlib>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "position_receive");
  if (argc != 5) 
  {
    ROS_INFO("usage: position_receive X Y");
    return 1;
  }

  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<talklisten::Position>("position");
  talklisten::Position srv;
  srv.request.ch = atoll(argv[1]);
  if (client.call(srv))
  {
    ROS_INFO("moving the rover: x:[%f], y:[%f])",srv.response.posx,srv.response.posy);
  }
  else
  {
    ROS_ERROR("Failed to call service position_");
    return 1;
  }

  return 0;
}
