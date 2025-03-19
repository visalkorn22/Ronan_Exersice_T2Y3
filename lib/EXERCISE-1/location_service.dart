import 'location.dart';
import 'location_listener.dart';

/// Subject that manages locations and notifies listeners.
class LocationService {
  Location _currentLocation = Location(name: "Paris", country: Country.france);
  final List<LocationListener> _listeners = [];

  void addListener(LocationListener listener) {
    _listeners.add(listener);
  }

  void removeListener(LocationListener listener) {
    _listeners.remove(listener);
  }

  void updateLocation(Location newLocation) {
    _currentLocation = newLocation;
    _notifyListeners();
  }

  void _notifyListeners() {
    for (var listener in _listeners) {
      listener.onLocationUpdated(_currentLocation);
    }
  }
}
