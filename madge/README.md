# Madge

This container makes
[madge](https://www.npmjs.com/package/madge) with Graphviz
available in order to generate your project dependency graph.

The container entrypoint is set to `madge` where you can pass specific
options such as:

```sh
docker run -ti --rm -v $(pwd):/tmp ghcr.io/zanona/madge:1 src -i image.svg
```

A default [`.madgerc` is provided](./.madgerc) in case your project directory doesn't have one.

## Caveat

#### PNG Font

Keep in mind that for png/jpg graph generation it is going to use "Droid" font
since it's the one installed under this container image.

For a list of additional list of fonts which can be installed on alpine linux,
please refer to https://wiki.alpinelinux.org/wiki/Fonts and make sure to
rebuild the Dockerfile containing those fonts.

#### GTS triangulation

I couldn't find the GTS package available on alpine, so at the moment it's not
possible to use the `sfdp` layout mode.

[related](https://github.com/pahen/madge/blob/master/README.md#how-do-i-fix-the-graphviz-not-built-with-triangulation-library-error-when-using-sfdp-layout)
