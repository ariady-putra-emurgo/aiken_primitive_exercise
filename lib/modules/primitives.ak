use aiken/builtin
use aiken/crypto.{VerificationKeyHash}
use cardano/address.{Script, VerificationKey}
use cardano/assets.{Lovelace}
use cardano/governance.{
  ConstitutionalCommitteeMember, DelegateRepresentative, StakePool,
}
use cardano/governance/voter

test integer() {
  // Fix these:
  let i = Three
  let j: Int = "22"

  let k = 0xff
  let l = 4_000

  let i_is_less_than_j = i_j
  let j_is_greater_or_equal_to_i = j_i
  let k_is_less_or_equal_to_l = k_l
  let l_is_greater_than_k = l_k

  and {
    i_is_less_than_j,
    j_is_greater_or_equal_to_i,
    k_is_less_or_equal_to_l,
    l_is_greater_than_k,
    // IF i + j == 25 is True,
    i + j == 25,
    // THEN solve these:
    l - k == x,
    i * j == x,
    l / i == x,
    l % i == x,
  }
}

test bytearray() {
  // Fix these:
  let a: ByteArray = abcd
  let b = 1234

  let c = "ABCD"
  let d = [0xab, 0xcd]

  // These conditions are ALL True:
  and {
    a == "abcd",
    b == "1234",
    c == d,
  }
}

// ## Bool

test boolean() {
  // Fix these:
  let y: Bool = 1
  let n = 0

  y? || n?
}

/// Fix test tuple() in any way possible, may be more than 1 ways.
test tuple() {
  let t2: (ByteArray, ByteArray) = (1, "2")
  let t3: (Int, Int, Int) = ("3", 4, 0)
  let t4 = (0, 123, 4, 0x56)

  let (a, _b, _c, _d) = t4
  let (_a, b) = t2
  let (_1, _2, c) = t3

  and {
    a == c,
    b % 2 == 0,
  }
}

/// Fix test list() in any way possible, may be more than 1 ways.
test list() {
  let ls: List<Int> = [1, "2"]
  let bs = ["3", 4, 0]
  let os = [0, 123, 4, 0x56]

  and {
    [ls, 3] == [1, "2", 3],
    ["123", ..bs] == ["123", "3", 4, 0],
    [os] == [0, 123, 4, 0x56],
  }
}

/// Fix test option() in any way possible, may be more than 1 ways.
test option() {
  let someone: Option<Bool> = Some(1)
  let who = None

  expect Some(one) = who
  when someone is {
    Some(body) -> body == one
    _ -> False
  }
}

/// Fix test ordering() in any way possible, may be more than 1 ways.
test ordering() {
  let key = VerificationKey("VerificationKeyHash")
  let script = Script("ScriptHash")

  let pool = StakePool("VerificationKeyHash")

  and {
    ConstitutionalCommitteeMember(script) > ConstitutionalCommitteeMember(key),
    DelegateRepresentative(key) < DelegateRepresentative(script),
    voter.compare(pool, pool) == Equal,
  }
}

/// Fix test data() in any way possible, may be more than 1 ways.
test data() {
  let a: Data = "1"
  let b: Data = 0xabcd
  let c: Data = False

  expect s: Data = a
  expect h: Data = b
  expect n: Data = c

  and {
    s == "1",
    h == 43_981,
    !n,
  }
}
