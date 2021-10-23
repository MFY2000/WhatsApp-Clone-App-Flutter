// ignore_for_file: file_names
class StatusModel {
  late String name;
  late String time;
  late List<Map<String,bool>> status;


  StatusModel({required this.name, required this.time, required this.status, });

  bool isSeen(){
    bool match = false;
    for (var item in status) {
     if(item.values.single) {
        match = true;
        break;
      }
    }

    return match;
  }

}