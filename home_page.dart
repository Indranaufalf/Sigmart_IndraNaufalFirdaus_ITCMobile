import 'package:flutter/material.dart';
import 'package:project_itc/product/product_satu.dart';
import 'package:project_itc/product/product_dua.dart';
import 'package:project_itc/product/product_tiga.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls = [
      'https://i.pinimg.com/736x/d9/b9/60/d9b96068debc3e5c010e760f1d2389ac.jpg',
      'https://i.pinimg.com/474x/bc/19/15/bc191541db4ed824cbd9b7330dd6f88c.jpg',
      'https://www.shutterstock.com/image-vector/buy-1-get-free-sale-600nw-2504061537.jpg',
    ];

    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Sigmart",
                style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.w900),
              ),
              Column(
                children: [
                  Icon(Icons.shopping_basket_outlined),
                ],
              )
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  String url = imageUrls[index % imageUrls.length];
                  return Container(
                    width: 350,
                    margin: const EdgeInsets.all(5),
                    child: Image.network(
                      url,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            
            TabBar(
              tabs: [
                Tab(text: 'Fresh Products'),
                Tab(text: 'Foods'),
                Tab(text: 'Drinks'),
              ],
              indicatorColor: Colors.black,
              labelColor: Colors.black,
            ),

            Expanded(
              child: TabBarView(
                children: [
                  Center(
                    child: GridView.builder(
                      padding: EdgeInsets.all(8.0),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: 3/4.5),
                        itemCount: productsatu.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,width: 1.5),
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Column(
                                  children: [
                                      SizedBox(
                                        height: 150,
                                        width: 150,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.network(productsatu[index].gambar.toString(),
                                          fit: BoxFit.cover,),
                                        ),
                                      ),
                                    Text(productsatu[index].nama.toString(),
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w900
                                    ),),
                                    Text(productsatu[index].harga.toString(),
                                    style: TextStyle(
                                    height: 2,
                                      color: Colors.black.withAlpha(125)
                                    ),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(content: Text("Masuk Keranjang")),
                                          );},
                                          child: CircleAvatar(
                                            radius: 20,
                                            foregroundColor: Colors.white,
                                            backgroundColor: Colors.black,
                                          child: Icon(Icons.add),),
                                        ),
                                      ],
                                    )
                                  ],
                                  ),
                              ),),
                          ); 
                        },
              ),
            ),
                  Center(
                    child: GridView.builder(
                      padding: EdgeInsets.all(8.0),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: 3/4.5),
                        itemCount: productdua.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,width: 1.5),
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Column(
                                  children: [
                                      SizedBox(
                                        height: 150,
                                        width: 150,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.network(productdua[index].gambar.toString(),
                                          fit: BoxFit.cover,),
                                        ),
                                      ),
                                    Text(productdua[index].nama.toString(),
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w900
                                    ),),
                                    Text(productdua[index].harga.toString(),
                                    style: TextStyle(
                                    height: 2,
                                      color: Colors.black.withAlpha(125)
                                    ),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(content: Text("Masuk Keranjang")),
                                          );},
                                          child: CircleAvatar(
                                            radius: 20,
                                            foregroundColor: Colors.white,
                                            backgroundColor: Colors.black,
                                          child: Icon(Icons.add),),
                                        ),
                                      ],
                                    )
                                  ],
                                  ),
                              ),),
                          ); 
                        },
              ),
            ),
                  Center(
                    child: GridView.builder(
                      padding: EdgeInsets.all(8.0),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: 3/4.5),
                        itemCount: producttiga.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,width: 1.5),
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Column(
                                  children: [
                                      SizedBox(
                                        height: 150,
                                        width: 150,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.network(producttiga[index].gambar.toString(),
                                          fit: BoxFit.cover,),
                                        ),
                                      ),
                                    Text(producttiga[index].nama.toString(),
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w900
                                    ),),
                                    Text(producttiga[index].harga.toString(),
                                    style: TextStyle(
                                    height: 2,
                                      color: Colors.black.withAlpha(125)
                                    ),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(content: Text("Masuk Keranjang")),
                                          );},
                                          child: CircleAvatar(
                                            radius: 20,
                                            foregroundColor: Colors.white,
                                            backgroundColor: Colors.black,
                                          child: Icon(Icons.add),),
                                        ),
                                      ],
                                    )
                                  ],
                                  ),
                              ),),
                          ); 
                        },
              ),
            ),
          ],
        ),
      ),
  ]),),);
  }
}