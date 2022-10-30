# The Algorithms - Elm 

[![Gitter chat](https://badges.gitter.im/gitterHQ/gitter.png)](https://gitter.im/TheAlgorithms) &nbsp;

### All algorithms implemented in Elm (for education)

These implementations are for learning purposes. They may be less efficient than the implementations in the Elm standard library.

## How to run

### Install run-elm
Run the following to install [run-elm](https://github.com/jfairbank/run-elm)
```shell script
$ npm install -g run-elm
```

### Execute Elm

Every ELM file has default run in it, and can just be executed using run-elm <file_path>

```shell script
$ run-elm src/Sorting/BubbleSort.elm
Sorting List: [4,23,6,78,1,54,231,9,12]
1,4,6,9,12,23,54,78,231
```

Some files also have option to take arguments as input

```shell script
$ run-elm src/Sorting/BubbleSort.elm 23 45 76 34 65 98
Sorting List: [23,45,76,34,65,98]
23,34,45,65,76,98
```

**OR**

if you want to run all the programs with default arguments
```shell script
$ run-elm src/Main.elm
Sorting List: [4,23,6,78,1,54,231,9,12]
Running Insertion sort: "1,4,6,9,12,23,54,78,231"
Sorting List: [4,23,6,78,1,54,231,9,12]
Running Bubble sort: "1,4,6,9,12,23,54,78,231"
```

## Community Channel

We're on [Gitter](https://gitter.im/TheAlgorithms)! Please join us.

