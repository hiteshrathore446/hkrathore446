import 'package:demoapp/Database/DatabaseHelp.dart';
import 'package:flutter/material.dart';

class First_Screen extends StatefulWidget {
  const First_Screen({super.key});

  @override
  State<First_Screen> createState() => _First_ScreenState();
}

class _First_ScreenState extends State<First_Screen> {
  List<Map<String, dynamic>> myData = [];
  final formkey = GlobalKey<FormState>();
  bool _isLoading = true;
  void _refreshData() async {
    final data = await DatabaseHelper.getItems();
    setState(() {
      myData = data;
      _isLoading = false;
    });
  }

  @override
  void initstate() {
    super.initState();
    _refreshData();
  }

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  //This is function to call myshowform
  //it will also triggered with we will try to update or delete some data
  void showMyForm(int? id) async {
    //id == null -> create new data
    //id != null -> update to your
    if (id != null) {
      final existingData = myData.firstWhere((element) => element['id'] == id);
      _titleController.text = existingData['title'];
      _descriptionController.text = existingData['description'];
    } else {
      _titleController.text = "";
      _descriptionController.text = "";
    }
    showModalBottomSheet(
        context: context,
        elevation: 5,
        isDismissible: false,
        isScrollControlled: true,
        builder: (_) => Container(
              padding: EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 120,
              ),
              child: Form(
                  key: formkey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextFormField(
                        controller: _titleController,
                        validator: formvalidator,
                        decoration: InputDecoration(hintText: "Title"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _descriptionController,
                        validator: formvalidator,
                        decoration: InputDecoration(hintText: "Description"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  foregroundColor: Colors.white),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Exit")),
                          ElevatedButton(
                              onPressed: () async {
                                if (formkey.currentState!.validate()) {
                                  if (id == null) {
                                    await addItem();
                                  }
                                  if (id != null) {
                                    await updateItem(id);
                                  }
                                  setState(() {
                                    _titleController.text = " ";
                                    _descriptionController.text = " ";
                                  });
                                  Navigator.pop(context);
                                }
                              },
                              child: Text(id == null ? 'Create New' : 'Update'))
                        ],
                      )
                    ],
                  )),
            ));
  }

  String? formvalidator(String? value) {
    if (value!.isEmpty) {
      return null;
    }
  }

  //insert a new data for todo app
  Future<void> addItem() async {
    await DatabaseHelper.createItem(
        _titleController.text, _descriptionController.text);
    _refreshData();
  }

  //Update  Your data in your app
  Future<void> updateItem(int id) async {
    await DatabaseHelper.updateItem(
        id, _titleController.text, _descriptionController.text);
    _refreshData();
  }

  //Delete your data from your app
  void deleteItem(int id) async {
    await DatabaseHelper.deleteItem(id);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Your data has been deleted su"),
      backgroundColor: Colors.deepPurple,
    ));
    _refreshData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Offline DataBase"),
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : myData.isEmpty
              ? const Center(
                  child: Text("No data"),
                )
              : ListView.builder(
                  itemCount: myData.length,
                  itemBuilder: (context, index) => Card(
                        color: index % 2 == 0 ? Colors.amber : Colors.blue,
                        margin: EdgeInsets.all(15),
                        child: ListTile(
                          title: Text(myData[index]['title']),
                          subtitle: Text(myData[index]['description']),
                          trailing: SizedBox(
                            width: 100,
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () =>
                                        showMyForm(myData[index]['id']),
                                    icon: Icon(Icons.edit)),
                                IconButton(
                                    onPressed: () =>
                                        deleteItem(myData[index]['id']),
                                    icon: Icon(Icons.delete))
                              ],
                            ),
                          ),
                        ),
                      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showMyForm(null),
        child: Icon(Icons.add),
      ),
    );
  }
}
