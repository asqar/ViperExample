# ViperExample
Swift. Viper. Realm. Generamba

Forked from https://github.com/noxt/ViperExample

Please run:
```shell
pod install
generamba template install
```

To generate new module (i.e, NewFeature) please run:
```shell
generamba gen NewFeature swifty_viper --project_targets 'ViperExample,ViperExampleTests'
```

Project definitely works with `pod --version` `1.4.0.beta.2` and library versions:
```shell
Alamofire (4.6.0)
AlamofireNetworkActivityIndicator (2.2.0)
ObjectMapper (3.1.0)
Realm (3.1.1)
RealmSwift (3.1.1)
TableKit (2.5.0)
```