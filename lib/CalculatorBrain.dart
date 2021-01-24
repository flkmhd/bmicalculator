import 'dart:math';
class CalculatorrBrain {
  CalculatorrBrain({this.height,this.weight});
  final int height;
  final int weight;
  double bmi;

  String CalcultBMI(){
    bmi=weight/pow(height/100, 2);
    return bmi.toStringAsFixed(1);
  }
  String getResult(){
    if (bmi > 20)
      {
        return "SMIIN";
      }
    else if(bmi>18.5)
        {
          return "NOrmal";
        }
    else
       {
         return"Koul chwi ashbi";
       }
  }
  String getInerpration(){
    if (bmi >= 20)
    {
      return "You have a higher than normal body weight. try to exercice more .";
    }else if(bmi>18.5)
    {
      return "You have a normal weight. Good job.";
    }else{
      return"You have alower than normal body weight. you can eat a bit more.";
    }
  }
}