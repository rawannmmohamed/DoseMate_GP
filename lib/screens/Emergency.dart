import 'package:flutter/material.dart';

class Emergency extends StatelessWidget {
  const Emergency({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 23, 13, 72) ,
        title: Text("Emergency"),
      ),
      body: ListView(padding: const EdgeInsets.all(20), children: <Widget>[
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
                    title: Text("Instructions for Burning cases"),
                    content: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text("To beat burns, follow these steps:"
                              "      1: cool the burn, hold the burned area under cool ( not cool) running water or apply a cool, wet compress until the pain eases"),
                          Image(
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiFr9Bsv5x5P2nmrv6cCvUBmRueLsx-GD22Q&usqp=CAU')),
                          Text("2.Remove rings or other tight items."),
                          Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQkX-nHxX0ghEDgBt07sOSdrVLOUVCdOFSVQ&usqp=CAU"),
                          Text("3.Don't break blisters."),
                          Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjG9fwRLxQ6lyQJr38PMF8ahi7IjD3o9E3pg&usqp=CAU"),
                          Text("4.Apply lotion."),
                          Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDdlPTyLcc2NdhqwJxphpZJwXyeNvTc_Pfvg&usqp=CAU"),
                          Text("5.Bandage the burn."),
                          Image.network(
                              "https://www.thefloodlawfirm.com/wp-content/uploads/2018/07/hand-bandage.jpg"),
                          Text("6.Take a pain reliever."),
                          Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA8c-N_s8cxs0fU0SpyTaTRuKShHsaodAlUA&usqp=CAU"),
                          Text("7.Consider a tetanus shot"),
                          Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSvfpbqlOwHOhoZZJjNLrzstyusaKRgZ74kQ&usqp=CAU"),
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
              
              Text('Burning case'),
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
                    title: Text("Instructions for wound cases"),
                    content: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text("Step 1: Wash Your Hands Clean."),
                          Image(
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmWP2ABlrvFSmsavLC8dDbI8jEMiM3d0iIIA&usqp=CAU')),
                          Text("Step 2:Stop the Bleeding."),
                          Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj0cJHvAhsZz8LOUXc94MnHjWMO6MqlvrPWA&usqp=CAU"),
                          Text("Step 3:Clean the Wound."),
                          Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4UrZegME7gufhD8ufuzfInIiDHYUM3nEWpA&usqp=CAU"),
                          Text("Step4:Apply Antibacterial Ointment."),
                          Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVQiFH3fI_XxhvHfkwR4_BN6_MNnH7ZYH3Kg&usqp=CAU"),
                          Text("step 5:Protect the Wound."),
                          Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7ZG9I4aeTSNae3qvIon_dyPD2Gmv-3P3POA&usqp=CAU"),
                          Text("Step 6:Change the Dressing."),
                          Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0bedwosZ24yt2LI0-wWa_iBEWG8Imjh1tFQ&usqp=CAU"),
                          Text("Step 7: Observe Symptoms"),
                          Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZw09ge7m96y8eMTr6tj1RT1175-duE54NuQ&usqp=CAU"),
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
             
              Text('wound case'),
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
                    title: Text("Instructions for Fever Case"),
                    content: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text("1.Rest"),
                          Text("2.Drink plenty of fluids to stay hydrated."),
                          Text("3.Dress in lightweight clothing."),
                          Text(
                              "4.Use a light blanket if you feel chilled, until the chills end"),
                          Text(
                              "5.Call the doctor if the fever is accompanied by a severe headache,shortness of breath"),
                          Text("6.If you're uncomfortable, take acetaminophen"),
                          Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB3pBLJQ-pM5AtaKQrvNQrdm_vxt92ckmEoQ&usqp=CAU"),
                          Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwdXRcxYRbhMADmsV_J-P8GyrwU-scgQ-6cg&usqp=CAU"),
                          Image.network(
                              "https://images.prismic.io/gohealth/9504987c-e2f2-4bf5-a35f-be737cba5698_GoHealth+-+Baby+Fever+Temperature+Chart+%281%291024_1.jpg?auto=compress,format"),
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
             
              Text('fever case'),
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
                    title: Text("Instructions for hypertensive cases"),
                    content: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text(
                              "1.Lose extra pounds and watch your waistline. Blood pressure often increases as weight increases. "),
                          Image(
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHD5pN37Xjg8Mnw0sZI8Yoaefid0VutP8XLA&usqp=CAU')),
                          Text("2.Eat a healthy diet."),
                          Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRV-mcyVBMV1htcYipZlbPoeRaSMPf30vxGWQ&usqp=CAU"),
                          Text("3.Reduce salt (sodium) in your diet."),
                          Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6DsNR4vz0KEP7CiFd7G3WJzYzkoBiG7SCiA&usqp=CAU"),
                          Text("4.Limit alcohol. "),
                          Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEFhnndaB9lgQTJ2kScmiGnceY65aQH4uhPg&usqp=CAU"),
                          Text("5.Get a good night's sleep."),
                          Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXKbEU5yZhWw4hkDPvqrNU1h0RKAWGXItm5w&usqp=CAU"),
                          Text("6.Reduce stress.."),
                          Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1UeTAHMLw-uPgC6tGJuS2Tvs3zsv6RgoaBg&usqp=CAU"),
                          Text(
                              "7.Monitor your blood pressure at home and get regular checkups."),
                          Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTan-iS9eYIj5NcmmXLO2QufTSPR7tu1oDHbA&usqp=CAU"),
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
             
              Text('hypertensive case'),
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
                    title: Text("Instructions for hyperglycemic cases"),
                    content: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text(
                              "1.Get physical. Regular exercise is often an effective way to control blood sugar."),
                          Image(
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLVrt6YS0zve-jCnUMJ04pKPnkA4Y8DBoj6w&usqp=CAU')),
                          Text("2.Take your medication as directed."),
                          Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5qsXZSRNTOE3ED4fbzBZIyJKvoaUgBuAa7g&usqp=CAU"),
                          Text("3.Follow your diabetes eating plan."),
                          Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc3iqQHA51FenaCtzPDsAGjR-Yz-1sxeEgGuJ7OFko2SEk-GHUOEpSR3yzEbgw2FfnrBo&usqp=CAU"),
                          Text("4.Check your blood sugar. ... "),
                          Text("5.Adjust your insulin doses"),
                          Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT127Bl8Mz07cI0joQ0taxjnetZiQiIWRGffg&usqp=CAU"),
                          Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc3iqQHA51FenaCtzPDsAGjR-Yz-1sxeEgGuJ7OFko2SEk-GHUOEpSR3yzEbgw2FfnrBo&usqp=CAU"),
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
             
              Text('hyperglycemic case'),
            ],
          ),
        ),
      ]),
    );
  }
}
