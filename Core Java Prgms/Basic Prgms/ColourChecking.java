class HueFind {
	float red;
	float green;
	float blue;
	void  Sat(float r, float g, float b) {
		red = r / 255;
		green = g / 255;
		blue = b / 255;
		
		float cmax = Math.max(red, Math.max(green, blue));
		float cmin = Math.min(red, Math.min(blue, green));
		float diff = cmax - cmin;
		
		if (cmin == cmax) {
			System.out.println("0");
		}
		
		float hueVal = 0f;
		
		if (cmax == red) {
			hueVal = (green - blue) / (cmax - cmin);
		} else if (cmax == green) {
			hueVal = 2f + (blue - red) / (cmax - cmin);
		} else {
			hueVal = 4f + (red - green) / (cmax - cmin);
		}
		
		hueVal = hueVal * 60;
	    if (hueVal < 0) hueVal = hueVal + 360;
	    System.out.println("HueValue: " + hueVal);
		
		float saturation = (diff/cmax)*100;
		float bright = (cmax*100);
		System.out.println("Saturation: " +saturation);
		System.out.println("Brightness: " + bright);
	}
	
}

public class ColourChecking {
	public static void main(String[] args) {
		HueFind obj = new HueFind();
		obj.Sat(193, 255, 183);
	}
}

