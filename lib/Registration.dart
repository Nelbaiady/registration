import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool remembers=false;
  bool pswVisibility=false;
  TextEditingController nameTextCont = TextEditingController();
  TextEditingController emailTextCont = TextEditingController();
  TextEditingController passwordTextCont = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up",style: TextStyle(fontSize: 30,color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("Assets/cool kirby.png",height: 200,),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: nameTextCont,
                decoration: InputDecoration(hintText: "Username",border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: emailTextCont,
                decoration: InputDecoration(hintText: "Email",border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: passwordTextCont,
                obscureText: !pswVisibility,
                decoration:
                InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          pswVisibility=!pswVisibility;
                        });
                      },
                      icon: Icon(pswVisibility ? Icons.visibility : Icons.visibility_off)),
                    hintText: "Password",border: OutlineInputBorder()),
              ),
            ),
            SizedBox(height: 15,),
            ElevatedButton(
                onPressed: (){
                  print("Username is ${nameTextCont.text}");
                  print("Email is ${emailTextCont.text}");
                  print("Password is ${passwordTextCont.text}");
                  nameTextCont.clear();
                  emailTextCont.clear();
                  passwordTextCont.clear();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                  fixedSize: Size(200, 50),
                ),
                child: Text("Sign Up",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 17),)
            ),
          Row(children: [
            Checkbox(value: remembers,
                activeColor: Colors.pink,

                onChanged: (val){
              setState(() {
                remembers=val ?? false;
              });
            }),
            Text("Remember Me"),
          ],),
          ],
        ),
      ),
    );
  }
}
