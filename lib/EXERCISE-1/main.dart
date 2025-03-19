import 'location_service.dart';
import 'console_logger.dart';
import 'location.dart';

void main() {
  LocationService locationService = LocationService();
  ConsoleLogger logger = ConsoleLogger();

  // Register observer
  locationService.addListener(logger);

  // Update location
  print("🔄 Changing location to Madrid, Spain...");
  locationService
      .updateLocation(Location(name: "Madrid", country: Country.spain));

  print("🔄 Changing location to Phnom Penh, Cambodia...");
  locationService
      .updateLocation(Location(name: "Phnom Penh", country: Country.cambodia));
}
