module Visitor {
  record VisitorInfo {
    var name: string;
    var purpose: string;
    var checkInTime: int;
    var checkOutTime: int;
  }

  var visitors: [string] VisitorInfo = {};

  proc checkIn(visitorName: string, purpose: string) {
    var currentTime = Clock.elapsed();
    visitors(visitorName) = VisitorInfo(visitorName, purpose, currentTime, -1);
  }

  proc checkOut(visitorName: string) {
    if visitors.contains(visitorName) then {
      var currentTime = Clock.elapsed();
      visitors(visitorName).checkOutTime = currentTime;
    } else {
      writeln("Visitor ", visitorName, " not found.");
    }
  }

  proc listVisitors() {
    for visitor in visitors.keys {
      writeln("Visitor: ", visitor, ", Purpose: ", visitors(visitor).purpose);
    }
  }

  proc getVisitorInfo(visitorName: string) {
    if visitors.contains(visitorName) then {
      var info = visitors(visitorName);
      writeln("Visitor: ", info.name);
      writeln("Purpose: ", info.purpose);
      writeln("Check-In Time: ", info.checkInTime);
      writeln("Check-Out Time: ", (info.checkOutTime == -1) ? "Not checked out" : info.checkOutTime);
    } else {
      writeln("Visitor ", visitorName, " not found.");
    }
  }
}
