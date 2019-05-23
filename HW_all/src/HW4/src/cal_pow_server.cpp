#include <ros/ros.h>
#include "HW4/First_srv.h"

int cal_pow(int number)
{
    return number*number;
}


bool service_request(HW4::First_srv::Request &req, HW4::First_srv::Response &res)
{
    ROS_INFO("Request Num = %d",req.val);
    res.ans = cal_pow(req.val);
    ROS_INFO("Response: %d is pow", (res.ans));
    return true;
}

int main ( int argc, char** argv ) 
{
HW4::First_srv srv;
ros::init ( argc, argv, "cal_pow_ser") ;
ros::NodeHandle nh;

ros::ServiceServer service = nh.advertiseService("cal_pow_server", service_request);
ros::spin();
}

