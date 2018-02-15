Scilla: A Smart Contract Intermediate Level Language

## Build requirements

Install the folowing dependencies for OCaml:

* `opam`, package manager for OCaml, version >= 1.2'
* `jbuilder` build tool, can be installed via `opam install jbuilder`
* `ocamlc`, version >= 4.05

## Building and Running

Just run `make` from the root folder

To invoke a simple runner (subject to
[ongoing implementation](./ROADMAP.md)), execute from the project
root:

```
./_build/install/default/bin/scilla-runner resources/ resources/bool.sc 
```

## Where to find binaries

* The runnables are put into the folder

```
$PROJECT_DIR/_build/install/default/bin
```

## Using Ocaml with Emacs

The following extensions would be useful:

* [tuareg](https://github.com/ocaml/tuareg) for syntax highlighting
* [merlin](https://github.com/ocaml/merlin/wiki/emacs-from-scratch) for auto-completion
* [ocp-indent](https://github.com/OCamlPro/ocp-indent) for smart indentation