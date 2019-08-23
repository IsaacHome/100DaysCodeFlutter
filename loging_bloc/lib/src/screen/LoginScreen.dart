import 'package:flutter/material.dart';
import 'package:loging_bloc/src/blocs/provider.dart';
import '../blocs/bloc.dart';

class LoginScreen extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
     final bloc =Provider.of(context);

    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
         children: <Widget>[
             emailField(bloc),
           passwordField(bloc),
           Container(margin: EdgeInsets.only(top: 25.0),),
           submitButton(bloc)

         ],
      ),
    );
  }

  Widget emailField(Bloc bloc){
     return StreamBuilder(
        stream: bloc.email,
        builder: (BuildContext context,snapshot){
          return TextField(
            onChanged: bloc.changeEmail,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                hintText: 'your@gmail.com',
                labelText: 'Email Address',
                errorText: snapshot.error
            ),
          );
        },
     );
  }

  Widget passwordField(Bloc bloc){
     return StreamBuilder(
       stream: bloc.password,
       builder: (context,snapshot){
         return TextField(
           onChanged: bloc.changePassword,
           obscureText: true,
           decoration: InputDecoration(
             hintText: 'password',
             labelText: 'Password',
             errorText: snapshot.error
           ),
         );
       },
     );
  }

  Widget submitButton(Bloc bloc){

     return StreamBuilder(
        stream: bloc.submitValid,
       builder: (context,snapshot){
         return RaisedButton(
           child: Text(
               "Login"
           ),
           color: Colors.blue,
           onPressed: snapshot.hasData ?bloc.submit :  null,
         );
       },
     );
  }
}