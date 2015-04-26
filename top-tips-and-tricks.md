## Shell and ZSH

**Incremental search in history**
Type `ctrl + R` and few letters of any previous command.

**Difference between > and >>**

`>` re-creates entirely the file (understand: deletes the current content)
`>>` appends at the end of the file

Examples:

```bash
$ echo "test1" > test.txt
$ echo "test2" > test.txt
$ cat test.txt
test2
```

```bash
$ echo "test1" >> test.txt
$ echo "test2" >> test.txt
$ cat test.txt
test1
test2
```

## Docker

**Build an image with a name and a different Dockerfile**

```bash
$ docker build --tag="<repo/yourtag>" --file"<thefile>" .
```

**Delete all containers**

```bash
$ docker rm `(docker ps -a -q)`
```

**Delete all the images**

```bash
$ docker rmi `(docker images -q)`
```

**When to use the build command**

* When something needs to be done just one time, for example installing a library

**When to use the run command**

* When only the content or the configuration of the application/service is changed


| Tables        | Are           | Cool  |
| ------------- |:-------------:| -----:|
| col 3 is      | right-aligned | $1600 |
| col 2 is      | centered      |   $12 |
| zebra stripes | are neat      |    $1 |
