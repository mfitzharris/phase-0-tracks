1. **Key design philosophies of the Linux OS**
  * assume the user knows what they are doing (are computer literate) and allows you to do anything you tell it to --> does not handhold the user
  * emphasis on the terminal even when using GUI desktop environments
  * Unix philosophies
    * "Do One Things and Do It Well"(DOTADIW)
    * Mike Gancarz Unix philosophy:
      * Small is beautiful
      * Make each program do one thing well
      * Build a prototype as soon as possible
      * Choose portability over efficiency
      * store data in flat text files
      * use software leverage to your advantage
      * use shell scripts to increase leverage and portability
      * avoid captive UIs
      * Make every program a filter

2. **What is a VPS (virtual private server) + advantages to using one**
  * a VPS is a virtual machine (generally sold as a service by an internet hosting service). It runs its own copy of an OS.
  * advantages
    * priced much lower than an equivalent physical server
    * provides higher security level than time-sharing/multiprogramming, despite like those two also sharing resources 
    * easily scalable 
    * more control than shared hosting (root access/ability to use script possibly not allowed in shared)

3. **Why is it considered a bad idea to run programs as the root user on a Linux system**
  * Security - when logged in as root every application is running with root privileges. This leads to every vulnerability in every app having the opportunity to infect all of your systems. Aka - viruses could infect/have access everywhere, small bugs could erase data.
  * The system will not double check, aka it is more easy to make mistakes --> can be a "victim of your own stupidity"
  * Except for administrative work, it is not needed



### references
* linux design philosophy
  * [opensource - the impace of linux philosophy](https://opensource.com/business/14/12/linux-philosophy)
  * [wikipedia - Unix philosophy](https://en.wikipedia.org/wiki/Unix_philosophy)
  * [The Design and Philosophy of Linux](http://www.science.unitn.it/~fiorella/guidelinux/gs/node22.html)
  * bookmark to read later
    * [unix/linux philosophy vs apple ui philosophy](http://arstechnica.com/civis/viewtopic.php?f=14&t=1262477)

* VPS
  * [the pros and cons of vps web hosting](http://www.webhostinghub.com/web-hosting-guide/the-pros-and-cons-of-vps-web-hosting)
  * [wikipedia - virtual private server](ttps://en.wikipedia.org/wiki/Virtual_private_server)
* Linux root user
  * [askubuntu - why is it bad to login as root?](http://askubuntu.com/questions/16178/why-is-it-bad-to-login-as-root)
  * [unix & linux stack exchange - why is it a bad idea to run as root](http://unix.stackexchange.com/questions/52268/why-is-it-a-bad-idea-to-run-as-root)