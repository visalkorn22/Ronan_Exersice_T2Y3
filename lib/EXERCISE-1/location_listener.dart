import 'location.dart';

/// Observer interface for listening to location changes.
abstract class LocationListener {
  void onLocationUpdated(Location newLocation);
}
