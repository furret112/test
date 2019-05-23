// Generated by gencpp from file HW4/First_srvResponse.msg
// DO NOT EDIT!


#ifndef HW4_MESSAGE_FIRST_SRVRESPONSE_H
#define HW4_MESSAGE_FIRST_SRVRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace HW4
{
template <class ContainerAllocator>
struct First_srvResponse_
{
  typedef First_srvResponse_<ContainerAllocator> Type;

  First_srvResponse_()
    : ans(0)  {
    }
  First_srvResponse_(const ContainerAllocator& _alloc)
    : ans(0)  {
  (void)_alloc;
    }



   typedef int32_t _ans_type;
  _ans_type ans;





  typedef boost::shared_ptr< ::HW4::First_srvResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::HW4::First_srvResponse_<ContainerAllocator> const> ConstPtr;

}; // struct First_srvResponse_

typedef ::HW4::First_srvResponse_<std::allocator<void> > First_srvResponse;

typedef boost::shared_ptr< ::HW4::First_srvResponse > First_srvResponsePtr;
typedef boost::shared_ptr< ::HW4::First_srvResponse const> First_srvResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::HW4::First_srvResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::HW4::First_srvResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace HW4

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::HW4::First_srvResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::HW4::First_srvResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::HW4::First_srvResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::HW4::First_srvResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::HW4::First_srvResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::HW4::First_srvResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::HW4::First_srvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fd5d0466a761324f0f90b3b2afef3d69";
  }

  static const char* value(const ::HW4::First_srvResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfd5d0466a761324fULL;
  static const uint64_t static_value2 = 0x0f90b3b2afef3d69ULL;
};

template<class ContainerAllocator>
struct DataType< ::HW4::First_srvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "HW4/First_srvResponse";
  }

  static const char* value(const ::HW4::First_srvResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::HW4::First_srvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 ans\n\
\n\
\n\
";
  }

  static const char* value(const ::HW4::First_srvResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::HW4::First_srvResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ans);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct First_srvResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::HW4::First_srvResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::HW4::First_srvResponse_<ContainerAllocator>& v)
  {
    s << indent << "ans: ";
    Printer<int32_t>::stream(s, indent + "  ", v.ans);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HW4_MESSAGE_FIRST_SRVRESPONSE_H
