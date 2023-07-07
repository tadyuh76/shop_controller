import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_controller/core/constants/palette.dart';
import 'package:shop_controller/core/shared/widgets/section.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  final _urlController = TextEditingController();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _priceController = TextEditingController();
  final _quantityController = TextEditingController();
  bool _shopeeSelected = false;
  bool _lazadaSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 140, vertical: 40),
          child: Column(
            children: [
              UrlInputSection(urlController: _urlController),
              const SizedBox(height: 40),
              Section(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      const Text(
                        "Thông tin sản phẩm",
                        style: TextStyle(fontSize: 24),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const SizedBox(
                            width: 140,
                            child: Text(
                              "Tên sản phẩm",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Flexible(
                            child: TextField(
                              controller: _nameController,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 10,
                                ),
                                hintText: "",
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  borderSide: BorderSide(color: Palette.grey),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  borderSide: BorderSide(color: Palette.grey),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 140,
                            child: Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "Mô tả",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Flexible(
                            child: TextField(
                              maxLines: 12,
                              controller: _descriptionController,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(20),
                                hintText: "",
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(color: Palette.grey),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(color: Palette.grey),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const SizedBox(
                            width: 140,
                            child: Text(
                              "Giá bán (VNĐ)",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            width: 200,
                            child: TextField(
                              controller: _priceController,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 10,
                                ),
                                hintText: "",
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  borderSide: BorderSide(color: Palette.grey),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  borderSide: BorderSide(color: Palette.grey),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 100),
                          const SizedBox(
                            width: 140,
                            child: Text(
                              "Số lượng kho",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            width: 200,
                            child: TextField(
                              controller: _quantityController,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 10,
                                ),
                                hintText: "",
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  borderSide: BorderSide(color: Palette.grey),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  borderSide: BorderSide(color: Palette.grey),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const SizedBox(
                            width: 140,
                            child: Text(
                              "Nền tảng",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            width: 200,
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/shopee.png",
                                  width: 30,
                                  height: 30,
                                ),
                                const Text(
                                  "Shopee",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Checkbox(
                                  value: _shopeeSelected,
                                  onChanged: (value) {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UrlInputSection extends StatelessWidget {
  const UrlInputSection({
    super.key,
    required TextEditingController urlController,
  }) : _urlController = urlController;

  final TextEditingController _urlController;

  @override
  Widget build(BuildContext context) {
    return Section(
      child: Column(
        children: [
          const Text(
            "Nhập đường dẫn",
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 600,
            child: TextField(
              controller: _urlController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                hintText: "https://chc.com/...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(color: Palette.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(color: Palette.grey),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Material(
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            color: Palette.primary,
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              // splashColor: Palette.background,
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 15,
                ),
                child: const Text(
                  "Lấy thông tin sản phẩm",
                  style: TextStyle(fontSize: 16, color: Palette.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
