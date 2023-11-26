import 'package:basic_api/data/api/api_service.dart';
import 'package:basic_api/data/model/model_post.dart';
import 'package:basic_api/data/model/model_request.dart';
import 'package:flutter/material.dart';

class UpdatePage extends StatefulWidget {
  static const routeName = '/update_page';

  final ProductModel productModel;
  const UpdatePage({super.key, required this.productModel});

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  TextEditingController _titleController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _categoryIdController = TextEditingController();
  final TextEditingController _imagesController = TextEditingController();

  void dispose() {
    super.dispose();
    _titleController.dispose();
    _priceController.dispose();
    _descriptionController.dispose();
    _categoryIdController.dispose();
    _imagesController.dispose();
  }

  @override
  void initState() {
    _titleController.text = widget.productModel.title;
    _priceController.text = widget.productModel.price.toString();
    _descriptionController.text = widget.productModel.description;
    _categoryIdController.text = widget.productModel.id.toString();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          TextFormField(
            controller: _categoryIdController,
            readOnly: true,
            decoration: InputDecoration(hintText: '${widget.productModel.id}'),
          ),
          TextFormField(
            controller: _titleController,
            decoration:
                InputDecoration(hintText: '${widget.productModel.title}'),
          ),
          TextFormField(
            controller: _priceController,
            decoration:
                InputDecoration(hintText: '${widget.productModel.price}'),
          ),
          TextFormField(
            controller: _descriptionController,
            decoration:
                InputDecoration(hintText: '${widget.productModel.description}'),
          ),
          TextFormField(
            controller: _imagesController,
            decoration:
                InputDecoration(hintText: '${widget.productModel.images}'),
          ),
          ElevatedButton(
              onPressed: () async {
                final model = ProductsRequestModel(
                    categoryId: int.parse(_categoryIdController.text),
                    title: _titleController.text,
                    price: int.parse(_priceController.text),
                    description: _descriptionController.text);
                    await ApiService().update(model, widget.productModel.id);
              },
              child: Icon(Icons.send))
        ],
      ),
    ));
  }
}
