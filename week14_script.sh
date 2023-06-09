# Executing this command will display a detailed listing of the /dev/vda device file on a server.
ls -l /dev/vda
# brw-rw----, 1 root disk 247, 0 May 19 09:17 /dev/vda

# there are two options -h and -H which make the df command more human readable
# by incorporating file sizes measured in kibibytes (KiB), mebibytes (MiB), gibibytes (GiB), and International System (SI) units correspondingly
df -h
df -H


# This command will display a comprehensive list of device files and corresponding mount points on a server.
df


# command used to show all the file sizes inside a certain directory
du /root
# The command includes -h and -H options that enhance the readability of the output.
du -h /var/log


# The process of mounting a file system can be accomplished using either a device file or a universally unique identifier (UUID).
mount /dev/vdb1 /mnt/mydata
mount UUID="[UUID]" /mnt/mydata

# This command displays the current partitions within the file system along with various other details.
blkid


# To initiate the unmounting process, you need to provide the mount point as a parameter.
unmount /mnt/mydata

# This command displays a list of all currently open files and the corresponding processes that are using the file system and need to be disconnected.
lsof /mnt/mydata
