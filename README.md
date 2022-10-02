<div align="center">
<h1>Remote Deploy Scripts</h1>
<p> Various automation scripts to develop and deploy programs to<br>
embeded or cloud enviroments efficently<br>
<i>Developed by <a href="https://github.com/umutsevdi"> Umutcan Sevdi</a></i></p>
</div>
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#project">Project</a></li>
    <li><a href="#installation">Installation</a></li>
    <li><a href="LICENSE">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

<section id="project">

## 1- Project

While working with embeded devices, our coding and execution enviroments are
seperated. Although most of the IDE's solve this issue by automatically pushing
the source file during build time.

I wanted to build a program similar to git but doesn't require a server to host
versions. A tool that can simply push the changed files to the remote enviroment,
or pull if there are any files newer than the local or simply execute a command remotely.

For this I've been developing various shell-scripts. The scripts that I am currently
working on are:

- **[rd_exec](bin/rd_exec)**: Executes given shell command(s) in the remote enviroment
  on selected directory.

- **[rd_get](bin/rd_get)**: Pulls files from selected directory on a remote enviroment
  on the selected directory. When smart pull is enabled, updates only older the files.

- **[rd_send](bin/rd_send)**: Similar to rd_get pushes files to selected directory
  on a remote enviroment. When smart push is enabled, updates only older the files.

</section>

<section id="installation">

## 2- Installation

This script can be used on any UNIX operating system with a shell. It can deploy
from a UNIX device to another easily. Requires `ssh` and `sftp`, both of those are
preinstalled on most UNIX devices.

```sh
$git clone https://github.com/umutsevdi/remote-deploy.git
```

Then create a config file at `$HOME/.config/rd/deploy.config` and set your credentials.

```config
username=USERNAME
address=pi.local
```

This values will be used while connecting automatically. You can set the `RD_PATH`
variable from your `.bashrc` file to another directory. This variable changes the
directory that remote-deploy scripts scan.

```sh
$export RD_PATH=/path/to/deploy.config
```

Now link the commands to a directory where your binaries are.

```sh
$ln -s /path/to/remote-deploy /usr/local/bin
```

You are ready to go! You can now run any script.

</section>

<section id="contact">

## 3- Contact

You can contact to me for any suggestion or information.

Project: [umutsevdi/remote-deploy](https://github.com/umutsevdi/remote-deploy)

Developed by [Umutcan Sevdi](https://github.com/umutsevdi)

</section>
