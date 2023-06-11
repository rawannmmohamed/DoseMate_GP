import 'package:flutter/material.dart';

class Diet extends StatelessWidget {
  const Diet({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily Diet"),
        elevation: 10,
        backgroundColor: const Color.fromARGB(255, 23, 13, 72),
      ),
      body: Container(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 23, 13, 72),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            
          ), ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Mediterranean Anemia"),
                        content: SingleChildScrollView(
                          child: Column(
                            children: [
                              const Text("BREAKFAST:"
                                  "      Whole grain cereal with low-fat milk and mixed berries"),
                              const Text("Whole wheat toast with avocado and tomato"),
                              const Text(
                                  "Spinach and feta omelet with whole wheat toast"),
                              Image.network(
                                  "https://www.botanical-online.com/en/wp-content/uploads/Mediterranean_diet_pyramid.jpg"),
                              const Text("LUNCH:"),
                              const Text(
                                  "Grilled chicken salad with mixed greens and chickpeas"),
                              const Text(
                                  "Tuna salad with mixed greens and whole wheat crackers"),
                              const Text("Lentil soup with a side salad"),
                              Image.network(
                                  "https://ars.els-cdn.com/content/image/1-s2.0-S0735109720361131-fx1.jpg"),
                              const Text("DINNER:"),
                              const Text(
                                  "Grilled salmon with roasted vegetables and quinoa"),
                              const Text(
                                  "Baked chicken breast with sweet potato and steamed vegetables"),
                              const Text(
                                  "Beef stir-fry with mixed vegetables and brown rice"),
                              const Text("SNACKS:"),
                              const Text("Apple slices with almond butter"),
                              const Text("Greek yogurt with mixed berries and nuts"),
                              const Text("Sliced pear with low-fat cheese"),
                              Image.network(
                                  "https://cdn.xcode.life/wp-content/uploads/2023/02/thalassemia_minor_diet.png"),
                              const Text("Avoid:"),
                              Image.network(
                                  "https://media.istockphoto.com/id/674612468/vector/no-sign-icon-vector-transparent.jpg?s=612x612&w=0&k=20&c=A8zTjiZ5D6zm3DMtq1JyZbUU0MbSJbm10CQ-JrI78W8="),
                              const Text(
                                  "Calcium-rich foods, such as dairy products and fortified plant-based milks,Tea and coffee (in excess),Foods high in phytates, such as whole grains and legumes"),
                            ],

                          ),
                        ),
                        actions: <Widget>[
                          FloatingActionButton(
                            child: const Text("close"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    });
              },
              child: const Column(
                children: [
                 
                  Text('Mediterranean Anemia Diet'),
                  
                ],
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 23, 13, 72),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            
          ), ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Hypertension Diet"),
                        content: SingleChildScrollView(
                          child: Column(
                            children: [
                              const Text("BREAKFAST:"
                                  "     . Whole grain toast with avocado and a poached egg"),
                              const Text(".Greek yogurt with fresh fruit and nuts"),
                              const Text(".Oatmeal with cinnamon and fresh fruit"),
                              Image.network(
                                  "https://assets.lybrate.com/imgs/product/kwds/diet-chart/High-Blood-Pressure-Diet-Chart-v1.jpg"),
                              const Text("LUNCH:"),
                              const Text(
                                  ".Grilled chicken sandwich with mixed greens on whole wheat bread"),
                              const Text(".Vegetable soup with a side salad"),
                              const Text(
                                  ".Tuna salad with mixed greens and whole wheat crackers"),
                              Image.network(
                                  "https://cdn.shopify.com/s/files/1/0240/2749/6528/files/low-blood-pressure-food_480x480.jpg?v=1600947842"),
                              const Text("DINNER:"),
                              const Text(
                                  ".Grilled fish with steamed vegetables and quinoa"),
                              const Text(
                                  ".Chicken stir-fry with mixed vegetables and brown rice"),
                              const Text(".Lentil soup with a side salad"),
                              const Text("SNACKS:"),
                              const Text(".Sliced apple with natural peanut butter"),
                              const Text(".Air-popped popcorn"),
                              const Text(".Sliced pear with low-fat cheese"),
                              Image.network(
                                  "https://pbs.twimg.com/media/D9seFjPXoAAkdJO.jpg"),
                              const Text("Avoid:"),
                              Image.network(
                                  "https://media.istockphoto.com/id/674612468/vector/no-sign-icon-vector-transparent.jpg?s=612x612&w=0&k=20&c=A8zTjiZ5D6zm3DMtq1JyZbUU0MbSJbm10CQ-JrI78W8="),
                              const Text(
                                  "Foods high in sodium, including processed foods, canned foods, and salty snacks,Fried or greasy foods,Foods high in saturated and trans fats, such as fatty meats, butter, and full-fat dairy products,Foods high in added sugars, such as candy, soda, and juice"),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          FloatingActionButton(
                            child: const Text("close"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    });
              },
              child: const Column(
                children: [
                 
                  Text('Hypertension Diet'),
                ],
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 23, 13, 72),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            
          ), ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Hypercholesterolemia Diet"),
                        content: SingleChildScrollView(
                          child: Column(
                            children: [
                              const Text("BREAKFAST:"
                                  "     . Oatmeal with fresh fruit and nuts"),
                              const Text(".Low-fat yogurt with fresh fruit"),
                              const Text(
                                  ".Egg white omelet with vegetables and whole wheat toast"),
                              Image.network(
                                  "https://i.pinimg.com/550x/f8/c3/cf/f8c3cfe9eab7d1b29274e379cc35902b.jpg"),
                              const Text("LUNCH:"),
                              const Text(
                                  ".Grilled chicken breast on whole wheat bread with avocado, tomato, and lettuce"),
                              const Text(
                                  ".Tuna salad with mixed greens and whole wheat crackers"),
                              const Text(".Vegetable soup with a whole wheat roll"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNrb7gC8rTt35KTZpPMNTIjmRo57tIewRxxA&usqp=CAU"),
                              const Text("DINNER:"),
                              const Text(
                                  ".Grilled salmon with roasted vegetables and quinoa"),
                              const Text(
                                  ".Stir-fry vegetables with tofu and brown rice"),
                              const Text(
                                  ".Baked sweet potato with black beans and salsa"),
                              const Text("SNACKS:"),
                              const Text(".Apple slices with almond butter"),
                              const Text(".Handful of almonds"),
                              const Text(".Greek yogurt with fresh berries"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbwcQP0SLxD7WK_CW3-oSAL9icrISq20wCCQ&usqp=CAU"),
                              const Text("Avoid:"),
                              Image.network(
                                  "https://media.istockphoto.com/id/674612468/vector/no-sign-icon-vector-transparent.jpg?s=612x612&w=0&k=20&c=A8zTjiZ5D6zm3DMtq1JyZbUU0MbSJbm10CQ-JrI78W8="),
                              const Text(
                                  "Red meat ,Full-fat dairy products, whole milk, cheese, cream , Fried foods, Fast food Processed meats , sausages, hot dogs, bacon ,Snack foods , potato chips, cookies, cakes ,Butter and margarine, Coconut and palm oil")
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          FloatingActionButton(
                            child: const Text("close"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    });
              },
              child: const Column(
                children: [
                 
                  Text('Hypercholesterolemia Diet'),
                ],
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 23, 13, 72),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            
          ), ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Iron Deficiency Anemia"),
                        content: SingleChildScrollView(
                          child: Column(
                            children: [
                              const Text("BREAKFAST:"
                                  "     . Whole grain cereal with low-fat milk and mixed berries"),
                              const Text(
                                  ".Spinach and feta omelet with whole wheat toast"),
                              const Text(
                                  ".Peanut butter and banana smoothie with spinach"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtO-kv886PMVE8MPwbNtFoBCrIzFRszXfWbA&usqp=CAU"),
                              const Text("LUNCH:"),
                              const Text(
                                  ".Grilled chicken salad with spinach, mixed greens, and chickpeas"),
                              const Text(
                                  ".Tuna salad with mixed greens and whole wheat crackers"),
                              const Text(".Lentil soup with a side salad"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmHxZp0VLvAKx4YbL-oBMqFDmy6P92tOeV9g&usqp=CAU"),
                              const Text("DINNER:"),
                              const Text(
                                  ".Grilled salmon with roasted vegetables and quinoa"),
                              const Text(
                                  ".Beef stir-fry with mixed vegetables and brown rice"),
                              const Text(
                                  ".Baked chicken with sweet potato and steamed vegetables"),
                              const Text("SNACKS:"),
                              const Text(".Sliced pear with low-fat cheese"),
                              const Text(".Carrot sticks with hummus"),
                              const Text(".Hard-boiled egg"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0_VQbLzdzk8d3nnN0Qm6ZsuIOBeJf-SCdBw&usqp=CAU"),
                              const Text("Avoid:"),
                              Image.network(
                                  "https://media.istockphoto.com/id/674612468/vector/no-sign-icon-vector-transparent.jpg?s=612x612&w=0&k=20&c=A8zTjiZ5D6zm3DMtq1JyZbUU0MbSJbm10CQ-JrI78W8="),
                              const Text(
                                  "Coffee, tea, and other caffeinated drinks,Foods high in calcium, such as dairy products and calcium supplements,Foods high in fiber, such as whole grains and raw vegetables"),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          FloatingActionButton(
                            child: const Text("close"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    });
              },
              child: const Column(
                children: [
                 
                  Text('Iron Deficiency Anemia Diet'),
                ],
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 23, 13, 72),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            
          ), ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Jaudice Diet"),
                        content: SingleChildScrollView(
                          child: Column(
                            children: [
                              const Text("BREAKFAST:"
                                  "     . Whole grain toast with almond butter and sliced banana"),
                              const Text(
                                  ".Greek yogurt with mixed berries and granola"),
                              const Text(
                                  ".Oatmeal with chopped nuts and dried fruit"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScMEDYRv_Aj-rAqWy9aEgMkwiqvm_TnmCmSw&usqp=CAU"),
                              const Text("LUNCH:"),
                              const Text(
                                  ".Grilled chicken breast with roasted vegetables and quinoa"),
                              const Text(
                                  ".Tuna salad with mixed greens and whole wheat crackers"),
                              const Text(".Lentil soup with a side salad"),
                              Image.network(
                                  "https://cdn.tarladalal.com/td_cont_img/Jaundice-Recovery-Diet-1.jpg"),
                              const Text("DINNER:"),
                              const Text(
                                  ".Grilled salmon with steamed vegetables and brown rice"),
                              const Text(
                                  ".Baked chicken breast with sweet potato and spinach"),
                              const Text(
                                  ".Beef stir-fry with mixed vegetables and brown rice"),
                              const Text("SNACKS:"),
                              const Text(".Low-fat cheese with whole grain crackers"),
                              const Text(".Greek yogurt with mixed berries and nuts"),
                              const Text(".Sliced pear with low-fat cheese"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC-ZxpB-WHNyjA8MtAF1fpC6jxWYpvRLmMWw&usqp=CAU"),
                              const Text("Avoid:"),
                              Image.network(
                                  "https://media.istockphoto.com/id/674612468/vector/no-sign-icon-vector-transparent.jpg?s=612x612&w=0&k=20&c=A8zTjiZ5D6zm3DMtq1JyZbUU0MbSJbm10CQ-JrI78W8="),
                              const Text(
                                  "Dark leafy greens, such as spinach and kale,Cruciferous vegetables, such as broccoli and cauliflower,Berries, such as blueberries and raspberries,Nuts and seeds, especially walnuts and chia seeds,Whole grains, such as brown rice and quinoa"),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          FloatingActionButton(
                            child: const Text("close"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    });
              },
              child: const Column(
                children: [
               
                  Text('Jaundice Diet'),
                ],
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 23, 13, 72),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            
          ), ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Diabetes Diet"),
                        content: SingleChildScrollView(
                          child: Column(
                            children: [
                              const Text("BREAKFAST:"
                                  "     . small whole wheat bagel with 2 tablespoons of natural peanut butter"),
                              const Text(".small banana"),
                              const Text(".cup of black coffee or unsweetened tea"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFAKRMBav2nsggy5ssZZK2OjNxJaegAa-GIA&usqp=CAU"),
                              const Text("LUNCH:"),
                              const Text(
                                  ".Grilled chicken salad with mixed greens and vegetables"),
                              const Text(
                                  ".Tuna salad with mixed greens and whole wheat crackers"),
                              const Text(
                                  ".Turkey and cheese on whole wheat bread with a side salad"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1sKh7x7c9Czp_RvvwmFknwysJ5D_JE-Sn_g&usqp=CAU"),
                              const Text("DINNER:"),
                              const Text(".Vegetarian chili with a side salad"),
                              const Text(
                                  ".Baked chicken breast with roasted sweet potatoes and green beans"),
                              const Text(
                                  ".Grilled salmon with steamed vegetables and brown rice"),
                              const Text("SNACKS:"),
                              const Text(".Sliced pear with low-fat cheese"),
                              const Text(".Air-popped popcorn"),
                              const Text(".Sugar-free gelatin"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMoLFS0pXCLXhNtywrDWNTIKGpUDMlzIQHzw&usqp=CAU"),
                              const Text("Avoid:"),
                              Image.network(
                                  "https://media.istockphoto.com/id/674612468/vector/no-sign-icon-vector-transparent.jpg?s=612x612&w=0&k=20&c=A8zTjiZ5D6zm3DMtq1JyZbUU0MbSJbm10CQ-JrI78W8="),
                              const Text(
                                  "In general, individuals with diabetes should limit or avoid foods that are high in added sugars"),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          FloatingActionButton(
                            child: const Text("close"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    });
              },
              child: const Column(
                children: [
                
                  Text('Diabetes Diet'),
                ],
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 23, 13, 72),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            
          ), ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Fever Diet"),
                        content: SingleChildScrollView(
                          child: Column(
                            children: [
                              const Text("BREAKFAST:"
                                  "     . Whole grain toast with natural peanut butter and sliced banana"),
                              const Text(
                                  ".Greek yogurt with fresh fruit and granola"),
                              const Text(".Oatmeal with cinnamon and mixed berries"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgfknJcad3ItHYwIcTlIbjDQKHe8QSwGs2Hg&usqp=CAU"),
                              const Text("LUNCH:"),
                              const Text(
                                  ".Chicken noodle soup with whole grain crackers"),
                              const Text(
                                  ".Grilled cheese on whole wheat bread with a side of vegetable soup"),
                              const Text(
                                  "Tuna salad with mixed greens and whole wheat crackers"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7kfBPJMcr9GoVrYmhNH6t9vdfQFS_379Qhg&usqp=CAU"),
                              const Text("DINNER:"),
                              const Text(
                                  ".Baked salmon with steamed vegetables and brown rice"),
                              const Text(
                                  ".Chicken stir-fry with mixed vegetables and quinoa"),
                              const Text(".Lentil soup with a side salad"),
                              const Text("SNACKS:"),
                              const Text(".Sliced pear with low-fat cheese"),
                              const Text(".Air-popped popcorn"),
                              const Text(".Low-fat yogurt with fresh fruit"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGBqa10LBhI4Wo4nk0UumBtwqI_v7MFK--PQ&usqp=CAU"),
                              const Text("Avoid:"),
                              Image.network(
                                  "https://media.istockphoto.com/id/674612468/vector/no-sign-icon-vector-transparent.jpg?s=612x612&w=0&k=20&c=A8zTjiZ5D6zm3DMtq1JyZbUU0MbSJbm10CQ-JrI78W8="),
                              const Text(
                                  "It's important to avoid foods that may worsen your cold symptoms or cause digestive upset, such as:Foods high in added sugars ,Fried or greasy foods,Alcohol"),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          FloatingActionButton(
                            child: const Text("close"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    });
              },
              child: const Column(
                children: [
               
                  Text('Fever diet'),
                ],
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 23, 13, 72),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            
          ), ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Lactose Intolerance Diet"),
                        content: SingleChildScrollView(
                          child: Column(
                            children: [
                              const Text("BREAKFAST:"
                                  "     . Oatmeal made with non-dairy milk and topped with berries and nuts"),
                              const Text(
                                  ".Toast with peanut butter or almond butter"),
                              const Text(
                                  ".Smoothie made with non-dairy milk, frozen fruit, and a scoop of plant-based protein powder"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRbFSoYUk9lcCrAYqFdXDk822u8Y8blozQfA&usqp=CAU"),
                              const Text("LUNCH:"),
                              const Text(
                                  ".Salad with mixed greens, grilled chicken, avocado, and a vinaigrette dressing"),
                              const Text(".Lentil soup made with non-dairy milk"),
                              const Text(
                                  ".Veggie burger with a side of sweet potato fries"),
                              Image.network(
                                  "https://i.ytimg.com/vi/hsV3MokIzoM/maxresdefault.jpg"),
                              const Text("DINNER:"),
                              const Text(
                                  ".Grilled salmon with quinoa and roasted vegetables"),
                              const Text(
                                  ".Stir-fry made with tofu, mixed vegetables, and gluten-free soy sauce"),
                              const Text(
                                  ".Baked sweet potato topped with black beans, salsa, and avocado"),
                              const Text("SNACKS:"),
                              const Text(".Rice crackers with guacamole"),
                              const Text(
                                  ".Trail mix made with nuts, seeds, and dried fruit"),
                              const Text(".Apple slices with almond butter"),
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL9BT8V5wC8AcoNEJVDRXuZYLEYibArMhTpw&usqp=CAU"),
                              const Text("Avoid:"),
                              Image.network(
                                  "https://media.istockphoto.com/id/674612468/vector/no-sign-icon-vector-transparent.jpg?s=612x612&w=0&k=20&c=A8zTjiZ5D6zm3DMtq1JyZbUU0MbSJbm10CQ-JrI78W8="),
                              const Text(
                                  "Dairy products,Processed foods,Cream-based sauces and soups,Protein bars and shakes,Certain medications: Some medications contain lactose as a filler or binding agent"),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          FloatingActionButton(
                            child: const Text("close"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    });
              },
              child: const Column(
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
