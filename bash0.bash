#manual of the man command
man man #spacebar to move forward, Esc,V to move back, / to search and Q to exit
#view section 5 (file formats) of the passwd command
man 5 passwd
#view the man page for the American Standard Code for Information Interchange
man ascii
# view a hypertexted file on the ls command
info ls
#whatis = man -f
whatis cal
#apropos = man -k
apropos cal
#help on the ls command
ls --help
#list all files that start with the word linux
ls linux*
#change wd
cd Documents
#go home
cd ~
#go back
cd ..
#print wd (internal)
pwd
#list permissions, group, owner, filesize, date and filename
ls -l
#view last access date instead of last modification date
ls -ul
#show the inode number with the ls command
ls -i
#list file types (directory /, executable *, symbolic link @)
ls -F
#make a directory
mkdir abc
mkdir abcd
#remove directory
rmdir abc
#remove a directory and its content
rm -r abcd
#print wd (external)
/bin/pwd
#print f dis
echo f dis
#exectue myprog
exec myprog
#time an operation
time pwd
#create an environment variable
export NNTPSERVER=news.abiigisp.com
#view the value of the variable
echo $NNTPSERVER
#send the value of the environment variable to the nntpserver.txt file (redirect stdout)
cd /home/dave/Documents
echo $NNTPSERVER > nntpserver.txt
#append some more text to the nntpserver text file
echo "more text" >> nntpserver.txt
#view all environment variables
env
#delete the NNTPSERVER environment variable
unset NNTPSERVER
#find all backup files (ending with ~) in the current and subdirectories (./)
cd /home/dave/Documents
find ./ -name "*~"
#remove all backup files by piping this list to xargs rm (ones without a space)
find ./ -name "*~" | xargs rm
#view listing 1.1
cat listing1.1.txt
cat -e listing1.1.txt #display line ends with a dollar sign
cat -n listing1.1.txt #display line numbers
#view listing 1.2 with a pager command
less listing1.2.txt
#concatenate listing1.1 and listing1.2
cat listing1.1.txt listing1.2.txt > listing1_cat.txt
#inner join on the two files
join listing1.1.txt listing1.2.txt > joined_list.txt
#sort by the first field
sort listing1_cat.txt
#merge the files line by line
paste listing1.1.txt listing1.2.txt
#octal dump (base 16 ASCII)
od listing1.1.txt
#sort by the thrid field (first name) descending
sort -r -k 3 listing1.1.txt
#sort by the thrid field (first name) ascending
sort -k 3 listing1.1.txt
#numeric sort by the first field
sort -n -k 1 listing1.1.txt
#split the file every 2 lines and save the file as numberaa and numberab
split -l 2 listing1.1.txt numbers
#view the processes currently running
ps aux
#view the process running for amarok
ps aux | grep amarok
#kill the process with pid xxxx
kill xxxx
#list all of the pdf files in a directory
cd /home/dave/Documents
ls *.pdf
#make a directory writeable
sudo chmod a+rwx /usr/local/lib/R/site-library
#view firewall information
sudo iptables -L
#/var/tmp can probably be removed. Much in various /var/cache-directories
cd /var
ls -a
#Script to print the size of a file if it is smaller than 9000 B
FILENAME=apt.extended_states.5.gz
SIZE=$(du -sb $FILENAME | awk '{ print $1 }')
if ((SIZE<1000000)); then 
    echo $SIZE; 
else 
    echo "File greater than 1 MB file"; 
