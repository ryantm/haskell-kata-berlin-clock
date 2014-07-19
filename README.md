# Haskell Kata Setup

1) Make sure your Mac or Linux machine is set up with Haskell and Cabal: https://github.com/bitemyapp/learnhaskell

2) Clone this repo

3) `cd` into this repo and run `cabal sandbox init && cabal install --only-dep` (*Always* install packages in a cabal sandbox. Create and destroy sandboxen with `cabal sandbox init` and `cabal sandbox delete`, respectively. Any `cabal install`s you run while within a sandboxed directory will install packages into that sandbox.)

4) Make sure Ruby is installed on your machine. Install Guard with `gem install guard guard-shell`. Guard will re-run your tests when files change. Start Guard within your sandbox by running `cabal exec guard`; If that doesn't work, run `cabal exec sh`, then run `guard`. Hit `<return>` to see pretty green lights.

5) If these directions don't work for you, let someone know.
