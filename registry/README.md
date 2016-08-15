Since unexpected changes to the registry are A Very Bad Thing™, all files in
this folder are protected against accidental runs by giving them a `._` file
extension.

To run these files and make changes to the registry, rename the file to remove
the `._` extension so that they only have the `.reg` extension and double-click
to run. Follow prompts and then restart the computer, or log out and log back in
to activate the change.

# Keyboard Layout Remapping

See [https://msdn.microsoft.com/windows/hardware/drivers/hid/keyboard-and-mouse-class-drivers](Keyboard and mouse class drivers)
section **Scan code mapper for keyboards**. 

## caps-ctrl.reg._

As an ergonomic optimization, makes the following change:

```
CAPS LOCK -> CTRL
```

_Note: You will not be able to activate Caps Lock with this change in place._

## caps-ctrl-scrl.reg._

To solve the problem that _sometimes_ Caps Lock is a useful key,
and Scroll Lock is almost never a useful key, additionally map Scroll Lock to Caps Lock.

```
CAPS LOCK -> CTRL
SCROLL LOCK -> CAPS LOCK
```

_Note: You will not be able to activate Scroll Lock with this change in place._
