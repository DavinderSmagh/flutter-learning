void main(){
  double originalBill = 800;

  double discountPrice = 0;



  if (originalBill > 1000){
    discountPrice = 20;
  }else if ( originalBill > 500){
    discountPrice = 10 ; 
  }
  else{
    discountPrice = 5 ;
  }


  discountPrice = originalBill * (discountPrice/100);

  double finalAmount = originalBill - discountPrice ; 


  print(finalAmount);

}