#include <ros/ros.h>
#include "HW4/First_srv.h"


int main ( int argc, char** argv ) 
{
ros::init ( argc, argv, "cal_pow_clt") ;
ros::NodeHandle nh;

ros::ServiceClient client = nh.serviceClient<HW4::First_srv >("cal_pow_server");

HW4::First_srv srv;

srv.request.val = atoll(argv[1]);

client.call(srv);
}
