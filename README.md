Hello World

The purpose of this repo is to help me understand how to connect Angular2 to Firebase.

The instructions I list below are for Ubuntu but they might work on a Mac.

I prefer to use Ubuntu 14.04 because it runs on both my laptop and on Amazon.

I start by installing Ubuntu 14.04 on my laptop.

The most recent version of Ubuntu which I like is at this URL:

http://releases.ubuntu.com/14.04.3/ubuntu-14.04.3-desktop-amd64.iso

The three general paths to install Ubuntu on a laptop are listed below:

- Remove Windows and install Ubuntu
- Ignore Windows and install Ubuntu on USB drive
- Install VirtualBox on Mac or Windows, Install Ubuntu inside VirtualBox

My favorite path is path2: Ignore Windows and install Ubuntu on USB drive.

Path2 works well with a new laptop should I want to maintain the warranty.

If you are new to the world of Ubuntu laptops I suggest you buy a cheap windows laptop from Walmart and run some experiments.

E-me if you need help: bikle101@gmail.com

When I install Ubuntu, it will ask who I am.

I tell Ubuntu that my name is ann.

Then, Ubuntu will create an account named ann which has useful privileges.

If you use a different initial account, you should create an account named ann after you boot the laptop.

The shell commands to create the ann account are listed below:
```bash
sudo useradd -m -s /bin/bash ann
sudo passwd ann
```

The first command creates ann.
The second command gives her a password.

After I create the ann account, I enhance and update Ubuntu.

The shell commands to do this are listed below:

```bash
sudo apt-get update
sudo apt-get upgrade

sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev \
libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 sqlite3    \
libgdbm-dev libsqlite3-dev gitk emacs wget curl openssh-server aptitude

sudo apt-get update
sudo apt-get upgrade
```

After that I login as ann and I download Node.js.

wget https://nodejs.org/dist/v5.6.0/node-v5.6.0-linux-x64.tar.gz

Then I install it:
```bash
rm -rf  node
tar zxf node-v5.6.0-linux-x64.tar.gz
mv      node-v5.6.0-linux-x64 node
```

So, I did that on my laptop.

Then I did this:
```bash
cd ~ann
git clone https://github.com/danbikle/ang2tut20160214
cd  ang2tut20160214
npm install
npm start
```

The console indicated that lite-server was serving at two URLs.

