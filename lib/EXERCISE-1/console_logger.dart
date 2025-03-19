import 'location_listener.dart';
import 'location.dart';

/// Observer that logs location updates to the console.
class ConsoleLogger implements LocationListener {
  @override
  void onLocationUpdated(Location newLocation) {
    print(
        "📍 Location updated: ${newLocation.name}, ${newLocation.country.name}");
  }
}
