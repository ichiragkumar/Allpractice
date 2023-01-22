void main(){


  // object creation
  Person learner = Person(name: "chirag", age: 21);
  Person learner2 = Person(name: "Rohit", age: 21);


  Person prolearner = Person.withIdentity(age: 12, name: "Faith",identetification: "2312");

  print(prolearner.name);



  print(learner.name);
  print(learner2.name);


  // get and setters
  learner2.updateLivingStatus= true;


  print(learner2.livingStatus);




}


class Person{

  final String  name;
  int? age;
  bool _isAlive = false;
  late final String identetification;


  bool get livingStatus{
    return _isAlive;


  }


  set updateLivingStatus(bool status){
    _isAlive=status;
    
  }

  Person({required this.name, required this.age});


  // creating constructor with same name -- which is not possible 
  //  but we do in different in way


  Person.withIdentity(
    {
      required this.name, 
      required this.age,
      required this.identetification
    }
  );

}