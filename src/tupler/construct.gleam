pub fn one(tuple: #(a), constructor: fn(a) -> t) -> t {
  let #(first) = tuple
  constructor(first)
}

pub fn two(tuple: #(a, b), constructor: fn(a, b) -> t) -> t {
  let #(first, second) = tuple
  constructor(first, second)
}

pub fn three(tuple: #(a, b, c), constructor: fn(a, b, c) -> t) -> t {
  let #(first, second, third) = tuple
  constructor(first, second, third)
}

pub fn four(tuple: #(a, b, c, d), constructor: fn(a, b, c, d) -> t) -> t {
  let #(first, second, third, fourth) = tuple
  constructor(first, second, third, fourth)
}

pub fn five(tuple: #(a, b, c, d, e), constructor: fn(a, b, c, d, e) -> t) -> t {
  let #(first, second, third, fourth, fifth) = tuple
  constructor(first, second, third, fourth, fifth)
}

pub fn six(
  tuple: #(a, b, c, d, e, f),
  constructor: fn(a, b, c, d, e, f) -> t,
) -> t {
  let #(first, second, third, fourth, fifth, sixth) = tuple
  constructor(first, second, third, fourth, fifth, sixth)
}

pub fn seven(
  tuple: #(a, b, c, d, e, f, g),
  constructor: fn(a, b, c, d, e, f, g) -> t,
) -> t {
  let #(first, second, third, fourth, fifth, sixth, seventh) = tuple
  constructor(first, second, third, fourth, fifth, sixth, seventh)
}

pub fn eight(
  tuple: #(a, b, c, d, e, f, g, h),
  constructor: fn(a, b, c, d, e, f, g, h) -> t,
) -> t {
  let #(first, second, third, fourth, fifth, sixth, seventh, eighth) = tuple
  constructor(first, second, third, fourth, fifth, sixth, seventh, eighth)
}

pub fn nine(
  tuple: #(a, b, c, d, e, f, g, h, i),
  constructor: fn(a, b, c, d, e, f, g, h, i) -> t,
) -> t {
  let #(first, second, third, fourth, fifth, sixth, seventh, eighth, nineth) =
    tuple
  constructor(
    first,
    second,
    third,
    fourth,
    fifth,
    sixth,
    seventh,
    eighth,
    nineth,
  )
}
