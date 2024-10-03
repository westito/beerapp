sealed class SelectBeerEvent {
  const SelectBeerEvent();
}

class OnLoadEvent extends SelectBeerEvent {
  const OnLoadEvent();
}

class OnBeerSelectedEvent extends SelectBeerEvent {
  final bool accept;

  const OnBeerSelectedEvent({required this.accept});
}
