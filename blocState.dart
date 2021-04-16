import 'dart:async';

class BlocState {
  Map _state;
  Stream stream;
  StreamController controller;
  
  BlocState(Map state) {
    this._state = state;
    this.controller = StreamController();
    this.stream = this.controller.stream;
    this.initialRunner();
  }

  void initialRunner() {}

  void set state(Map state) {
    this._state = state;
    controller.add(this._state);
  }

  Map get state {
    return this._state;
  }
}

