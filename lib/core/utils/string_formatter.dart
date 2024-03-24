String formatDuration(Duration duration) {
  final hours = getFormattedHours(duration);
  final minutes = getFormattedMinutes(duration);

  if (hours == '00') {
    return '$minutes menit';
  } else if (minutes == '00') {
    return '$hours jam';
  } else {
    return '$hours jam $minutes menit';
  }
}

String getFormattedHours(Duration duration) {
  return twoDigits(duration.inHours.remainder(24));
}

String getFormattedMinutes(Duration duration) {
  return twoDigits(duration.inMinutes.remainder(60));
}

String twoDigits(int n) {
  return n.toString().padLeft(2, '0');
}
