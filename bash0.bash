# GITHUB Page
#       https://github.com/januszed/linuxbash0/blob/master/bash0.bash#L496
# VIM Commands
#          :q<enter> to exit
#          :w filename <enter> to save a file
#          :help<enter> or F1 for online help
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
#list all files that start with the word linux (asterisk wildcard)
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
################hardware components#############
#Force the computer to shut down
sudo poweroff -f
#reboot
sudo reboot
#add new user
sudo useradd djanusz
sudo passwd djanusz
grep djanusz /etc/passwd
#switch to new user, print the new users name, then logout
su - djanusz
whoami
exit
#delete user
sudo deluser djanusz
# add a new user with the home directory /home/sas02
sudo useradd -m -s /bin/bash -d /home/djanusz djanusz
#The list hardware command lshw
sudo apt-get install lshw-gtk
#X Windows interface to this command
sudo lshw -X 
time sudo lshw -html > ~/Documents/lshw.html
sudo lshw -xml > ~/Documents/lshw.xml
sudo lshw -json > ~/Documents/lshw.js
sudo lshw -short > ~/Documents/lshwshort.txt
sudo lshw -businfo > ~/Documents/lshwbus.txt
#view the number of users
cat /etc/passwd
#install some other shells
sudo apt-get install csh
sudo apt-get install ksh
#change the default shell for ordinary users (enter /bin/csh when prompted)
chsh
#change between bash and csh
bash
csh
#view the shells on your system
cat /etc/shells
#run a short shell script
sh ./myVeryFirst.sh
#using bash also works to run shell scripts with the .sh extension
bash ./myVeryFirst.sh
#change the permissions on the shell script
chmod 751 myVeryFirst.sh
#read write, execute for everyone (111 in binary, or 7 in decimal, is rwx)
chmod 777 myVeryFirst.sh
#once it is executable, you ccan run it like other commands
myVeryFirst.sh
#Or if the directory is not in the PATH variable
./myVeryFirst.sh
#Create a shell variable (note that there is no whitespace around a shell variable)
dog="fido"
echo "Don't let $dog near the river"
#weak quote allows interpretation of variables/parameter including the following positional parameter
echo "the average pay is $1000"
#strong quote allows substitution of characters
echo 'the average pay is $1000'
#the backslash is like the strong quote
echo the average pay is \$1000
#weak quotes to show the variables (variable evaluation)
echo "$dog"
#strong quotes and we don't see the variables
echo '$dog'
#weak quotes allows command substitution and variable evaluation
echo "The PATH variable is $PATH and the current directory is `pwd`"
#command substitution
mydir=`pwd`; echo $mydir
#command substitution with and without quotes (the quotes make a trailing newline after each directory listing)
dirListing=`ls -l`
echo $dirListing
echo "$dirListing"
# Shell variables postional parameters command-line arguments
set A B C
echo $2 $3
echo $#
echo $0
echo $*
# Using arguments to the previous command  (enter the bar directory with $_)
mkdir bar
cd $_
#create some files and display thier content
cd ~/Documents
mkdir bar
cd bar
vi some.sh
vi somemore.sh
touch some.sh somemore.sh
mkdir backup
cat some.sh somemore.sh
cp !* ./backup  #pass all arguments from the previous command
#There are 3 types of variables: 1. Shell, 2. Configuration and 3. Environment (Local or Global)
env #list environmet variables
#list environment variables (PATH has the paths that are searched for commands)
printenv
# view the PATH environment variable (a colon-separated list of directories)
echo $PATH
# create a local variable and then export it to the environment
DOCPATH=/home/dave/Documents
export DOCPATH
env | grep DOC
#add the Downoads directory and your current directory to the environment variable
export DOCPATH2=$PATH:/dave/home/Downloads:.
echo $DOCPATH2
# set the variable to readonly
readonly DOCPATH2
# save the current prompt as another environment variable
MYPROMPT=$PS1
echo $MYPROMPT
# revert to your original prompt as needed
PS1=$MYPROMPT
# Customize the prompt - display the time of day and the number of jobs that you are running
export PS1="[\t \j]"
# change the prompt display to: username-host jobs shell version directory
export PS1="\H \j \s \v \w >"
# display the directory and user information ($ indicates user is root)
export PS1="\$PWD (\w) \$ >"
# Customers a user's bash shell
cd ~ # go to home directory
ls -al #view all files including hidden
cat .bashrc
cp .bashrc .bashrcOG
vi .bashrc # add PS1="\$PWD (\w) \$ >" to the end to customize your bash script
# make some alaises
alias ll="ls -al"
ll
# make a backup of the .profile file and add in some useful aloiases
cd ~
cp .profile .profileOG
vi .profile # add in who="who | sort"
#compare two numbers in a bash script
#enter the following in a text file called compareTwoNums:
#compare two numbers entered by the user
read -p "Please enter two different numbers (num1 and num2):" num1 num2
if [ $num1 -eq $num2 ]
then
echo "You entered two equal numbers: " $num1
else
if [ $num1 -gt $num2 ]
        then
