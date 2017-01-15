<h5 align="right">@Yu Hsuan Yen</h5>
Convert .py to Linux command
============================
a simple shell for convert the .py file into linux command.

File Organization
-----------------
>Convert_py2cmd  
>|  
>|--convert_py2cmd.sh      *# source code*  
>|  
>|--\[target file\].py     *# the file you want to convert*  
>|  
>|--\[output cmd file\]    *# the command file you want*  

Check Python Path
------------
This converter is for Python at path `/usr/bin/python`
Please check your python path by `$ which python`:
```bash
#Check python path if you are already installed
$ which python
/usr/bin/python
```

Installation
------------
```
$ git https://github.com/YenYuHsuan/convert_py2cmd.git
$ cd convert_py2cmd
$ chmod +x convert_py2cmd.sh
$ cp [python file path] .
```

Usage
-----
`$ ./convert_py2cmd [target file].py [command you named]`

try with example [test.py](./test.py):
```
$ ./convert_py2cmd test.py pytest
--------------------------------------------------------
Transform test.py to linux command 'pytest'!!
targetfile: test.py
outputfile: pytest
dos2unix: converting file /home/***/convert_py2cmd/pytest to Unix format ...
Command 'pytest' created!!
--------------------------------------------------------
$ pytest
This Python file (test.py) is converted to linux command [$ pytest]!!!
```

<h5 align="right">Stay hungry. Stay foolish.</h5>


