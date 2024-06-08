load("//tools/haskell:haskell_toolchain.bzl", "haskell_toolchain")


def haskell_binary(name, main, srcs=[], deps=[], toolchain=None):
  native.genrule(
    name = name,
    srcs = srcs,
    outs = [name],
    cmd = "ghc {0} -o $OUT $SRCS".format(main),
    tools = [toolchain],
  )

def haskell_library(name, srcs=[], deps=[]):
  native.genrule(
    name = name,
    srcs = srcs,
    outs = [],
    cmd = "echo building library",
  )
