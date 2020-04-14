local metadata =
{
    plugin =
    {
        format = 'jar',
        manifest = 
        {
            permissions = {},
            usesPermissions = {},            
            usesFeatures = {},
            applicationChildElements = 
            {
                -- For share-google-play-services-base package
                [[
                <!-- Service to monitor the state of Google Play Services. 
                <service android:name="shared.google.play.services.base.PackageStateChangedService" />

                 Receiver which automatically starts this application after the Android device starts up.
                 This is needed to continue with addressing Google Play Services availability issues if a reboot was requested.
                 This receiver only works if the "android.permission.RECEIVE_BOOT_COMPLETED" permission has been set.
                
                <receiver android:name="shared.google.play.services.base.GooglePlayServicesAvailabilitySystemStartupBroadcastReceiver">
                    <intent-filter>
                        <action android:name="android.intent.action.BOOT_COMPLETED" />
                    </intent-filter>
                </receiver>
                -->
                ]],

                -- From play-services-base package
                [[
                <activity android:name="com.google.android.gms.common.api.GoogleApiActivity"
                  android:theme="@android:style/Theme.Translucent.NoTitleBar"
                  android:exported="false"/>
                ]],

                -- From play-services-basement package
                [[
                <meta-data
                  android:name="com.google.android.gms.version"
                  android:value="@integer/google_play_services_version" />
                ]],
            },
        }
    },
    coronaManifest = {
        dependencies = {
            ["shared.android.support.v4"] = "com.coronalabs",
        },
    },
}

return metadata