echo "num1: $num1 is greater than num2: $num2."
        else
echo "num2: $num2 is greater than num1: $num1."
        fi
fi
#execute the script using chmod +x
chmod +x compareTwoNums
compareTwoNums
# Excecuting programs in different programming languages
# Gibbs sampler algorithm obtained from 
# http://darrenjw.wordpress.com/2011/07/16/gibbs-sampler-in-various-languages-revisited/
# Store the programs in ~/Documents/Gibbs
# Changed the parameters to N=5000 and thin=100 for a faster program executions
cd ~
cd ./Documents/Gibbs
# run an R program from the Linux command line
time Rscript gibbs.r
# run the second R program from the Linux command line and re-direct the output to a file
time Rscript gibbs2.r > datar.tab
Rscript gibbs_compare.r
kde-open Rplots.pdf
# Create an alias to open pdf files with open
cd ~
vi .bashrc #alias open='kde-open'  (exit the terminal and re-open so that the alias will work)
cd ~/Documents/Gibbs
open Rplots.pdf
# Open the R environment from the Linux command line
exec R
# Run the gibbs program in the Python programming language
time python gibbs.py > datapy.tab
less datapy.tab
#view where C stores the header files
`gcc -print-prog-name=cc1` -v
# tell C to link to the header files in /usr/include so that the math.h header file links
C_INCLUDE_PATH=/usr/include
echo $C_INCLUDE_PATH
export C_INCLUDE_PATH
gcc gibbs.c -o gibbs -lm -lgsl -lgslcblas
time ./gibbs > datac.tab
# Sort, Cut and Paste Text files
info coreutils 'sort invocation' # the complete manual for sort
# GNU Core Utilities are the basic file, shell and text manipulation utilities of the GNU operating system
man cut -dk
comm --help
#    The defaults are:
# * the join field is the first field in each line;
# * fields in the input are separated by one or more blanks, with
#   leading blanks on the line ignored;
# * fields in the output are separated by a space;
# * each output line consists of the join field, the remaining fields
#   from FILE1, then the remaining fields from FILE2.
man sort
# enter the following into text files 
# vi text1.data
2 jane 45000
1 joe 33000
3 jessica 50000
9 pacha 25000
10 john 60000
# vi text2.data
3 peter 60000
1 paul 70000
2 pam 80000
9 pacha 25000
#vi text3.data
2,"sam snead",48000
1,"sona sanchez",55000
3,"stacey smith",72000
# sorting files with no options
sort text1.data > sorted1.data
sort text1.data > sorted1
cat sorted1
sort text2.data > sorted2.data
sort text2.data > sorted2
cat sorted2
ll | grep sorted
# delete both files (you can perform batch operations with braces {} )
rm sorted{1,2}
ll | grep sorted
# extract the first columns only (note the file is delimited by commas)
cut -d, -f1 text3.data
# extract the second and third colums
cut -d, -f2-3 text3.data
# extract the first and third column
cut -d, -f1,3 text3.data
# extract the third column from the space delimited text1.data file
cut -d" " -f3 text1.data
# sort the space delimted text2.data file on the 3rd field and redirect the results to sorted2on3
sort -t" " -k 3 text2.data > sorted2on3
# display both files one ontop of the other (append vertically without any matching)
cat text2.data sorted2on3
# line the data files up side by side (append horizontally without any matching)
paste text1.data text2.data
# transform the data into one row
paste -s text2.data
# transform the data to two rows (from 4x3 to 2X6)
paste -s -d'\t\n' text2.data
# cut the second column from text2.data and append that horizontally to text3.data
cut -d' ' -f2 text2.data | paste - text3.data
# compare two sorted files with comm
comm sorted1.data sorted2.data
# the vertical intersection of the data files (sql sorted1.data intersect sorted2.data)
comm -12 sorted1.data sorted2.data
# the vertical exception (sql sorted1.data except sorted2.data)
comm -13 sorted1.data sorted2.data
# the vertical exception (sql sorted2.data except sorted1.data)
comm -23 sorted1.data sorted2.data
# show everything except the intersection of the two files
diff sorted1.data sorted2.data
# products.data
# vi products.data
4321:watch:200
4321:video-game:500
5678:cd-rom:150
5678:dvd:2000
8765:phone:3500
# vi names.data 
1234:Johnson:Bob
4321:Jones:Jim
5678:Smith:Dave
7777:Brown:Tim
8765:Martin:Peter
# horizontal joins based on matching columns
join -t: names.data products.data
# join using the -o option with a field list to perform intricate joins
join -t: -o 1.2 2.3 2.2 names.data products.data > purchases
# print the purchases on a double spaced page in the terminal
pr -d -h 'Products Purchased' purchases
# using awk in a similar fashion to a filter (sql where clause)
awk '/joe/{print}' sorted1.data 
# The string /joe/ is the awk target, and the action (in braces) is to print the third field
awk '/joe/{print $3}' sorted1.data
# The delimiter is a colon and the action is to print the second and third columns
awk -F: '/Jones/{print $2,$3}' names.data
# create the employees file
# vi employees
409,John Baker,56000,civil engineering
678,Fred Smith,73000,physics
429,Julia Tanguay,47000,computer science
349,Peggy Bantin,67000,Physics
268,Mario Hodgkins,55000,programming
# Display all records of employees teaching in the physics department
awk -F, '/physics/ {print}' employees
# Display employee name and department from all records
awk -F, '{print $2, $4}' employees
# Extract all records of employees teaching in the physics department, and display
# their names and salary and ignore case
awk -F, '/[Pp]hysics/{print $2, $3}' employees
# Selecting lines by field value. Display records where the salaries are: 55000
awk -F, '$3 == 55000' employees
# Display records where the salaries are less than 55000
awk -F, '$3 < 55000' employees
# Display records where the salaries are more than 55000
awk -F, '$3 > 55000' employees
# Display records of employees working either in the physics or programming departments
awk -F, '/[Pp}hysics|programming/{print}' employees
# Display records for employees who work in computer science
awk -F, '$4=="computer science"' employees
# Display records for employees who makemore than $55,000 but less than $70,000
awk -F, '$3>55000 && $3<70000' employees
# Display records for employees who make more than $55,000 OR less than $20,000
awk -F, '$3 > 55000 || $3 < 20000' employee
# Complex awk scripts (create the awktest.awk file from the long command below) 
# vi awktesst.awk
/physics/{name= $2 salary=$3 print " employee name is: "name print " employee salary is: "salary}
# run the .awk file
awk -F, -f awktest.awk employees
