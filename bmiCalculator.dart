void main (){
  double BMI = 19.0  ;

  String result = BMI < 18.5 ? 'underweight ' : BMI < 24.9 ? 'normal ' : BMI < 29.9 ? 'overweight  ' : ' obese  ';
  print (result);
}