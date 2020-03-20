// Flutter code sample for SingleChildScrollView

// In this example, the children are spaced out equally, unless there's no more
// room, in which case they stack vertically and scroll.
//
// When using this technique, [Expanded] and [Flexible] are not useful, because
// in both cases the "available space" is infinite (since this is in a viewport).
// The next section describes a technique for providing a maximum height constraint.

import 'package:flutter/widgets.dart';

class League {
  String _name;
  List<String> _confs;
  Icon icon;
  int importance;

  League(this._name, this._confs, {this.icon, this.importance})
      : assert(_confs != null) {
    print("created conf for $_name");
  }

  List<String> get conf => _confs;
  String get name => _name;
}

class Conference {
  League parent;
  String name;
  List<Team> teams;

  Conference(this.parent, this.name);
}

class Team {
  Conference parent;
  String name;

  Team(this.parent, this.name);
}
