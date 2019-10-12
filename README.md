# USBLinx Conversion

Since the USBLinx JAMMA card on Ultimate Arcade machines is not very well documented,
this will help you start up your own MAME machine from an existing Ultimate Arcade machine
with a USBLinx JAMMA card

## Getting Started

You are going to need an Ultimate Arcade machine (or similar).
A lot of companies make their own version of it but you just need a USBLinx card
that connects to the JAMMA controls

Also, this guide is for Windows system (Tested on Windows 7 and 10)

### USBLinx

The card is particularly hard to get working. In order for it to work,
it needs to see that the numlock key is being pressed about every 30 seconds,
called the "Watchdog Circuit".

If its not pressed in that time, the USBLinx is designed to reboot both the PC
and itself.

The numlock script I wrote will press the USBLinx virtual numlock key every 10 seconds,
just to make sure it is read.

This will allow the USBLinx to stay on and keep working

Without the script, you won't get any input from the USBLinx board

```
Give examples
```

### Installing

First, clone the repository to get the numlock.vbs
This script will allow us to use the USBLinx card

```
git clone git@github.com:TylerLyczak/USBLinx-Conversion.git
```

Next, copy the "numlock.vbs" to:

```
C:\Windows\System32\GroupPolicy\User\Scripts\Logon
```

Next, hit the windows key and type in

```
gpedit.msc
```

Next, we want to edit the User Configuration

```
Open "Windows Settings", then "Scripts (Logon/Logoff)"
```

![alt text](https://github.com/TylerLyczak/USBLinx-Conversion/blob/master/imgs/1.PNG)

Next, click on "Logon"

![alt text](https://github.com/TylerLyczak/USBLinx-Conversion/blob/master/imgs/2.PNG)

Next, click on "Add"

![alt text](https://github.com/TylerLyczak/USBLinx-Conversion/blob/master/imgs/3.PNG)

Click browse, then click on the "numlock.vbs" we added to the folder, then click "OK"

![alt text](https://github.com/TylerLyczak/USBLinx-Conversion/blob/master/imgs/4.PNG)

Click "Apply" then "OK", then close out of it and reboot


## Authors

* **Tyler Lyczak**

## Future Updates

* **Linux script**
