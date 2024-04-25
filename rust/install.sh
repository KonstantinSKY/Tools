#!/bin/bash

. exe.lib

H1 "Rust & ECO Instalation"

h2 Installing  Rust
exe "$ curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh"


h2 Checkink rusup Version
exe "rustc --version;" -n

h2 Checkink Cargo Version
exe "Cargo --version;" -n

h2 Update to new Version
exe "rustup update"

h2 Open Local Documentation
exe "rustup doc"
end

