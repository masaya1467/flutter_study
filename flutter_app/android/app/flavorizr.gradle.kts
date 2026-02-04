import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("dev") {
            dimension = "flavor-type"
            applicationId = "com.firebaseapp.naruto_be91a"
            resValue(type = "string", name = "app_name", value = "テキストSNS Dev")
        }
        create("prod") {
            dimension = "flavor-type"
            applicationId = "com.firebaseapp.naruto_sns_prod"
            resValue(type = "string", name = "app_name", value = "テキストSNS")
        }
    }
}