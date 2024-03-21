String formatDuration(Duration duration) {
  String formattedDuration = '';
  String twoDigits(int n) => n.toString().padLeft(2, '0');

  final hours = twoDigits(duration.inHours.remainder(24));
  final minutes = twoDigits(duration.inMinutes.remainder(60));

  if (hours == '00') {
    formattedDuration = '$minutes menit';
  } else if (minutes == '00') {
    formattedDuration = '$hours jam';
  } else {
    formattedDuration = '$hours jam $minutes menit';
  }
  return formattedDuration;
}
