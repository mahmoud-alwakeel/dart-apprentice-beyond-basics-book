/// create an abstract class Storage with print statements in the save and retreive methods
/// extend Storage with concrete class named LocalStorage and CloudStorage

void main(){
  final localStorage = LocalStorage();
  final cloudStorage = CloudStorage();

  localStorage.save('mahmoud alwakeel');
  print(localStorage.retrieve());

  cloudStorage.save('a unique software developer');
  print(cloudStorage.retrieve());
}

abstract class Storage {
  void save(String data) {
    print('not implemented');
  }

  String retrieve() {
    print('not implemented');
    return '';
  }
}

class LocalStorage extends Storage {
  String _data = '';
  @override
  void save(String data) {
    print("saving $data in local storage");
    _data = data;
  }
  @override
  String retrieve() {
    print("retrieved from local storage");
    return _data;
  }
}

class CloudStorage extends Storage {
  String _data = '';
  @override
  void save(String data) {
    print("saving $data in cloud storage");
    _data = data;
  }
  @override
  String retrieve() {
    print("retrieved from cloud storage");
    return _data;
  }
}

