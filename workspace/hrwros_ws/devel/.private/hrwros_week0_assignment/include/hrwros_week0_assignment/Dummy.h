// Generated by gencpp from file hrwros_week0_assignment/Dummy.msg
// DO NOT EDIT!


#ifndef HRWROS_WEEK0_ASSIGNMENT_MESSAGE_DUMMY_H
#define HRWROS_WEEK0_ASSIGNMENT_MESSAGE_DUMMY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hrwros_week0_assignment
{
template <class ContainerAllocator>
struct Dummy_
{
  typedef Dummy_<ContainerAllocator> Type;

  Dummy_()
    : name()  {
    }
  Dummy_(const ContainerAllocator& _alloc)
    : name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;





  typedef boost::shared_ptr< ::hrwros_week0_assignment::Dummy_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hrwros_week0_assignment::Dummy_<ContainerAllocator> const> ConstPtr;

}; // struct Dummy_

typedef ::hrwros_week0_assignment::Dummy_<std::allocator<void> > Dummy;

typedef boost::shared_ptr< ::hrwros_week0_assignment::Dummy > DummyPtr;
typedef boost::shared_ptr< ::hrwros_week0_assignment::Dummy const> DummyConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hrwros_week0_assignment::Dummy_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hrwros_week0_assignment::Dummy_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hrwros_week0_assignment::Dummy_<ContainerAllocator1> & lhs, const ::hrwros_week0_assignment::Dummy_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hrwros_week0_assignment::Dummy_<ContainerAllocator1> & lhs, const ::hrwros_week0_assignment::Dummy_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hrwros_week0_assignment

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::hrwros_week0_assignment::Dummy_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hrwros_week0_assignment::Dummy_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hrwros_week0_assignment::Dummy_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hrwros_week0_assignment::Dummy_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hrwros_week0_assignment::Dummy_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hrwros_week0_assignment::Dummy_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hrwros_week0_assignment::Dummy_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c1f3d28f1b044c871e6eff2e9fc3c667";
  }

  static const char* value(const ::hrwros_week0_assignment::Dummy_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc1f3d28f1b044c87ULL;
  static const uint64_t static_value2 = 0x1e6eff2e9fc3c667ULL;
};

template<class ContainerAllocator>
struct DataType< ::hrwros_week0_assignment::Dummy_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hrwros_week0_assignment/Dummy";
  }

  static const char* value(const ::hrwros_week0_assignment::Dummy_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hrwros_week0_assignment::Dummy_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
;
  }

  static const char* value(const ::hrwros_week0_assignment::Dummy_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hrwros_week0_assignment::Dummy_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Dummy_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hrwros_week0_assignment::Dummy_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hrwros_week0_assignment::Dummy_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HRWROS_WEEK0_ASSIGNMENT_MESSAGE_DUMMY_H
