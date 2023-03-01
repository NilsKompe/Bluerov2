// Generated by gencpp from file core/Set_target.msg
// DO NOT EDIT!


#ifndef CORE_MESSAGE_SET_TARGET_H
#define CORE_MESSAGE_SET_TARGET_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace core
{
template <class ContainerAllocator>
struct Set_target_
{
  typedef Set_target_<ContainerAllocator> Type;

  Set_target_()
    : depth_desired(0.0)
    , heading_desired(0.0)
    , velocity_desired(0.0)  {
    }
  Set_target_(const ContainerAllocator& _alloc)
    : depth_desired(0.0)
    , heading_desired(0.0)
    , velocity_desired(0.0)  {
  (void)_alloc;
    }



   typedef double _depth_desired_type;
  _depth_desired_type depth_desired;

   typedef double _heading_desired_type;
  _heading_desired_type heading_desired;

   typedef double _velocity_desired_type;
  _velocity_desired_type velocity_desired;





  typedef boost::shared_ptr< ::core::Set_target_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::core::Set_target_<ContainerAllocator> const> ConstPtr;

}; // struct Set_target_

typedef ::core::Set_target_<std::allocator<void> > Set_target;

typedef boost::shared_ptr< ::core::Set_target > Set_targetPtr;
typedef boost::shared_ptr< ::core::Set_target const> Set_targetConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::core::Set_target_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::core::Set_target_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::core::Set_target_<ContainerAllocator1> & lhs, const ::core::Set_target_<ContainerAllocator2> & rhs)
{
  return lhs.depth_desired == rhs.depth_desired &&
    lhs.heading_desired == rhs.heading_desired &&
    lhs.velocity_desired == rhs.velocity_desired;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::core::Set_target_<ContainerAllocator1> & lhs, const ::core::Set_target_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace core

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::core::Set_target_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::core::Set_target_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::core::Set_target_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::core::Set_target_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::core::Set_target_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::core::Set_target_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::core::Set_target_<ContainerAllocator> >
{
  static const char* value()
  {
    return "faa6984abfc0273c6ee5cabc8606f8ef";
  }

  static const char* value(const ::core::Set_target_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfaa6984abfc0273cULL;
  static const uint64_t static_value2 = 0x6ee5cabc8606f8efULL;
};

template<class ContainerAllocator>
struct DataType< ::core::Set_target_<ContainerAllocator> >
{
  static const char* value()
  {
    return "core/Set_target";
  }

  static const char* value(const ::core::Set_target_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::core::Set_target_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 depth_desired\n"
"float64 heading_desired\n"
"float64 velocity_desired\n"
;
  }

  static const char* value(const ::core::Set_target_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::core::Set_target_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.depth_desired);
      stream.next(m.heading_desired);
      stream.next(m.velocity_desired);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Set_target_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::core::Set_target_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::core::Set_target_<ContainerAllocator>& v)
  {
    s << indent << "depth_desired: ";
    Printer<double>::stream(s, indent + "  ", v.depth_desired);
    s << indent << "heading_desired: ";
    Printer<double>::stream(s, indent + "  ", v.heading_desired);
    s << indent << "velocity_desired: ";
    Printer<double>::stream(s, indent + "  ", v.velocity_desired);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CORE_MESSAGE_SET_TARGET_H
