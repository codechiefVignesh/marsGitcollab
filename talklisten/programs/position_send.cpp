#include"ros/ros.h"
#include"talklisten/Position.h"
bool position(talklisten::Position::Request &req, talklisten::Position::Response &res)
{
    res.chr = req.ch;
    if(res.chr=='w')
    {
        res.posx = req.posx+5.0;
        res.posy = req.posy+5.0;
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
    ROS_INFO("request: key = %c",(char)req.ch);
    ROS_INFO("moving the rover: x:[%f], y:[%f]",res.posx,res.posy);
    return true;
}   
int main(int argc, char **argv)
{
    ros::init(argc,argv,"position_send");
    ros::NodeHandle n;
    ros::ServiceServer service = n.advertiseService("position_send",position);
    ROS_INFO("Ready to move the rover");
    ros::spin();
    return 0;
}
