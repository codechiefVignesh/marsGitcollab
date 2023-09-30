// Generated by gencpp from file talklisten/posi.msg
// DO NOT EDIT!


#ifndef TALKLISTEN_MESSAGE_POSI_H
#define TALKLISTEN_MESSAGE_POSI_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace talklisten
{
template <class ContainerAllocator>
struct posi_
{
  typedef posi_<ContainerAllocator> Type;

  posi_()
    : ch(0)  {
    }
  posi_(const ContainerAllocator& _alloc)
    : ch(0)  {
  (void)_alloc;
    }



   typedef uint8_t _ch_type;
  _ch_type ch;





  typedef boost::shared_ptr< ::talklisten::posi_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::talklisten::posi_<ContainerAllocator> const> ConstPtr;

}; // struct posi_

typedef ::talklisten::posi_<std::allocator<void> > posi;

typedef boost::shared_ptr< ::talklisten::posi > posiPtr;
typedef boost::shared_ptr< ::talklisten::posi const> posiConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::talklisten::posi_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::talklisten::posi_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::talklisten::posi_<ContainerAllocator1> & lhs, const ::talklisten::posi_<ContainerAllocator2> & rhs)
{
  return lhs.ch == rhs.ch;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::talklisten::posi_<ContainerAllocator1> & lhs, const ::talklisten::posi_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace talklisten

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::talklisten::posi_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::talklisten::posi_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::talklisten::posi_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::talklisten::posi_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::talklisten::posi_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::talklisten::posi_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::talklisten::posi_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dd7240a84f4873bbc50cced87558e8eb";
  }

  static const char* value(const ::talklisten::posi_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdd7240a84f4873bbULL;
  static const uint64_t static_value2 = 0xc50cced87558e8ebULL;
};

template<class ContainerAllocator>
struct DataType< ::talklisten::posi_<ContainerAllocator> >
{
  static const char* value()
  {
    return "talklisten/posi";
  }

  static const char* value(const ::talklisten::posi_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::talklisten::posi_<ContainerAllocator> >
{
  static const char* value()
  {
    return "char ch\n"
;
  }

  static const char* value(const ::talklisten::posi_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::talklisten::posi_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ch);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct posi_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::talklisten::posi_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::talklisten::posi_<ContainerAllocator>& v)
  {
    s << indent << "ch: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ch);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TALKLISTEN_MESSAGE_POSI_H
