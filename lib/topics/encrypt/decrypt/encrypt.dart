import 'package:encrypt/encrypt.dart' as encrypt;

class EncryptData {
 static dynamic encrypter(String data){
  final key = encrypt.Key.fromLength(32); // 32 bytes for AES-256
  
    // Generate an IV (Initialization Vector)
    final iv = encrypt.IV.fromLength(16); // 16 bytes for AES
  
    // Create an encrypter with AES algorithm
    final encrypter = encrypt.Encrypter(encrypt.AES(key));
  
    // Encrypt the data
    // const plainText = 'Hello, Flutter!';
    final encrypted = encrypter.encrypt(data, iv: iv);
  
    print('Encrypted: ${encrypted.base64}');
}

static dynamic decrypter (String data){
   final key = encrypt.Key.fromLength(32);

  // Generate an IV (Initialization Vector)
  final iv = encrypt.IV.fromLength(16);

  // Create an encrypter with AES algorithm
  final encrypter = encrypt.Encrypter(encrypt.AES(key));

  // Encrypted data (from the previous step)
  final encrypted = encrypter.encrypt(data, iv: iv);

  // Decrypt the data
  final decrypted = encrypter.decrypt(encrypted, iv: iv);

  print('Decrypted: $decrypted');
}

}