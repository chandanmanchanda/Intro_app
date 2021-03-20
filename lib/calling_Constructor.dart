import 'constructor.dart';

class ConstList{
  String name;
  int rollNo;
  listName(int tileNo)
  {
    return student[tileNo].name;
  }
  listRollNo(int tileNo)
  {
    return student[tileNo].rollNo;
  }
  List student=[
    Constructor("chandan",11),
    Constructor("raman", 12),
    Constructor("sham",13),
    Constructor("Sita", 14)



  ];
}