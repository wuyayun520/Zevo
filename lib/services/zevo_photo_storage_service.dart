import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ZevoPhotoStorageService {
  static const String _photosKey = 'user_photos';
  
  // 获取应用文档目录
  static Future<Directory> get _documentsDirectory async {
    final directory = await getApplicationDocumentsDirectory();
    final photosDir = Directory('${directory.path}/photos');
    if (!await photosDir.exists()) {
      await photosDir.create(recursive: true);
    }
    return photosDir;
  }
  
  // 保存照片
  static Future<String> savePhoto(File imageFile) async {
    try {
      final photosDir = await _documentsDirectory;
      final fileName = '${DateTime.now().millisecondsSinceEpoch}.jpg';
      await imageFile.copy('${photosDir.path}/$fileName');
      
      // 保存文件名到SharedPreferences
      final prefs = await SharedPreferences.getInstance();
      final List<String> photos = prefs.getStringList(_photosKey) ?? [];
      photos.add(fileName);
      await prefs.setStringList(_photosKey, photos);
      
      return fileName;
    } catch (e) {
      throw Exception('Failed to save photo: $e');
    }
  }
  
  // 获取所有照片文件名
  static Future<List<String>> getPhotoFileNames() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getStringList(_photosKey) ?? [];
    } catch (e) {
      return [];
    }
  }
  
  // 获取照片文件
  static Future<File?> getPhotoFile(String fileName) async {
    try {
      final photosDir = await _documentsDirectory;
      final file = File('${photosDir.path}/$fileName');
      if (await file.exists()) {
        return file;
      }
      return null;
    } catch (e) {
      return null;
    }
  }
  
  // 删除照片
  static Future<bool> deletePhoto(String fileName) async {
    try {
      // 删除文件
      final photosDir = await _documentsDirectory;
      final file = File('${photosDir.path}/$fileName');
      if (await file.exists()) {
        await file.delete();
      }
      
      // 从SharedPreferences中移除
      final prefs = await SharedPreferences.getInstance();
      final List<String> photos = prefs.getStringList(_photosKey) ?? [];
      photos.remove(fileName);
      await prefs.setStringList(_photosKey, photos);
      
      return true;
    } catch (e) {
      return false;
    }
  }
  
  // 清除所有照片
  static Future<bool> clearAllPhotos() async {
    try {
      final photosDir = await _documentsDirectory;
      if (await photosDir.exists()) {
        await photosDir.delete(recursive: true);
      }
      
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_photosKey);
      
      return true;
    } catch (e) {
      return false;
    }
  }
}
