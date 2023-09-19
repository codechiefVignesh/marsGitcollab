#include "ros/ros.h"
#include "talklisten/Position.h"
#include "std_msgs/String.h"
#include <sstream>
#include <cstdlib>
#include <iostream>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "position_receive");
    if (argc < 3) 
    {
        ROS_INFO("usage: position_receive X Y");
        return 1;
    }

    ros::NodeHandle n;
    ros::ServiceClient client = n.serviceClient<talklisten::Position>("position");
    talklisten::Position srv;

    srv.request.posx = atoll(argv[1]);
    srv.request.posy = atoll(argv[2]);

    char direction;
    bool validInput = true;

    while (validInput)
    {
        std::cout << "Enter direction (w/a/s/d to move, any other key to exit): ";
        std::cin >> direction;

        if (direction == 'w' || direction == 'a' || direction == 's' || direction == 'd')
        {
            srv.request.ch = direction;

            if (client.call(srv))
            {
                ROS_INFO("moving the rover: x:[%ld], y:[%ld],dir:[%s])", srv.response.posx, srv.response.posy, srv.response.dir.c_str());
            }
            else
            {
                ROS_ERROR("Failed to call service position");
                return 1;
            }
        }
        else
        {
            validInput = false;
        }
    }

    return 0;
}
