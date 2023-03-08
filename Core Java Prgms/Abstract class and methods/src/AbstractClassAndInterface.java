interface Music {
	void Telugu();
	void Hindi();
	void English();
}

abstract class EnglishAlbum implements Music {
	public void English() {
		System.out.println("English Album");
	}
}

class TeluguAlbum extends EnglishAlbum {
	public void Telugu() {
		System.out.println("Telugu Album");
	}

	public void Hindi() {
		System.out.println("Hindi Album");
	}
}

class AbstractClassAndInterface {
	public static void main(String args[]) {
		Music obj = new TeluguAlbum();
		obj.Telugu();
		obj.Hindi();
		obj.English();
	}
}


