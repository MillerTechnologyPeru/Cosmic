package jni;

public class CosmicJNI {
    
    static {
        System.loadLibrary("Cosmic");
    }

    public native void log(String message);

    
}
