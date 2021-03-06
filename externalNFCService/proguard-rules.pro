# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /home/skjolber/Android/Sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

-dump class_files.txt
-printseeds seeds.txt
-printusage unused.txt
-printmapping mapping.txt

-dontwarn android.nfc.**
-dontwarn com.skjolberg.hce.CustomINFcTagStub15to23
-dontwarn com.skjolberg.hce.CustomINFcTagStub24to25

-keep public class com.skjolberg.nfc.acs.**
-keep public class com.skjolberg.nfc.NfcReader
-keep public class com.skjolberg.nfc.NfcService
-keep public class com.skjolberg.nfc.NfcTag

-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.preference.Preference
-keep public class com.android.vending.billing.IInAppBillingService

-keep public class * extends android.view.View {
    public <init>(android.content.Context);
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
}
-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}
-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}
-keepclassmembers class * extends android.content.Context {
    public void *(android.view.View);
    public void *(android.view.MenuItem);
}

-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

-keep class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}

-keepclassmembers class * extends android.app.Service {
    public static final *;
}

-keep public class com.skjolberg.service.BackgroundUsbService

-keepclassmembernames public class com..skjolberg.hce.** {*;}

-keep public interface com.skjolberg.hce.** {*;}

