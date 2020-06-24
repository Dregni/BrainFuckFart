# BrainFuckFart

Brainfuckfart is an implementation of the esoteric language brainfuck. It uses the same principles but with added functionnalities

This implementation is an interpreter in c++, as an interpreter the c++ program runs each commands itself in a simulated environnement. This is not a compiler.

## Getting Started

To build the interpreter you should do the following commands on linux :

```sh
cd build
cmake ..
make
```

This will produce an executable named "bff". It is portable so you can put it wherever you like.

To run the interpreter, the command is as follows :

```sh
./bff [brainfuckfart file]
```

For Documentation on BFF refer to the [BrainFuckFart.md]() file

### Prerequisites

You need to have cmake & make installed.

## Tests

Functionnal tests are planned.

## Contributing

A Guideline for contribution is planned.

## Authors

* **Dregni Slovra** - *Initial work*

See also the list of [contributors](https://github.com/Dregni/BrainFuckFart/graphs/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE) file for details

## Acknowledgments

* This project is just begun and was a blast of the moment a proper clean code will be uploaded.
* I'm sorry for the name let's just forget the complete name and call this BFF.
* This project has in mind to build a versatile language that works based on the *idea* behind brainfuck and make it fully usable.
