import "package:http/http.dart" as http;

var url = 'https://github.com/CarGuo/gsy_github_app_flutter';

getPage() async {
	// print("getPage - function - start");
	var res = await http.get(url);
	// print('getPage - function - end');
	return res;
}

test() async {
	// print("tst - function - start");
	var response = await getPage();
	// print("tst - function - end");
	return response;
}

void main(){
	// print("main - start");
	var r = test();
	r.then((){
		print('main 函数，异步返回值出发了then');
	});
	// print(r);
	// print("main - end");
}
/**
1 main - start 
2 tst - function - start
3 getPage - function - start
Instance of 'Future<dynamic>'
4 main - end
5 getPage - function - end
6 tst - function - end
 */