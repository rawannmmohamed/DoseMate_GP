import 'package:flutter/material.dart';

class Diet extends StatelessWidget {
  const Diet({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daily Diet"),
        elevation: 10,
        backgroundColor: Color.fromARGB(255, 23, 13, 72),
      ),
      body: Container(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 23, 13, 72),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            
          ), ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Mediterranean Anemia"),
                        content: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text("BREAKFAST:"
                                  "      Whole grain cereal with low-fat milk and mixed berries"),
                              Text("Whole wheat toast with avocado and tomato"),
                              Text(
                                  "Spinach and feta omelet with whole wheat toast"),
                              Image.network(
                                  "https://www.botanical-online.com/en/wp-content/uploads/Mediterranean_diet_pyramid.jpg"),
                              Text("LUNCH:"),
                              Text(
                                  "Grilled chicken salad with mixed greens and chickpeas"),
                              Text(
                                  "Tuna salad with mixed greens and whole wheat crackers"),
                              Text("Lentil soup with a side salad"),
                              Image.network(
                                  "https://ars.els-cdn.com/content/image/1-s2.0-S0735109720361131-fx1.jpg"),
                              Text("DINNER:"),
                              Text(
                                  "Grilled salmon with roasted vegetables and quinoa"),
                              Text(
                                  "Baked chicken breast with sweet potato and steamed vegetables"),
                              Text(
                                  "Beef stir-fry with mixed vegetables and brown rice"),
                              Text("SNACKS:"),
                              Text("Apple slices with almond butter"),
                              Text("Greek yogurt with mixed berries and nuts"),
                              Text("Sliced pear with low-fat cheese"),
                              Image.network(
                                  "https://cdn.xcode.life/wp-content/uploads/2023/02/thalassemia_minor_diet.png"),
                              Text("Avoid:"),
                              Image.network(
                                  "https://media.istockphoto.com/id/674612468/vector/no-sign-icon-vector-transparent.jpg?s=612x612&w=0&k=20&c=A8zTjiZ5D6zm3DMtq1JyZbUU0MbSJbm10CQ-JrI78W8="),
                              Text(
                                  "Calcium-rich foods, such as dairy products and fortified plant-based milks,Tea and coffee (in excess),Foods high in phytates, such as whole grains and legumes"),
                            ],

                          ),
                        ),
                        actions: <Widget>[
                          FloatingActionButton(
                            child: Text("close"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    });
              },
              child: Column(
                children: [
                 
                  Text('Mediterranean Anemia Diet'),
                  
                ],
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 23, 13, 72),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            
          ), ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Hypertension Diet"),
                        content: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text("BREAKFAST:"
                                  "     . Whole grain toast with avocado and a poached egg"),
                              Text(".Greek yogurt with fresh fruit and nuts"),
                              Text(".Oatmeal with cinnamon and fresh fruit"),
                              Image.network(
                                  "https://assets.lybrate.com/imgs/product/kwds/diet-chart/High-Blood-Pressure-Diet-Chart-v1.jpg"),
                              Text("LUNCH:"),
                              Text(
                                  ".Grilled chicken sandwich with mixed greens on whole wheat bread"),
                              Text(".Vegetable soup with a side salad"),
                              Text(
                                  ".Tuna salad with mixed greens and whole wheat crackers"),
                              Image.network(
                                  "https://cdn.shopify.com/s/files/1/0240/2749/6528/files/low-blood-pressure-food_480x480.jpg?v=1600947842"),
                              Text("DINNER:"),
                              Text(
                                  ".Grilled fish with steamed vegetables and quinoa"),
                              Text(
                                  ".Chicken stir-fry with mixed vegetables and brown rice"),
                              Text(".Lentil soup with a side salad"),
                              Text("SNACKS:"),
                              Text(".Sliced apple with natural peanut butter"),
                              Text(".Air-popped popcorn"),
                              Text(".Sliced pear with low-fat cheese"),
                              Image.network(
                                  "https://pbs.twimg.com/media/D9seFjPXoAAkdJO.jpg"),
                              Text("Avoid:"),
                              Image.network(
                                  "https://media.istockphoto.com/id/674612468/vector/no-sign-icon-vector-transparent.jpg?s=612x612&w=0&k=20&c=A8zTjiZ5D6zm3DMtq1JyZbUU0MbSJbm10CQ-JrI78W8="),
                              Text(
                                  "Foods high in sodium, including processed foods, canned foods, and salty snacks,Fried or greasy foods,Foods high in saturated and trans fats, such as fatty meats, butter, and full-fat dairy products,Foods high in added sugars, such as candy, soda, and juice"),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          FloatingActionButton(
                            child: Text("close"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    });
              },
              child: Column(
                children: [
                 
                  Text('Hypertension Diet'),
                ],
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 23, 13, 72),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            
          ), ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Hypercholesterolemia Diet"),
                        content: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text("BREAKFAST:"
                                  "     . Oatmeal with fresh fruit and nuts"),
                              Text(".Low-fat yogurt with fresh fruit"),
                              Text(
                                  ".Egg white omelet with vegetables and whole wheat toast"),
                              Image.network(
                                  "https://i.pinimg.com/550x/f8/c3/cf/f8c3cfe9eab7d1b29274e379cc35902b.jpg"),
                              Text("LUNCH:"),
                              Text(
                                  ".Grilled chicken breast on whole wheat bread with avocado, tomato, and lettuce"),
                              Text(
                                  ".Tuna salad with mixed greens and whole wheat crackers"),
                              Text(".Vegetable soup with a whole wheat roll"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNrb7gC8rTt35KTZpPMNTIjmRo57tIewRxxA&usqp=CAU"),
                              Text("DINNER:"),
                              Text(
                                  ".Grilled salmon with roasted vegetables and quinoa"),
                              Text(
                                  ".Stir-fry vegetables with tofu and brown rice"),
                              Text(
                                  ".Baked sweet potato with black beans and salsa"),
                              Text("SNACKS:"),
                              Text(".Apple slices with almond butter"),
                              Text(".Handful of almonds"),
                              Text(".Greek yogurt with fresh berries"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbwcQP0SLxD7WK_CW3-oSAL9icrISq20wCCQ&usqp=CAU"),
                              Text("Avoid:"),
                              Image.network(
                                  "https://media.istockphoto.com/id/674612468/vector/no-sign-icon-vector-transparent.jpg?s=612x612&w=0&k=20&c=A8zTjiZ5D6zm3DMtq1JyZbUU0MbSJbm10CQ-JrI78W8="),
                              Text(
                                  "Red meat ,Full-fat dairy products, whole milk, cheese, cream , Fried foods, Fast food Processed meats , sausages, hot dogs, bacon ,Snack foods , potato chips, cookies, cakes ,Butter and margarine, Coconut and palm oil")
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          FloatingActionButton(
                            child: Text("close"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    });
              },
              child: Column(
                children: [
                 
                  Text('Hypercholesterolemia Diet'),
                ],
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 23, 13, 72),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            
          ), ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Iron Deficiency Anemia"),
                        content: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text("BREAKFAST:"
                                  "     . Whole grain cereal with low-fat milk and mixed berries"),
                              Text(
                                  ".Spinach and feta omelet with whole wheat toast"),
                              Text(
                                  ".Peanut butter and banana smoothie with spinach"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtO-kv886PMVE8MPwbNtFoBCrIzFRszXfWbA&usqp=CAU"),
                              Text("LUNCH:"),
                              Text(
                                  ".Grilled chicken salad with spinach, mixed greens, and chickpeas"),
                              Text(
                                  ".Tuna salad with mixed greens and whole wheat crackers"),
                              Text(".Lentil soup with a side salad"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmHxZp0VLvAKx4YbL-oBMqFDmy6P92tOeV9g&usqp=CAU"),
                              Text("DINNER:"),
                              Text(
                                  ".Grilled salmon with roasted vegetables and quinoa"),
                              Text(
                                  ".Beef stir-fry with mixed vegetables and brown rice"),
                              Text(
                                  ".Baked chicken with sweet potato and steamed vegetables"),
                              Text("SNACKS:"),
                              Text(".Sliced pear with low-fat cheese"),
                              Text(".Carrot sticks with hummus"),
                              Text(".Hard-boiled egg"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0_VQbLzdzk8d3nnN0Qm6ZsuIOBeJf-SCdBw&usqp=CAU"),
                              Text("Avoid:"),
                              Image.network(
                                  "https://media.istockphoto.com/id/674612468/vector/no-sign-icon-vector-transparent.jpg?s=612x612&w=0&k=20&c=A8zTjiZ5D6zm3DMtq1JyZbUU0MbSJbm10CQ-JrI78W8="),
                              Text(
                                  "Coffee, tea, and other caffeinated drinks,Foods high in calcium, such as dairy products and calcium supplements,Foods high in fiber, such as whole grains and raw vegetables"),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          FloatingActionButton(
                            child: Text("close"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    });
              },
              child: Column(
                children: [
                 
                  Text('Iron Deficiency Anemia Diet'),
                ],
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 23, 13, 72),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            
          ), ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Jaudice Diet"),
                        content: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text("BREAKFAST:"
                                  "     . Whole grain toast with almond butter and sliced banana"),
                              Text(
                                  ".Greek yogurt with mixed berries and granola"),
                              Text(
                                  ".Oatmeal with chopped nuts and dried fruit"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScMEDYRv_Aj-rAqWy9aEgMkwiqvm_TnmCmSw&usqp=CAU"),
                              Text("LUNCH:"),
                              Text(
                                  ".Grilled chicken breast with roasted vegetables and quinoa"),
                              Text(
                                  ".Tuna salad with mixed greens and whole wheat crackers"),
                              Text(".Lentil soup with a side salad"),
                              Image.network(
                                  "https://cdn.tarladalal.com/td_cont_img/Jaundice-Recovery-Diet-1.jpg"),
                              Text("DINNER:"),
                              Text(
                                  ".Grilled salmon with steamed vegetables and brown rice"),
                              Text(
                                  ".Baked chicken breast with sweet potato and spinach"),
                              Text(
                                  ".Beef stir-fry with mixed vegetables and brown rice"),
                              Text("SNACKS:"),
                              Text(".Low-fat cheese with whole grain crackers"),
                              Text(".Greek yogurt with mixed berries and nuts"),
                              Text(".Sliced pear with low-fat cheese"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC-ZxpB-WHNyjA8MtAF1fpC6jxWYpvRLmMWw&usqp=CAU"),
                              Text("Avoid:"),
                              Image.network(
                                  "https://media.istockphoto.com/id/674612468/vector/no-sign-icon-vector-transparent.jpg?s=612x612&w=0&k=20&c=A8zTjiZ5D6zm3DMtq1JyZbUU0MbSJbm10CQ-JrI78W8="),
                              Text(
                                  "Dark leafy greens, such as spinach and kale,Cruciferous vegetables, such as broccoli and cauliflower,Berries, such as blueberries and raspberries,Nuts and seeds, especially walnuts and chia seeds,Whole grains, such as brown rice and quinoa"),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          FloatingActionButton(
                            child: Text("close"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    });
              },
              child: Column(
                children: [
               
                  Text('Jaundice Diet'),
                ],
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 23, 13, 72),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            
          ), ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Diabetes Diet"),
                        content: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text("BREAKFAST:"
                                  "     . small whole wheat bagel with 2 tablespoons of natural peanut butter"),
                              Text(".small banana"),
                              Text(".cup of black coffee or unsweetened tea"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFAKRMBav2nsggy5ssZZK2OjNxJaegAa-GIA&usqp=CAU"),
                              Text("LUNCH:"),
                              Text(
                                  ".Grilled chicken salad with mixed greens and vegetables"),
                              Text(
                                  ".Tuna salad with mixed greens and whole wheat crackers"),
                              Text(
                                  ".Turkey and cheese on whole wheat bread with a side salad"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1sKh7x7c9Czp_RvvwmFknwysJ5D_JE-Sn_g&usqp=CAU"),
                              Text("DINNER:"),
                              Text(".Vegetarian chili with a side salad"),
                              Text(
                                  ".Baked chicken breast with roasted sweet potatoes and green beans"),
                              Text(
                                  ".Grilled salmon with steamed vegetables and brown rice"),
                              Text("SNACKS:"),
                              Text(".Sliced pear with low-fat cheese"),
                              Text(".Air-popped popcorn"),
                              Text(".Sugar-free gelatin"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMoLFS0pXCLXhNtywrDWNTIKGpUDMlzIQHzw&usqp=CAU"),
                              Text("Avoid:"),
                              Image.network(
                                  "https://media.istockphoto.com/id/674612468/vector/no-sign-icon-vector-transparent.jpg?s=612x612&w=0&k=20&c=A8zTjiZ5D6zm3DMtq1JyZbUU0MbSJbm10CQ-JrI78W8="),
                              Text(
                                  "In general, individuals with diabetes should limit or avoid foods that are high in added sugars"),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          FloatingActionButton(
                            child: Text("close"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    });
              },
              child: Column(
                children: [
                
                  Text('Diabetes Diet'),
                ],
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 23, 13, 72),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            
          ), ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Fever Diet"),
                        content: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text("BREAKFAST:"
                                  "     . Whole grain toast with natural peanut butter and sliced banana"),
                              Text(
                                  ".Greek yogurt with fresh fruit and granola"),
                              Text(".Oatmeal with cinnamon and mixed berries"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgfknJcad3ItHYwIcTlIbjDQKHe8QSwGs2Hg&usqp=CAU"),
                              Text("LUNCH:"),
                              Text(
                                  ".Chicken noodle soup with whole grain crackers"),
                              Text(
                                  ".Grilled cheese on whole wheat bread with a side of vegetable soup"),
                              Text(
                                  "Tuna salad with mixed greens and whole wheat crackers"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7kfBPJMcr9GoVrYmhNH6t9vdfQFS_379Qhg&usqp=CAU"),
                              Text("DINNER:"),
                              Text(
                                  ".Baked salmon with steamed vegetables and brown rice"),
                              Text(
                                  ".Chicken stir-fry with mixed vegetables and quinoa"),
                              Text(".Lentil soup with a side salad"),
                              Text("SNACKS:"),
                              Text(".Sliced pear with low-fat cheese"),
                              Text(".Air-popped popcorn"),
                              Text(".Low-fat yogurt with fresh fruit"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGBqa10LBhI4Wo4nk0UumBtwqI_v7MFK--PQ&usqp=CAU"),
                              Text("Avoid:"),
                              Image.network(
                                  "https://media.istockphoto.com/id/674612468/vector/no-sign-icon-vector-transparent.jpg?s=612x612&w=0&k=20&c=A8zTjiZ5D6zm3DMtq1JyZbUU0MbSJbm10CQ-JrI78W8="),
                              Text(
                                  "It's important to avoid foods that may worsen your cold symptoms or cause digestive upset, such as:Foods high in added sugars ,Fried or greasy foods,Alcohol"),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          FloatingActionButton(
                            child: Text("close"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    });
              },
              child: Column(
                children: [
               
                  Text('Fever diet'),
                ],
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 23, 13, 72),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            
          ), ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Lactose Intolerance Diet"),
                        content: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text("BREAKFAST:"
                                  "     . Oatmeal made with non-dairy milk and topped with berries and nuts"),
                              Text(
                                  ".Toast with peanut butter or almond butter"),
                              Text(
                                  ".Smoothie made with non-dairy milk, frozen fruit, and a scoop of plant-based protein powder"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRbFSoYUk9lcCrAYqFdXDk822u8Y8blozQfA&usqp=CAU"),
                              Text("LUNCH:"),
                              Text(
                                  ".Salad with mixed greens, grilled chicken, avocado, and a vinaigrette dressing"),
                              Text(".Lentil soup made with non-dairy milk"),
                              Text(
                                  ".Veggie burger with a side of sweet potato fries"),
                              Image.network(
                                  "https://i.ytimg.com/vi/hsV3MokIzoM/maxresdefault.jpg"),
                              Text("DINNER:"),
                              Text(
                                  ".Grilled salmon with quinoa and roasted vegetables"),
                              Text(
                                  ".Stir-fry made with tofu, mixed vegetables, and gluten-free soy sauce"),
                              Text(
                                  ".Baked sweet potato topped with black beans, salsa, and avocado"),
                              Text("SNACKS:"),
                              Text(".Rice crackers with guacamole"),
                              Text(
                                  ".Trail mix made with nuts, seeds, and dried fruit"),
                              Text(".Apple slices with almond butter"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL9BT8V5wC8AcoNEJVDRXuZYLEYibArMhTpw&usqp=CAU"),
                              Text("Avoid:"),
                              Image.network(
                                  "https://media.istockphoto.com/id/674612468/vector/no-sign-icon-vector-transparent.jpg?s=612x612&w=0&k=20&c=A8zTjiZ5D6zm3DMtq1JyZbUU0MbSJbm10CQ-JrI78W8="),
                              Text(
                                  "Dairy products,Processed foods,Cream-based sauces and soups,Protein bars and shakes,Certain medications: Some medications contain lactose as a filler or binding agent"),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          FloatingActionButton(
                            child: Text("close"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    });
              },
              child: Column(
                children: [
                 
                  Text('lactose intolerance Diet'),
                ],
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
