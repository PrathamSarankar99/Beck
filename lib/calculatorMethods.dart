class Methods{
  static String getAnswer(List list){
    while(list.length>1){
      try{
        if(list.contains("")){
          int index =list.indexOf("");
          list.removeAt(index);
        }
        if(list.contains('÷')){
          int index = list.indexOf('÷');
          double tmp =  double.parse(list[index-1])/double.parse(list[index+1]);
          list.removeAt(index);list.removeAt(index);
          list[index-1]=tmp.toString();
        }
        else if(list.contains('x')){
          int index = list.indexOf('x');
          double tmp =  double.parse(list[index-1])*double.parse(list[index+1]);
          list.removeAt(index);list.removeAt(index);
          list[index-1]=tmp.toString();
        }
        else if(list.contains('-')){
          int index = list.indexOf('-');
          double tmp =  double.parse(list[index-1])-double.parse(list[index+1]);
          list.removeAt(index);list.removeAt(index);
          list[index-1]=tmp.toString();
        }
        else if(list.contains('+')){
          int index = list.indexOf('+');
          double tmp =  double.parse(list[index-1])+double.parse(list[index+1]);
          list.removeAt(index);list.removeAt(index);
          list[index-1]=tmp.toString();
        }
        else{
          return list[0];
        }

      }catch(e){
        print("Error while solving says : $e");
        return "Syntax error";
      }
    }

    return list[0];

  }

}