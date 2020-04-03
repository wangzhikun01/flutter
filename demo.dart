import "package:http/http.dart" as http;

var url = 'https://github.com/CarGuo/gsy_github_app_flutter';

void getPage() async {
	print("function - start");
	var res = await http.get(url);
	print('function - end');
	print(res);
}

void main(){
	print("main - start");
	getPage();
	print("main - end");
}