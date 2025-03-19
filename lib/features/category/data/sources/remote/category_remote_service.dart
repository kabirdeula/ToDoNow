import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../core/core.dart';
import '../../../category.dart';

class CategoryRemoteService {
  final FirebaseFirestore _firestore;

  CategoryRemoteService({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance;

  Future<void> saveCategory(CategoryModel category) async {
    try {
      await _firestore
          .collection('categories')
          .doc(category.id)
          .set(category.toJson());
      log.i(
          "(Category Remote Service) Category saved successfully: ${category.id}");
    } catch (e) {
      log.e("(Category Remote Service) Error saving category: $e");
    }
  }

  Future<List<CategoryModel>> fetchCategories() async {
    try {
      final snapshot = await _firestore.collection('categories').get();

      log.i("(Category Remote Service) Fetched category successfully.");
      return snapshot.docs
          .map((docs) => CategoryModel.fromJson(docs.data()))
          .toList();
    } catch (e) {
      log.e("(Task Remote Service) Failed to fetch categories: $e");
      return [];
    }
  }

  Future<void> deleteCategory(String id) async {
    try {
      await _firestore.collection('categories').doc(id).delete();
      log.i("(Category Remote Service) Category deleted successfully: $id");
    } catch (e) {
      log.e("(Category Remote Service) Error deleting category: $e");
    }
  }
}
