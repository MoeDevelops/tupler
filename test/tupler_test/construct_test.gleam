import gleeunit/should
import tupler/construct

pub type Person {
  Person1(name: String)
  Person2(name: String, avatar: String)
  Person3(name: String, avatar: String, password: BitArray)
  Person4(name: String, avatar: String, password: BitArray, salt: BitArray)
  Person5(
    name: String,
    avatar: String,
    password: BitArray,
    salt: BitArray,
    age: Int,
  )
  Person6(
    name: String,
    avatar: String,
    password: BitArray,
    salt: BitArray,
    age: Int,
    money: Float,
  )
  Person7(
    name: String,
    avatar: String,
    password: BitArray,
    salt: BitArray,
    age: Int,
    money: Float,
    likes_gleam: Bool,
  )
  Person8(
    name: String,
    avatar: String,
    password: BitArray,
    salt: BitArray,
    age: Int,
    money: Float,
    likes_gleam: Bool,
    programming_languages: List(String),
  )
  Person9(
    name: String,
    avatar: String,
    password: BitArray,
    salt: BitArray,
    age: Int,
    money: Float,
    likes_gleam: Bool,
    programming_languages: List(String),
    tuple: #(String, Int),
  )
}

pub fn one_test() {
  let val1 = "Lucy"
  let tuple = #(val1)
  let person = Person1(val1)

  tuple
  |> construct.one(Person1)
  |> should.equal(person)
}

pub fn two_test() {
  let val1 = "Lucy"
  let val2 = "lucy.svg"
  let tuple = #(val1, val2)
  let person = Person2(val1, val2)

  tuple
  |> construct.two(Person2)
  |> should.equal(person)
}

pub fn three_test() {
  let val1 = "Lucy"
  let val2 = "lucy.svg"
  let val3 = <<"Hello World":utf8>>
  let tuple = #(val1, val2, val3)
  let person = Person3(val1, val2, val3)

  tuple
  |> construct.three(Person3)
  |> should.equal(person)
}

pub fn four_test() {
  let val1 = "Lucy"
  let val2 = "lucy.svg"
  let val3 = <<"Hello World":utf8>>
  let val4 = <<"thdrnesthdnrsbtkd":utf8>>
  let tuple = #(val1, val2, val3, val4)
  let person = Person4(val1, val2, val3, val4)

  tuple
  |> construct.four(Person4)
  |> should.equal(person)
}

pub fn five_test() {
  let val1 = "Lucy"
  let val2 = "lucy.svg"
  let val3 = <<"Hello World":utf8>>
  let val4 = <<"thdrnesthdnrsbtkd":utf8>>
  let val5 = 20
  let tuple = #(val1, val2, val3, val4, val5)
  let person = Person5(val1, val2, val3, val4, val5)

  tuple
  |> construct.five(Person5)
  |> should.equal(person)
}

pub fn six_test() {
  let val1 = "Lucy"
  let val2 = "lucy.svg"
  let val3 = <<"Hello World":utf8>>
  let val4 = <<"thdrnesthdnrsbtkd":utf8>>
  let val5 = 20
  let val6 = 0.5
  let tuple = #(val1, val2, val3, val4, val5, val6)
  let person = Person6(val1, val2, val3, val4, val5, val6)

  tuple
  |> construct.six(Person6)
  |> should.equal(person)
}

pub fn seven_test() {
  let val1 = "Lucy"
  let val2 = "lucy.svg"
  let val3 = <<"Hello World":utf8>>
  let val4 = <<"thdrnesthdnrsbtkd":utf8>>
  let val5 = 20
  let val6 = 0.5
  let val7 = True
  let tuple = #(val1, val2, val3, val4, val5, val6, val7)
  let person = Person7(val1, val2, val3, val4, val5, val6, val7)

  tuple
  |> construct.seven(Person7)
  |> should.equal(person)
}

pub fn eight_test() {
  let val1 = "Lucy"
  let val2 = "lucy.svg"
  let val3 = <<"Hello World":utf8>>
  let val4 = <<"thdrnesthdnrsbtkd":utf8>>
  let val5 = 20
  let val6 = 0.5
  let val7 = True
  let val8 = ["Gleam", "Erlang", "JavaScript"]
  let tuple = #(val1, val2, val3, val4, val5, val6, val7, val8)
  let person = Person8(val1, val2, val3, val4, val5, val6, val7, val8)

  tuple
  |> construct.eight(Person8)
  |> should.equal(person)
}

pub fn nine_test() {
  let val1 = "Lucy"
  let val2 = "lucy.svg"
  let val3 = <<"Hello World":utf8>>
  let val4 = <<"thdrnesthdnrsbtkd":utf8>>
  let val5 = 20
  let val6 = 0.5
  let val7 = True
  let val8 = ["Gleam", "Erlang", "JavaScript"]
  let val9 = #("Uhhh", 5)
  let tuple = #(val1, val2, val3, val4, val5, val6, val7, val8, val9)
  let person = Person9(val1, val2, val3, val4, val5, val6, val7, val8, val9)

  tuple
  |> construct.nine(Person9)
  |> should.equal(person)
}
