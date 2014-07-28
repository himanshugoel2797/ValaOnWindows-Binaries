ValaOnWindows-Binaries
======================

The Vala Compiler built for Windows

NOTE:
You will need to install MinGW from: http://sourceforge.net/projects/mingw/files/
Also, you will need to extract (GTK+) http://win32builder.gnome.org/gtk+-bundle_3.6.4-20130921_win32.zip into the root MinGW folder

i.e. If MinGW is installed in C:/MinGW extract the contents of the archive into C:/MinGW  (so both bin folders merge etc)

Make sure to add the mingw install path to your PATH variable. (for example C:/MinGW/bin)

Building
=========
You will also need MSYS with the above setup
Grab the latest source tarball from https://wiki.gnome.org/Projects/Vala/Release and place it in your 
MSYS_INSTALL_DIR/home/USERNAME/

Pkg-Config
-----------------
Sometimes it may be necessary to set the pkg-config path, in which case 

export PKG_CONFIG="/c/MinGW/bin/pkg-config"  (the pkg-config install path)



Now follow the instructions as per Step 2 in https://wiki.gnome.org/Projects/Vala/Hacking#Compiling_from_Git
