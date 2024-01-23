# OCParser - OCaml Parser

OCParser is a parser built in OCaml that utilizes the following dependencies:

1. **merlin**: A tool for providing editor support for OCaml.
2. **menhir**: A LR(1) parser generator for OCaml.
3. **yojson**: A JSON library for OCaml.

## Build Instructions

To build the program, use the following command:

```bash
ocamlbuild -use-menhir -tag thread -use-ocamlfind -quiet -pkg core main.native
```

This command utilizes the `ocamlbuild` tool with specific flags and package dependencies to build the parser.

## Running Tests

To test the parser, you can use the provided test file `test.json`. Execute the following command:

```bash
./main.native test.json
```

This will parse the content of the `test.json` file using OCParser and display the output.

## Dependencies

Make sure you have the following dependencies installed before building the project:

- **merlin**: [Installation instructions](https://merlin-suite.github.io/merlin/install.html)
- **menhir**: [Installation instructions](http://gallium.inria.fr/~fpottier/menhir/)
- **yojson**: Install using `opam`:

  ```bash
  opam install yojson
  ```

## Project Structure

The project structure is organized as follows:

- **`ocparser/bin/`**: Contains the source code for the OCParser.
- **`ocparser/test/test.json`**: Sample JSON file for testing the parser.
- **`main.native`**: The executable generated after building the project.

## Usage

After building the project, you can use the generated executable to parse JSON files. For example:

```bash
ocparser/test/test.json
```

## Contributing

Feel free to contribute to the project by opening issues or submitting pull requests. Make sure to follow the coding standards and include appropriate tests.

## License

This project is licensed under the [MIT License](LICENSE).
