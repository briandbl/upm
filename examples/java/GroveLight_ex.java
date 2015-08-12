public class GroveLight_ex {
	static {
		try {
			System.loadLibrary("javaupm_grove");
		} catch (UnsatisfiedLinkError e) {
			System.err.println("error in loading native library");
			System.exit(-1);
		}
	}

	public static void main (String args[]) throws InterruptedException {
		upm_grove.GroveLight gl = new upm_grove.GroveLight(2);
		
		while (true) {
			float raw_value = gl.raw_value();
			float value = gl.value();

			System.out.println("raw value: " + raw_value);
			System.out.println("value: " + value);
			
			Thread.sleep(1000);
		}
	}
}
