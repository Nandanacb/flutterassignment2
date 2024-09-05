import 'package:flutter/material.dart';

class FoodExample extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    List<Map> myBreakfastList=[
      {
         "image":"assets/images/mush.jpeg",
         "name":"Mushroom Sauce",
         "quantity":"24oz",
         "price":"8,92",
        

      },
      {
         "image":"assets/images/geeto1.jpeg",
         "name":"Gheeto Gastro",
         "quantity":"1 kg",
        "price":"20,72",
        
        
      },
      {
         "image":"assets/images/avacado.jpeg",
         "name":"Seasoned Avacado",
        "quantity":"0.5 kg",
         "price":"4,29",
        
        
      },
      {
         "image":"assets/images/eggs.jpeg",
         "name":"6 Pieces eggs",
        "quantity":"6 piece",
        "price":"6,93",
        
        
      },
      {
         "image":"assets/images/cupcakeicecream.jpeg",
         "name":"Cupcake",
        "quantity":"2 kg",
        "price":"34,69",
        
        
      },
      {
         "image":"assets/images/dryfruits.jpeg",
         "name":"Dry Fruits",
        "quantity":"3 kg",
        "price":"5,78",
        
        
      },
    ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 239, 239),

      appBar: AppBar(
      
        actions: [
          TextButton(onPressed: (){}, child: Text("Back",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green))),
          Spacer(),
          TextButton(onPressed: (){}, child: Text("Items",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black))),
          Spacer(),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag),iconSize: 30),
      
      
      
        ],
      ),
      
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Row(
               children: [
                Text("Snacks",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold,color:  const Color.fromARGB(255, 211, 209, 209))),
                Spacer(),
                Text("Breakfast",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold,color:  Colors.black)),
                Spacer(),
                Text("Lunch",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold,color:  const Color.fromARGB(255, 204, 202, 202))),
                  
                  
               ],
            ),
          ),


          Expanded(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing:2,crossAxisSpacing: 2,childAspectRatio: .7),
             itemCount: 6,
             itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  
                  decoration: BoxDecoration(borderRadius:BorderRadius.circular(15),color:  Colors.white60,),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(myBreakfastList[index]["image"]))),
                        height: 160,
                        width: double.infinity,
                      ),
                      
                      
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                        
                          children: [ 
                        Text(myBreakfastList[index]["name"],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                           ]),
                      ),
                      
                  
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          
                          children: [
                            Text(myBreakfastList[index]["quantity"],style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.grey)),
                          ],),
                       ),
                        
                      
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                                                    
                               children: [
                                 Text("\$${myBreakfastList[index]["price"]}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                 Spacer(),
                               
                             CircleAvatar(
                                  radius: 15,
                                 backgroundColor: Colors.black,
                                  child: Text("+",style: TextStyle(fontSize: 20,color: Colors.white)),
                                  ),
                                           ],
                                         ),
                          ),
                    ],
                  ),
                    
                ),
              );
            
             }),
          ),
      
      ],
          ),
        
      );
    
  }
}
      
      


















