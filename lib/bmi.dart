class BMI {
  int age = 0;
  int weight = 0;
  double height = 0;
  String gender = "male";

  BMI(this.age, this.weight, this.height, this.gender);



  double bmi(){
    return (weight*10000)/(height * height);
  }

}