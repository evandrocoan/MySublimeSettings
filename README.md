# ITE - Integrated Toolset Environment

The goal is to create a Stable set of packages which can work together,
leading your Sublime Text to be able to program/develop any language you ever need to.

Either its Stable or
its Development version have been Stable for some time.
Anyone interested in using it,
can just follow the installation instructions at the **[Installation](#installation-go-to-top)** section.

Any interested in contributing,
can just do so by creating a new issue with your new ideias or
issues.
You can check the [issue tracker](https://github.com/evandrocoan/ITE/issues) for a list of issues to be worked on.
Note,
there are some issues I already fixed,
just forgot to close them yet.


## Table of Contents

- [ITE - Integrated Toolset Environment](#ite---integrated-toolset-environment)
  * [Table of Contents](#table-of-contents)
  * [Installation](#installation-go-to-top)
  * [Stable Installation](#stable-installation-go-to-top)
    + [Using the Sublime Project](#using-the-sublime-project-go-to-top)
    + [Adding to git](#adding-to-git-go-to-top)
  * [Development Installation](#development-installation-go-to-top)
    + [`git clone`](#git-clone-go-to-top)
    + [Sublimehq/Packages](#sublimehqpackages-go-to-top)
  * [Disabled Packages](#disabled-packages-go-to-top)
  * [Debugging](#debugging-go-to-top)
  * [License](#license-go-to-top)

* The table of contents used on this Markdown was generated by:
  1. `git clone https://github.com/evandroforks/markdown-toc`
  1. `cd markdown-toc`
  1. `npm -g install`
  1. `cd ../repository-root`
  1. `markdown-toc README.MD`


___
## Installation <sub><sub>[Go to Top](#ite---integrated-toolset-environment)</sub></sub>

When following the installation steps,
you are going to be prompted to install either the Stable or
Development version.
If you are planning to fix bugs and
contribute to Sublime Text plugins Development,
you should choose the Development installation.
But,
if you are only looking to use things and report bugs,
you can choose the Stable installation.

1. Download & Install **`Sublime Text 3`** (https://www.sublimetext.com/3)
1. Go to the menu **`Tools -> Install Package Control`**, then,
    wait few seconds until the installation finishes up
1. Now,
    Go to the menu **`Preferences -> Package Control`**
1. Type **`Add Channel`** on the opened quick panel and press <kbd>Enter</kbd>
1. Then,
    input the following address and press <kbd>Enter</kbd>
    ```
    https://raw.githubusercontent.com/evandrocoan/StudioChannel/master/channel.json
    ```
1. Go to the menu **`Tools -> Command Palette...
    (Ctrl+Shift+P)`**
1. Type **`Preferences:
    Package Control Settings – User`** on the opened quick panel and press <kbd>Enter</kbd>
1. Then,
    find the following setting on your **`Package Control.sublime-settings`** file:
    ```js
    "channels":
    [
        "https://packagecontrol.io/channel_v3.json",
        "https://raw.githubusercontent.com/evandrocoan/StudioChannel/master/channel.json",
    ],
    ```
1. And,
    change it to the following, i.e.,
    put the **`https://raw.githubusercontent...`** line as first:
    ```js
    "channels":
    [
        "https://raw.githubusercontent.com/evandrocoan/StudioChannel/master/channel.json",
        "https://packagecontrol.io/channel_v3.json",
    ],
    ```
    * The **`https://raw.githubusercontent...`** line must to be added before the **`https://packagecontrol.io...`** one, otherwise,
      you will not install this forked version of the package,
      but the original available on the Package Control default channel **`https://packagecontrol.io...`**
1. Now,
    go to the menu **`Preferences -> Package Control`**
1. Type **`Install Package`** on the opened quick panel and press <kbd>Enter</kbd>
1. Then,
    search for **`StudioChannel`** and press <kbd>Enter</kbd>
1. After finished installing the **`StudioChannel`** package,
   just follow the instructions on the screen.
1. You can also see this *old video* tutorial [How to the Install Sublime Studio](https://youtu.be/362kbFW-tr4).


## Stable Installation <sub><sub>[Go to Top](#ite---integrated-toolset-environment)</sub></sub>

If you chose the Stable [Installation](#installation-go-to-top),
on this section you are going to be introduced with Stable installation tips.

While installing the Stable version,
you can quickly edit any installed packages files by:
1. Opening the command palette and
   running the command **`PackageResourceViewer:
   Extract All Packages`**.
1. And setting the PackagesManager setting **`"extract_everything":
   true`**


### Using the Sublime Project <sub><sub>[Go to Top](#ite---integrated-toolset-environment)</sub></sub>

You can also open the **`SublimeStudio.sublime-project`** inside the **`Packages/StudioChannel`** package (**`git`** submodule) to quickly view/edit all installed
packages.
Just note,
if you are using the Stable version and
as all packages are distributed unpacked on the Stable version,
all of your changes to the installed packages are going to be lost when they upgrade.
If you would like to save them after the upgrade,
you can use the **`OverrideUnpackedPackages`** feature.
See:
[OverrideUnpackedPackages](https://github.com/evandrocoan/OverrideUnpackedPackages) for more information.


### Adding to git <sub><sub>[Go to Top](#ite---integrated-toolset-environment)</sub></sub>

You can create a **`git`** repository on the root of your Stable Sublime Text installation by using the following **`.gitignore`** file:
```sh
/.sublime/
/Backup/
/Cache/
/Index/
/KEEPME
/Local/
/Settings/

/Packages/User/FileHistory*.json
/Packages/User/PackagesManager.cache/*

**/.git/**
*.sublime-package
```
This should exclude most undesired/binary things and
allow you to fiercely control which changes happens with your Sublime Text Stable installation of the ITE.


## Development Installation <sub><sub>[Go to Top](#ite---integrated-toolset-environment)</sub></sub>

If you chose the Development [Installation](#installation-go-to-top),
on this section you are going to be introduced with Development instructions/tips.

If you installed the Development version,
you need to have installed on your system path variable the following programs:
1. **`git`**
1. **`curl`** (linux/cygwin)
1. **`wget`** (linux/cygwin)
1. **`zip`** (linux/cygwin)
1. **`unzip`** (linux/cygwin)
1. **`date`** (linux/cygwin)

Beyond your local **`git`** client,
it is recommended to install some **`git`** client interface as [SmartGit](https://www.syntevo.com/smartgit/download/),
in order to manage this project because it has very complex submodules management.
Also,
your local **`git`** client need to have the user/login and
password cached because some commands used by some packages like the [Channel Manager](https://github.com/evandrocoan/channelmanager),
directly/unattended perform **`git`** operations like **`git pull`** and **`git push`**. Then,
if your username or
password is not cached,
these packages commands which do **`git`** operations,
are going to hang/block/not work properly.

To cache your **`git`** password you can use tools like:
1. https://github.com/Microsoft/Git-Credential-Manager-for-Windows
1. https://git-scm.com/book/en/v2/Git-Tools-Credential-Storage


### `git clone` <sub><sub>[Go to Top](#ite---integrated-toolset-environment)</sub></sub>

It is not advised to use the **`git --clone`** command because **`git`** is buggy and
cannot handle to clone this repository correctly.
By following the installation instructions just above,
you are going to be prompted whether you would like to install the Stable version or
the Development version.
And choosing the Development,
this repository is going to programmatically and
correctly be cloned by a Python Script.
So,
there is not need to directly use the **`git clone`** command.
But,
if you feel like manually using the **`git clone`** command,
you need to pass the **`--recursive`** option and
use it like this:
```
git clone --recursive -j4 https://github.com/evandrocoan/ITE
```
The **`-j4`** parameter is to parallelly clone the repository using up to 4 threads or
CPU cores.


### Sublimehq/Packages <sub><sub>[Go to Top](#ite---integrated-toolset-environment)</sub></sub>

Even if you choose to install the Development version,
by the automated installer,
it will not install the default upstream for [Sublimehq/Packages](https://github.com/sublimehq/Packages).
For it,
you can just run these commands:
```sh
git clone --recursive https://github.com/evandroforks/Packages
mv Packages/.git "$SUBLIME_TEXT_DATA/Packages/.git"
```
Then,
you will need to open the directory **`$SUBLIME_TEXT_DATA/Packages`** as a usual **`git`** repository,
which is completely disconnected from the main ITE repository.


___
## Disabled Packages <sub><sub>[Go to Top](#ite---integrated-toolset-environment)</sub></sub>

For an updated list of packages to not enable see the issue:
1. https://github.com/evandrocoan/SublimeStudio/issues/50 Ignored packages to not enable!


___
## Debugging <sub><sub>[Go to Top](#ite---integrated-toolset-environment)</sub></sub>

Use on the console:
(View -> Show Console)
```
sublime.log_input(True); sublime.log_commands(True); sublime.log_result_regex(True); sublime.log_indexing(True);
```

To disable it do:
```
sublime.log_input(False); sublime.log_commands(False); sublime.log_result_regex(False); sublime.log_indexing(False);
```


___
## License <sub><sub>[Go to Top](#ite---integrated-toolset-environment)</sub></sub>

All files in this repository are released under GNU General Public License v3.0 or
the latest version available on http://www.gnu.org/licenses/gpl.html,
except the files coming from **`git submodules`** (see [.gitmodules](.gitmodules) file) and
the files/directories which include their own license header/file.

```
Sublime Studio, A set of Settings and Packages for Sublime Text 3
Copyright (C) 2018 Evandro Coan <https://github.com/evandrocoan>

Redistributions of source code must retain the above
copyright notice, this list of conditions and the
following disclaimer.

Redistributions in binary form must reproduce the above
copyright notice, this list of conditions and the following
disclaimer in the documentation and/or other materials
provided with the distribution.

Neither the name Evandro Coan nor the names of any
contributors may be used to endorse or promote products
derived from this software without specific prior written
permission.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
```

For more information see:

1. The [LICENSE](LICENSE) file for the GPL v3.0 license
1. The website https://www.gnu.org/licenses/gpl-3.0.en.html

All the other files within each **`git`** submodule have its own license specified, except until 19/09/2017,
where the following linked packages as **`git submodules`** by the file [.gitmodules](.gitmodules),
does not include an explicit license from their original author:

nº | Directory on Packages folder       | Github URL
-- | ---------------------------------- | --------------------------------------------------------------
1  | Add Folder To Project              | https://github.com/DavidGerva/AddFolderToProject-SublimePlugin
2  | AdvancedNewFile                    | https://github.com/skuroda/Sublime-AdvancedNewFile
3  | AutoFileName                       | https://github.com/BoundInCode/AutoFileName
4  | BBCode                             | https://github.com/chipotle/BBCode
5  | Better CoffeeScript                | https://github.com/aponxi/sublime-better-coffeescript
6  | Color Highlighter                  | https://github.com/Monnoroch/ColorHighlighter
7  | Compare Side-By-Side               | https://github.com/DougTy/sublime-compare-side-by-side
8  | ConvertToUTF8                      | https://github.com/seanliang/ConvertToUTF8
9  | Google Spell Check                 | https://github.com/noahcoad/google-spell-check
10 | Indent and braces                  | https://github.com/Epskampie/sublime_indent_and_braces
11 | Invert Selection                   | https://github.com/vontio/sublime-invert-selection
12 | LaTeXTools                         | https://github.com/SublimeText/LaTeXTools
13 | Markdown to BB Code Converter      | https://github.com/Kristinita/1Sasha1MarkdownNoBBCode
14 | Origami                            | https://github.com/SublimeText/Origami
15 | SyncedSideBar                      | https://github.com/TheSpyder/SyncedSideBar
16 | VBScript                           | https://github.com/SublimeText/VBScript
17 | ApplySyntax                        | https://github.com/facelessuser/ApplySyntax
18 | Edit Preferences                   | https://github.com/sublimator/EditPreferences
19 | Extract Text to File               | https://github.com/dreki/sublime-extract-to-file
20 | File Rename                        | https://github.com/brianlow/FileRename
21 | HighlightWords                     | https://github.com/seanliang/HighlightWords
22 | LESS                               | https://github.com/danro/LESS-sublime
23 | Line Endings Unify                 | https://github.com/vontio/sublime-line-endings-unify
24 | SQLExec                            | https://github.com/jum4/sublime-sqlexec
25 | sublime-text-2-buildview           | https://github.com/rctay/sublime-text-2-buildview
26 | TOML                               | https://github.com/Jayflux/sublime_toml_highlighting
27 | WordHighlight                      | https://github.com/SublimeText/WordHighlight
28 | Default                            | https://github.com/evandrocoan/SublimeDefault
29 | ../Default.sublime-package         | https://github.com/evandrocoan/DefaultSublimePackage
30 | SemanticLineWrapping               | https://github.com/bordaigorl/sublime-semantic-wrap


