use checkin;
use checkout;
use list;
use info;

proc main() {
  // Check-in visitors
  checkInVisitor();

  // List visitors
  listAllVisitors();

  // Get visitor information
  getVisitorInformation();

  // Check-out a visitor
  checkOutVisitor();

  // List visitors after check-out
  listAllVisitors();
}

main();