fi
dsfg
#view the file sizes in the cache
du /var/cache/apt/archives
#remove cache files
sudo apt-get clean
#view the file sizes
#Delete all pdf files in the generic directory of texlive-pstricks-doc
sudo find /usr/share/doc/texlive-pstricks-doc/generic -type f -iname '*.pdf' -delete
sudo find /usr/share/doc/texlive-base -type f -iname '*.pdf' -delete
#find all pdfs in the current directory
sudo find  -type f -iname '*.pdf'
#delete all pdfs in the current directory
sudo find  -type f -iname '*.pdf' -delete
# Cleanup log files in /var/log (run as root)
sudo rm /var/log/kern.log.1
sudo find /var/log -type f -iname '*.log' -delete
sudo find /var/log -type f -iname '*.gz' -delete
sudo find /var/log -type f -iname '*.log.old' -delete
#installing some packages and then removing them
sudo apt-get install cmake kdebase-workspace-dev libqjson-dev git libqca2-dev
sudo apt-get --purge remove cmake kdebase-workspace-dev libqjson-dev git libqca2-dev
#remove all directories and subdirectories from a failed install
cd /home/dave
sudo rm -rf kdeconnect-kde
######################Installing Java###########################
#Change to the directory in which you want to install
cd /usr
sudo mkdir java
cd home/dave/Downloads
#Move the tarball to the directory
sudo cp jre-7u45-linux-x64.tar.gz /usr/java/jre-7u45-linux-x64.tar.gz
#Unpack the tarball and install Java
sudo tar zxvf jre-7u45-linux-x64.tar.gz
#Remove the tarball to save disk space
sudo rm jre-7u45-linux-x64.tar.gz
########################################################
#Alternative Java installation
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer
#installing firefox
sudo apt-get install firefox
#Run R interactively - type q() to exit
exec R
#Run octave interactively - type quit() to exit
exec octave
#view the version of the GNU C and GNU C++ compilers
gcc --version
gcc -v
man gcc
gcc --help
g++ --version
#send the manual to a text file (view it online at: http://linux.die.net/man/1/gcc)
man gcc | col -b > gcc.txt
#Compile and link source file hello.c into executable hello.exe
cd /home/dave/Documents/CppWOF
gcc -o hello.exe hello.c
#Execute hello.exe under the Bash shell, specifying the current path (./)
./hello.exe
#Compile-only with -c option
g++ -c -Wall -g dice.cpp
#Link object file(s) into an executable
g++ -g -o dice.exe dice.o
#Run the program
./dice.exe
#Preprocessing (via C pre-processor cpp), compilation (gcc), assembler (as.exe), linker
cpp hello.c > hello.i
gcc -S hello.i
as -o hello.o hello.s
ld -o hello.exe hello.o
#C pre-processor default include paths
cpp -v
#compile in verbose mode (-v) to study the library-paths (-L) and libraries (-l)
gcc -v -o hello.exe hello.c 
#Compile the Matrix Multiplicaiton Example
gcc -c -Wall -g matrix.c
#Link object file(s) into an executable
gcc -g -o matrix.exe matrix.o
#Run the program (2 Enter 2, 1 space 2 enter 3 space 4 enter, etc.)
./matrix.exe
#Compile the Fibonacci example
gcc -c -Wall -g fibonacci.c
#Link object file(s) into an executable
gcc -g -o fibonacci.exe fibonacci.o
#Run the program (2 Enter 2, 1 space 2 enter 3 space 4 enter, etc.)
./fibonacci.exe
#Convert all odf documents in the current directory to pdf
libreoffice --headless --convert-to pdf *.odt
#Convert the test.doc to pdf
libreoffice --headless --convert-to pdf test.doc
/home/dave/Documents/P&C Act/FAP
find "/home/dave/Documents/P&C Act/FAP" -iname '*.pdf' -exec pdfgrep -H 'casualty' {} \;
#Change the default notification of updates
sudo nano /etc/update-manager/release-upgrades
#math API on Unix systems is a specification on how to use the mathematical functions included in the math library
man 3 sqrt 
#calculating the square root of 30 in linux, python and perl
calc=$(echo "sqrt ( 30 )" | bc -l) ; echo $calc
python -c 'import math; print math.sqrt(30)'
perl -e 'print sqrt(30), "\n"'
#Create a C program from the shell
vi example.c
#press i and then copy the following C program, then press Esc, ZZ
#include<stdio.h>
main()
{
        printf("Another Hello World Program\n");
        printf("Written in C\n");
}
#Enter the following code to compile the hello world program
cc example.c
./a.out
#calculating with echo
let val=3*4
echo $val
val=3*4
echo $val
#bc is a language similar to C with a standard math library
bc
scale = 3
i=.1
(1+i)^2
quit
#using bc as a filter
val=$(echo "scale=4; 2.0 /4.0"|bc) 
echo $val
val2=$(echo "scale=4; 8.0*$val"|bc)
echo $val and $val2
declare -ix val=5*3
echo $val
#create a file called nums.txt and calculate things by field
vi nums.txt
#paste the below into nums.txt
1 2 3 4
5 6 7 8
9 10 11 12
# awk - a data driven scripting language
# $NF prints the last field when you use awk
awk '{print $NF}' nums.txt
#get the length of everything you enter (press ctrl+D to exit an interactive awk)
awk '{print length($0)}' 
#get the length of every line in the text file
#compute the square root of every fourth field in a file of numbers like so:
awk '{print sqrt($4)}' nums.txt
#display the name of the terminal
tty
#display settings of the terminal
stty
#open communication with a terminal and start the login process
getty
#sleep for 3 seconds
sleep 3
#send the stout to f and stderr to e
ls /ggg > stdout1 2> stderr1
ls /home > stdout2 2> stderr2
more stderr1
more stdout2
#count the number of lines, words and characters and redirect the output to a file
wc < hello.c > hello_wc
more hello_wc
#store the 2007 calendar in a file and then append the 2008 calandar
cal 2007 > calend
cal 2008 >> calend
more calend #spacebar to scroll through
#December 2009, 2010 and 2011
(cal 12 2009; cal 12 2010; cal 12 2011) >> calend2
more calend2
#send to monitor and to a text file1
who | tee users.txt
#append to the file
who | tee -a users.txt
more users.txt
#display currently logged in users
who
#display who you are
who am i
#Display the current date and time
date
#display the current date with formatting
date +'Date: %m/%d/%Y%nTime: %r'
#view the last 3 commands
history 3
#view the mounted partition
mount
#link hello.c to hellolink.c - a hard link is analogous to a table view
ln hello.c hellohlink.c
#create a symbolic link (allows linking to directories and across filesystems)
ln -s hello.c helloslink.c
#Create a symbolic link to a file that is up a folder and in that folders' subdir 
ln -s ../RSAS/insurance3.xls insurance3slink.xls
#change permissions on a file (CHange protection MODe)
chmod u-r test.r
#change permissions so that a file has rwx-r--r-- (only the owner has read-write-exec)
chmod 744 zvim.txt
#copy to your home directory
cp hello.c ~/hello.c
#copy to the current directory
cp ~/Documents/RSAS/rclust1.r .
cp rclust1.r rclust2.r
#list files named _clust***
ls ?clust*
#remove files named like _clust**
rm ?clust*
#move (rename) a file
cd ~/Documents/CppWOF
mv avg.cpp avg2.cpp
#find allows you to search for files
cd ~/Documents/RSAS
find *sas*
#find all files that contain means in the pathname
find -type f | grep means
#recursively zip all files from backups
zip -r backups2.zip backups
#create archive.tar from files avg2.cpp and dice.cpp
cd ~/Documents/CppWOF
tar -cf archive1.tar avg2.cpp dice.cpp
#view a files type and attributes
file hello.c; file hello.o
#view the text characters inside the /bin/echo binary file
strings /bin/echo | more
#view the first 5 lines of the hello.o object file in octal format
od hello.o | head -5
#display the last 5 lines in hexidecimal format with the -x option
od -x hello.o | tail -5
#creating text files - use touch, vi or else redirect output
echo "Hello World Part II" > hwpii.txt
more hwpii.txt
cat hwpii.txt > hwpII.txt
#change date last modified with touch
ls -l
touch hwpII.txt
ls -l
#Concatenate
cat hwpii.txt
cat hwpii.txt hwpii.txt
cat hwpii.txt hwpII.txt > hwp2.txt
cat hwpii.txt hwpII.txt hwp2.txt
#paginate with more or less. Spacebar to move forward, b to ove backward and q to quit
more faces.java




