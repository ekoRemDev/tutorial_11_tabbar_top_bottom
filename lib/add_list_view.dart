import 'package:flutter/material.dart';

class AddListView extends StatefulWidget {
    @override
    _AddListViewState createState() => _AddListViewState();
}

class _AddListViewState extends State<AddListView> {
    List<int> items = new List();

    @override
    void initState() {
        for (int i = 0; i < 50; i++) {
            items.add(i);
        }
        super.initState();
    }

    @override
    Widget build(BuildContext context) {
        // TODO: implement build
        return  ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                        title: Text('item number $index'),
                        trailing: Icon(Icons.add),
                    );
                });
    }


}
