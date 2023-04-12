import 'package:flutter/material.dart';
import 'package:flutter_kart/product_controller.dart';

class ProductCreate extends StatefulWidget {
  final Function addProduct;

  ProductCreate(this.addProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductCreateState();
  }
}

class _ProductCreateState extends State<ProductCreate> {
  String title;
  String description;
  double price;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25.0),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
                // hintText: 'Enter your product title',
                labelText: 'Product Title'),
            onChanged: (String value) {
              setState(() {
                title = value;
              });
            },
          ),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
                // hintText: 'Enter your product description',
                labelText: 'Title'),
            onChanged: (String value) {
              setState(() {
                description = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Product Price',
              // hintText: '0.0'
            ),
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            onChanged: (String value) {
              setState(() {
               price = double.parse(value);
              });
            },
          ),
          SizedBox(
            height: 20,
          ),
          // RaisedButton(onPressed: () {
          //   FocusScope.of(context).requestFocus(new FocusNode());
          // },),
          ProductController(widget.addProduct, {
            'title' : title,
            'description' : description,
            'price' : price.toString()
          }),
        ],
      ),
    );
  }
}

// child: RaisedButton(
//   child: Text('Show Dialog'),
//   onPressed: () {
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: Text('Are you sure ?'),
//             content: Text('The action is non recoverable.'),
//             actions: <Widget>[
//               FlatButton(
//                 child: Text('No'),
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//               ),
//               FlatButton(
//                 child: Text('Yes, Delete.'),
//                 onPressed: () {
//                   Navigator.pop(context);
//                   // add your action here .
//                 },
//               )
//             ],
//           );
//         });
//   },
// ),
