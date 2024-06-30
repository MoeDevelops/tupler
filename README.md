# tupler

[![Package Version](https://img.shields.io/hexpm/v/tupler)](https://hex.pm/packages/tupler)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/tupler/)

```sh
gleam add tupler
```

```gleam
import tupler/construct

pub type Mascot {
  Mascot(name: String, language: String, is_awesome: Bool)
}

pub fn main() {
  let tuple = #("Lucy", "Gleam", True)

  tuple
  |> construct.three(Mascot)
}
```

Further documentation can be found at <https://hexdocs.pm/tupler>.

## Development

```sh
gleam run   # Run the project
gleam test  # Run the tests
gleam shell # Run an Erlang shell
```
