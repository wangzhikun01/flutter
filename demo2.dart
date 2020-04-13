void main(){
	var p = {
		"name":"root",
		"age":"18"
	};

	p.forEach((k,v){
		print("${k} : $v");
	});
}