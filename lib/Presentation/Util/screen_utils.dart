enum DeviceType{
  mobile,
  tablet,
  desktop
}

class ScreenUtil {
  static const double mobileMaxSize = 640;
  static const double tabletMaxSize = 1008;
  static const double desktopMinSize = 1008;

  static DeviceType getDeviceType(double width){
    if(width < ScreenUtil.mobileMaxSize){
      return DeviceType.mobile;
    }
    else if(width > ScreenUtil.mobileMaxSize && width < ScreenUtil.tabletMaxSize){
      return DeviceType.tablet;
    }
    return DeviceType.desktop;
  }
}