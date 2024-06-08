def _haskell_toolchain_impl(ctx):
  return [haskell_common.HaskellToolchainInfo(
    compiler="ghc",
    compiler_flags=[],
  )]
haskell_toolchain = rule(
  implementation = _haskell_toolchain_impl,
)
