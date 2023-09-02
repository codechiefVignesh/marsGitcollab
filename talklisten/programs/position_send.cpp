#include"ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
#include"talklisten/Position.h"
bool position(talklisten::Position::Request &req, talklisten::Position::Response &res)
{
    res.posx = req.posx;
    res.posy = req.posy;
    res.chr = req.ch;
    if(res.chr=='w')
    {
        res.posx = res.posx+5.0;
        res.posy = res.posy+5.0;
        res.dir = "north";
    }
    else if(res.chr=='d')
    {
        res.dir = "east";
    }
    else if(res.chr=='a')
    {
        res.dir = "west";
    }
    else 
    {
        res.dir = "south";
    }
    ROS_INFO("request: x=%ld y=%ld key = %c",(long int)req.posx,(long int)req.posy, (char)req.ch);
    ROS_INFO("moving the rover: x:[%ld], y:[%ld], direction:[%s]",res.posx,res.posy,res.dir.c_str());
    return true;
}   
int main(int argc, char **argv)
{
    ros::init(argc,argv,"position_send");
    ros::NodeHandle n;
    ros::ServiceServer service = n.advertiseService("position",position);
    ROS_INFO("Ready to move the rover");
    ros::spin();
    return 0;
}
