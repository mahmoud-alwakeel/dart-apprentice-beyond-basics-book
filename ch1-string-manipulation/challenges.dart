void main() {
  /// challenge 1 : write a regualr expression to validate an email address
  final emailAdress = "weka@gmail.com"; // change this to check wether it's valid or invalid

  final isEmailValid =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

  if (emailAdress.contains(isEmailValid)) {
    print("valid email address");
  } else {
    print("invalid email address");
  }

  /// challenge 2 : karaoke words
  /// an lRc file contains the timestamps for the lyrics of a song. how would you extract the time and lyrics for the following line of text:
  /// [00:12.34]Row, row, row your boat
  /// extract to be in this format:
  /// minutes: 00
  /// seconds: 12
  /// hundredths: 34
  /// lyrics: Row, row, row your boat

  const line = "[00:12.34]Row, row, row your boat";
  final time = line.substring(1, 9);
  final lyrics = line.substring(10);

  final minutes = int.parse(time.substring(0,2));
  final hours = int.parse(time.substring(3,5));
  final hundredths = int.parse(time.substring(6,8));

  print(' Minutes: ${minutes.toString().padLeft(2, '0')}');
  print(' hours: ${hours.toString().padLeft(2, '0')}');
  print(' hundredths: ${hundredths.toString().padLeft(2, '0')}');
  print("Lyrics: $lyrics");

  // using regex
  final line2 = "[00:12.34]Row, row, row your boat";

  // Extract timestamp and lyrics using substring
  final time2 = line2.substring(1, 9);
  final lyrics2 = line2.substring(10);

  // Parse the timestamp components
  final minutes2 = int.parse(time2.substring(0, 2));
  final seconds2 = int.parse(time2.substring(3, 5));
  final hundredths2 = int.parse(time2.substring(6));

  // Print the extracted information
  print("Minutes: ${minutes2.toString().padLeft(2, '0')}");
  print("Seconds: ${seconds2.toString().padLeft(2, '0')}");
  print("Hundredths: ${hundredths2.toString().padLeft(2, '0')}");
  print("Lyrics: $lyrics2");

}