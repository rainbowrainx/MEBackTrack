MEBackTrack
===========

Usage:

Regisiter control.

```
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

        [[MEBackTrackManager sharedManager] registerNavigationController:(UINavigationController *)self.navigationController];

}
```
