# Linux

## Informational, Navigational & Management Commands

### Overview Commands

#### Getting information

- **whoami** --> username
- **id** --> user ID and group ID
- **uname** --> operating system name
- **ps** --> running processes
- **top** --> resource usage
- **df** --> mounted file system
- **man** --> reference manual
- **date** --> today's date

#### Working with files

- **cp** --> copy file
- **mv** --> change file name or path
- **rm** --> remove file
- **touch** --> create empty file, update file timestamp
- **chmod** --> change/modify file permission
- **wc** --> get count of lines, words, characters in file
- **grep** --> return lines in file matching pattern

#### Navigating & working with directory

- **ls** --> list files and directories (**ls -r** to see the directory tree)
- **find** --> find files in directory tree
- **pwd** --> get present working directory
- **mkdir** --> make directory
- **cd** --> change directory
- **rmdir** --> remove directory

#### Printing file and string contents

- **cat** --> print file content
- **more** --> print file contents page-by-page
- **head** --> print first N lines of file
- **tail** --> print last N line of file
- **echo** --> print string or variable value

#### Compression and archiving

- _tar_ --> archive a set of files
- **zip** --> compress a set of files
- **unzip** --> extract files from a compressed zip of archive

#### Networking

- **hostname** --> print hostname
- **ping** --> send packets to URL and print response
- **ifconfig** --> display or configure system network interfaces
- **curl** --> display contents of file at a URL
- **wget** --> download file from URL

### Informational Commands

#### User info

- **whoami** --> takes no arguments | return user name

```bash
$ whoami
Ryan
```

- **id** --> takes argument (-u, -n) | return user or groupID

```bash
$ id -u
501
$ id -u -n
Ryan
```

#### System info

- **uname** (Unix name) | returns OS information

```bash
$ uname
Darwin
$ uname -s -r
Darwin 20.6.0
$ uname -v
Darwin kernet version 20.6.0..........
```

- **df** (disk Free) | shows disk usage

```bash
$ df  -h ~
```

Shows the disk where /home is mounted on

```bash
$ df -h
```

Shows all disk available with their size

- **ps** (process status) | return running processes

```bash
$ ps -e
```

- **top** (table of processes) | return the task manager

```bash
$ top -n 3
```

Shows the 3 most hungry process

#### Print string and Variable value

- **echo** | return string or variable value

```bash
$ echo "Hello"
Hello
$ echo $PATH
/usr/local/bin:/usr/bin:/usr/sbin:/sbin
```

- **date** | return date and time

```bash
$ date
Thu 16 sep 2021 16:50:49 EDT
$ date "+%j day of %Y"
097 day of 2023
```

- **man** | return the manual of any commands

```bash
$ man id
```

### Working with Text Files, Networking & Archiving Commands

#### Useful Commands for Wrangling Text files

- **sort** - Sort lines in a file (**sort -r** for reverse ordering)
- **uniq** - Filter out repeated lines
- **grep** - Return lines in the file matchin
- g pattern (global regular expression print) (**grep -i** to make it case insensitive)
- **cut** - Extracts a section form each line![[Pasted image 20241026112814.png]]
- **paste** - Merge lines from different files![[Pasted image 20241026112956.png]]

#### Networking Commands

- **hostname** - Return Host name![[Pasted image 20241026113314.png]]
- **ping** --> send packets to URL and print response![[Pasted image 20241026113827.png]]
- **ifconfig** --> display or configure system network interfaces
- **curl** --> display contents of file at a URL (to write the content in a file use **-o**![[Pasted image 20241026113917.png]]![[Pasted image 20241026114111.png]]
- **wget** --> download file from URL

#### File Archiving and Compression Commands

- **tar** - Archive files![[Pasted image 20241026114730.png]]
- **tar -tf** - List the file in a tar![[Pasted image 20241026114857.png]]
- **tar - xf** - Extract files and folder for a .tar![[Pasted image 20241026115017.png]]
- **tar -xzf** - Decompress and extract a .tar.gz files![[Pasted image 20241026115138.png]]
- **zip** - Compress files and directory to an archive![[Pasted image 20241026115311.png]]
- **unzip** - Extract and decompress zipped archive

### Introduction to Shell Scripting

#### Filters, Pipes, and variables

`shebang` directive --> `#!interpreter[optional-arg]`

- Filters are shell commands, which:
  - Take input from standard input
  - Send output to standard output
  - Transform input data into output data
  - Ex: **wc, cat, more, head, sort, grep**
  - Filters can be chain together
- Pipes command **|**
  - used for chaining filter commands
  - Command 1 | command 2 ex: ls | sort -r
  - Output of command 1 is input of command 2
- Shell variables
  - Scope limited to shell
  - **set** - list all shell variables![[Pasted image 20241026124222.png]]
- Environment variables
  - Extended scope
  - **env** - list all environment variables![[Pasted image 20241026124412.png]]

#### Useful Features of the Bash Shell

##### Metacharacters

- **#** - precedes a commands
- **;** - command separator
- - - Wildcard
- **?** - single character wildcard![[Pasted image 20241026124830.png]]

##### Quoting

- **\\** - Escape unique Character
- **" "** - Interpret literally, but evaluate metacharacters
- **' '** - Interpret literally ![[Pasted image 20241026125304.png]]

##### I/O redirection

Input/Output, or I/O redirection, refers to a set of features used for redirecting.

- **>** - Redirect output to the file
- **>>** - Append output to the file
- **2>** - Redirect standard error to file
- **2>>** - Append standard error to file
- **<** - Redirect file contents to standard input
  ![[Pasted image 20241026125822.png]]

##### Command substitution

- Replace the command with its output `$(command)` or \`command\`
- Ex: Store output of `pwdd` command in `here`:![[Pasted image 20241026130255.png]]

##### Command line Arguments

- Program arguments specified on the command line
- A way to pass arguments to a shell script
- Ex: ![[Pasted image 20241026130439.png]]

##### Batch vs concurrent modes

- Batch mode:
  - Commands run sequentially
    - `command1; command2`
- Concurrent mode:
  - Commands run in parallel
    - `command1 & commad2`

#### Scheduling Jobs using Cron

![[Pasted image 20241026130903.png]]
