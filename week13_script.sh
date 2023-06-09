# the purpose of this script is to generate a tar archive file named "archive.tar" using the files file1, file2, and file3
# the letter "c" following the tar command denotes the action of creating the archive, while the letter "f" specifies the name of the file

tar cf archive.tar file1 file2 file3
ls archive.tar 

# in addition to providing a singular file name, it is also possible to provide a directory name as an alternative
tar cf /root/etc.tar /etc

#"t" represents the action of enumerating the constituents comprising an archive
tar tf /root/etc.tar

# now new directory is established, and subsequently, the archive file is extracted within said directory
# in this scenario, permissions are stored as a security precaution, and the permissions belonging to the user responsible for creating the archive are assigned to the archive
mkdir /root/etcbackup
cd /root/etcbackup
tar xf /root/etc.tar

# p is used to save extracted file's permissions
mkdir /root/scripts
cd /root/scripts
tar xpf /root/myscripts.tar

# 3 types of different compression options:
# xz. gzip, bzip.
commands that used to describe above compression options:

tar cJf /root/sshconfig.tar.xz /etc/ssh
tar czf /root/etcbackup.tar.gz /etc
tar cjf /root/logbackup.tar.bz2 /var/log

# compressed tar archive extraction
# extracting gzip-compression
# making new directory for extracted files

mkdir /tmp/etcbackup
cd /tmp/etcbackup
tar xzf /root/etcbackup.tar.gz

# extracting bzip2-compression 
# creating a new directory for extracted files
mkdir /tmp/logbackup
# moving to the target directory
cd /tmp/logbackup
# extracting the tar archive
tar xjf /root/logbackup.tar.bz2

# xz-compression extraction
# creating a new directory for extracted files
mkdir /tmp/sshbackup
# moving to the target directory
cd /tmp/sshbackup
# extracting the tar archive
tar xJf /root/sshbackup.tar.xz

