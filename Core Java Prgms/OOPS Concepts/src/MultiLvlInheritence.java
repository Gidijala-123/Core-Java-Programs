class WebApplication{
	void wappname() {
		System.out.println("html");
		System.out.println("css");
		System.out.println("javascript");
	}
}

class AndroidApplication extends WebApplication{
	void androidApp() {
		System.out.println("This is enterprise android");
	}
}

class EnterpriseApplication extends AndroidApplication{
	void enterprise() {
		System.out.println("This is enterprise application");
	}
}


 
class MultiLvlInheritence{
	public static void main(String argsp[]) {
		WebApplication wa = new WebApplication();
		AndroidApplication aa = new AndroidApplication();
		EnterpriseApplication ea = new EnterpriseApplication();
		wa.wappname();
		aa.androidApp();
		ea.enterprise();
	}
}
