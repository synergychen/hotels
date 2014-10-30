# Hotel Database

A hotel database and searching app. A focus was put on Single Responsibility
with each object being focused on a single thing.

- `HotelDatabase` - The entrypoint to the app, focused on storing the hotel
  list, letting users search and print the list.
- `Hotel` - A simple data object that knows about the hotel info, and the
  logic behind `total_rooms`
in a nicely formatted list
- `NullHotel` - A Null `Hotel` object that matches the interface of the
  `Hotel` class and stands in for a real `Hotel` when one can't be found.
Example of the [Null Object pattern][]
- `Decorator` - Responsible for cleaning up the strings, integers, and phone
  numbers for the `Hotel.`

[Decorator Pattern]: http://en.wikipedia.org/wiki/Decorator_pattern
[Null Object pattern]: http://en.wikipedia.org/wiki/Null_Object_pattern
