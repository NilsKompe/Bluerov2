// Generated by gencpp from file core/Bar30.msg
// DO NOT EDIT!


#ifndef CORE_MESSAGE_BAR30_H
#define CORE_MESSAGE_BAR30_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace core
{
template <class ContainerAllocator>
struct Bar30_
{
  typedef Bar30_<ContainerAllocator> Type;

  Bar30_()
    : header()
    , time_boot_ms(0)
    , press_abs(0.0)
    , press_diff(0.0)
    , temperature(0)  {
    }
  Bar30_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , time_boot_ms(0)
    , press_abs(0.0)
    , press_diff(0.0)
    , temperature(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint32_t _time_boot_ms_type;
  _time_boot_ms_type time_boot_ms;

   typedef double _press_abs_type;
  _press_abs_type press_abs;

   typedef double _press_diff_type;
  _press_diff_type press_diff;

   typedef int16_t _temperature_type;
  _temperature_type temperature;





  typedef boost::shared_ptr< ::core::Bar30_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::core::Bar30_<ContainerAllocator> const> ConstPtr;

}; // struct Bar30_

typedef ::core::Bar30_<std::allocator<void> > Bar30;

typedef boost::shared_ptr< ::core::Bar30 > Bar30Ptr;
typedef boost::shared_ptr< ::core::Bar30 const> Bar30ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::core::Bar30_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::core::Bar30_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::core::Bar30_<ContainerAllocator1> & lhs, const ::core::Bar30_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.time_boot_ms == rhs.time_boot_ms &&
    lhs.press_abs == rhs.press_abs &&
    lhs.press_diff == rhs.press_diff &&
    lhs.temperature == rhs.temperature;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::core::Bar30_<ContainerAllocator1> & lhs, const ::core::Bar30_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace core

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::core::Bar30_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::core::Bar30_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::core::Bar30_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::core::Bar30_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::core::Bar30_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::core::Bar30_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::core::Bar30_<ContainerAllocator> >
{
  static const char* value()
  {
    return "29194ec7e51ce871e713f252e60d31fb";
  }

  static const char* value(const ::core::Bar30_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x29194ec7e51ce871ULL;
  static const uint64_t static_value2 = 0xe713f252e60d31fbULL;
};

template<class ContainerAllocator>
struct DataType< ::core::Bar30_<ContainerAllocator> >
{
  static const char* value()
  {
    return "core/Bar30";
  }

  static const char* value(const ::core::Bar30_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::core::Bar30_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"uint32 time_boot_ms\n"
"float64 press_abs\n"
"float64 press_diff\n"
"int16 temperature\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::core::Bar30_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::core::Bar30_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.time_boot_ms);
      stream.next(m.press_abs);
      stream.next(m.press_diff);
      stream.next(m.temperature);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Bar30_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::core::Bar30_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::core::Bar30_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "time_boot_ms: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.time_boot_ms);
    s << indent << "press_abs: ";
    Printer<double>::stream(s, indent + "  ", v.press_abs);
    s << indent << "press_diff: ";
    Printer<double>::stream(s, indent + "  ", v.press_diff);
    s << indent << "temperature: ";
    Printer<int16_t>::stream(s, indent + "  ", v.temperature);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CORE_MESSAGE_BAR30_H