I saw this:
```bash
ann@nia111:~/ang2tut20160214 $ 
ann@nia111:~/ang2tut20160214 $ npm start

> firebase-angular2-demo-typescript@1.0.0 start /home/ann/ang2tut20160214
> concurrent "npm run tsc:w" "npm run lite" 

[0] > firebase-angular2-demo-typescript@1.0.0 tsc:w /home/ann/ang2tut20160214
[0] > tsc -w
[0] 
[1] 
[1] > firebase-angular2-demo-typescript@1.0.0 lite /home/ann/ang2tut20160214
[1] > lite-server
[1] 
[1] [BS] Access URLs:
[1]  ----------------------------------
[1]        Local: http://localhost:3000
[1]     External: http://10.0.2.15:3000
[1]  ----------------------------------
[1]           UI: http://localhost:3001
[1]  UI External: http://10.0.2.15:3001
[1]  ----------------------------------
[1] [BS] Serving files from: ./
[1] [BS] Watching files...
[0] app/firebase-hero.service.ts(13,5): error TS2377: Constructors for derived classes must contain a 'super' call.
[0] app/mock-heroes.ts(2,12): error TS2322: Type '{ "id": number; "name": string; }[]' is not assignable to type 'Hero[]'.
[0]   Type '{ "id": number; "name": string; }' is not assignable to type 'Hero'.
[0]     Property 'save' is missing in type '{ "id": number; "name": string; }'.
[1] [BS] File changed: app/hero.js
[1] [BS] File changed: app/hero-detail.component.js
[1] [BS] File changed: app/hero.service.js
[1] [BS] File changed: app/app.component.js
[1] [BS] File changed: app/mock-heroes.js
[1] [BS] File changed: app/mock-hero.service.js
[1] [BS] File changed: node_modules/firebase-angular2/src/firebase.service.factory.js
[1] [BS] File changed: node_modules/firebase-angular2/src/firebase.config.js
[0] 7:29:00 AM - Compilation complete. Watching for file changes.
[1] [BS] File changed: node_modules/firebase-angular2/src/firebase-utils.js
[1] [BS] File changed: node_modules/firebase-angular2/src/firebase.service.js
[1] [BS] File changed: node_modules/firebase-angular2/src/firebase-auth.service.js
[1] [BS] File changed: node_modules/firebase-angular2/src/firebase.service.provider.js
[1] [BS] File changed: node_modules/firebase-angular2/src/firebase.provider.js
[1] [BS] File changed: node_modules/firebase-angular2/core.js
[1] [BS] File changed: app/firebase-hero.service.js
[1] [BS] File changed: app/boot.js
[1] 16.02.14 07:29:02 304 GET /./index.html (Unknown - 62ms)
[1] 16.02.14 07:29:03 304 GET /node_modules/angular2/bundles/angular2-polyfills.js (Unknown - 324ms)
[1] 16.02.14 07:29:03 304 GET /node_modules/systemjs/dist/system.src.js (Unknown - 324ms)
[1] 16.02.14 07:29:03 304 GET /node_modules/rxjs/bundles/Rx.js (Unknown - 325ms)
[1] 16.02.14 07:29:03 304 GET /node_modules/angular2/bundles/angular2.dev.js (Unknown - 326ms)
[1] 16.02.14 07:29:03 304 GET /node_modules/rxjs/bundles/Rx.js (Unknown - 163ms)
[1] 16.02.14 07:29:04 304 GET /node_modules/angular2/bundles/angular2.dev.js (Unknown - 17ms)
[1] 16.02.14 07:29:04 404 GET /favicon.ico (Unknown - 24ms)
[1] 16.02.14 07:29:04 200 GET /app/boot.js (Unknown - 56ms)
[1] 16.02.14 07:29:04 200 GET /node_modules/firebase-angular2/core.js (Unknown - 37ms)
[1] 16.02.14 07:29:04 200 GET /app/app.component.js (Unknown - 31ms)
[1] 16.02.14 07:29:04 200 GET /app/firebase-hero.service.js (Unknown - 32ms)
[1] 16.02.14 07:29:04 200 GET /app/hero.service.js (Unknown - 32ms)
[1] 16.02.14 07:29:04 200 GET /node_modules/firebase-angular2/src/firebase.service.js (Unknown - 112ms)
[1] 16.02.14 07:29:04 200 GET /node_modules/firebase-angular2/src/firebase-utils.js (Unknown - 114ms)
[1] 16.02.14 07:29:04 200 GET /node_modules/firebase-angular2/src/firebase-auth.service.js (Unknown - 50ms)
[1] 16.02.14 07:29:04 200 GET /node_modules/firebase-angular2/src/firebase.config.js (Unknown - 51ms)
[1] 16.02.14 07:29:04 200 GET /node_modules/firebase-angular2/src/firebase.service.provider.js (Unknown - 51ms)
[1] 16.02.14 07:29:04 200 GET /node_modules/firebase-angular2/src/firebase.service.factory.js (Unknown - 52ms)
[1] 16.02.14 07:29:04 200 GET /node_modules/firebase-angular2/src/firebase.provider.js (Unknown - 18ms)
[1] 16.02.14 07:29:04 200 GET /app/hero-detail.component.js (Unknown - 19ms)
```

Also it brought up a browser and loaded the Tour of Heroes demo.

Next, I studied the content in this repo to better understand how Angular2 interacts with Firebase:

http://kallyngowdy.github.io/angular2-firebase/

If you have questions, e-me: bikle101@gmail.com
