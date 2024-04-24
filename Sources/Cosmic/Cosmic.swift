import Foundation
import java_swift
import java_lang
import JNI

public final class CosmicJNI: JavaObject {
    
    // MARK: - Initialization
    
    public convenience init?( casting object: java_swift.JavaObject,
                              _ file: StaticString = #file,
                              _ line: Int = #line ) {
        
        self.init(javaObject: nil)
        
        object.withJavaObject {
            self.javaObject = $0
        }
    }
    
    public required init( javaObject: jobject? ) {
        super.init(javaObject: javaObject)
    }
    
    // MARK: - Methods
    
    func log(_ message: String) {
        NSLog(message)
    }
}

// MARK: - JNI

// void jni.CosmicJNI.log(java.lang.String)
@_silgen_name("Java_jni_CosmicJNI_log")
public func CosmicJNI_log(
    _ __env: UnsafeMutablePointer<JNIEnv?>,
    _ __this: jobject?,
    _ __message: jstring)
{
    let string = String(javaObject: __message)
    NSLog(string)
}
