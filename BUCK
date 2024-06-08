load("@haskell//:defs.bzl", "haskell_library", "haskell_binary", "haskell_toolchain")

haskell_toolchain(
  name = "toolchain"
)

haskell_library(
  name = "lib",
  srcs = glob(["src/*.hs"]),
  deps = [],
)

haskell_binary(
  name = "bitbarrel",
  main = "src/Main.hs",
  deps = [":lib"],
  toolchain = ":toolchain",
)

