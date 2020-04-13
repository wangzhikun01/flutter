void main(){
	User u = new User();
	// print(u.pwd);
	u.logOut();
}

class User{
	static String name = 'root';
	String	pwd = '123456';
	static logIn(){
		print('静态方法');
		print(name);
		print(pwd);
	}
	logOut(){
		print('非静态方法');
		print(name);
		print(this.pwd);
		logIn();
	}
}