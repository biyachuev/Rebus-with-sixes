# https://github.com/Z3Prover/z3
# Z3 Prover
from z3 import *

a, b, c, d, e, f, g, h, i, j, k, m, n, p, q, s = Ints('a b c d e f g h i j k m n p q s')
solve((100 * a + 10 * b + c) * (100 * d + 10 * e + f) == 10000 * s + 1000 * q + 100 * p + 10 * n + g,
      (100 * a + 10 * b + c) * f == 1000 * i + 600 + 10 * h + g,
      (100 * a + 10 * b + c) * e == 1000 * k + 100 * j + 66,
      (100 * a + 10 * b + c) * d == 606 + 10 * m,
      a > 0, a < 10, b >= 0, b < 10, c >= 0, c < 10, d > 0, d < 10, e >= 0, e < 10, f >= 0, f < 10, g >= 0, g < 10,
      h >= 0, h < 10, i > 0, i < 10,
      j >= 0, j < 10, k > 0, k < 10, m >= 0, m < 10, n >= 0, n < 10, n >= 0, n < 10, p >= 0, p < 10, q >= 0, q < 10,
      s > 0, s < 10,
      # (100*a + 10*b + c) * (100*d + 10*e + f) < 100_000,
      # (100*a + 10*b + c) * d < 1000,
      # (100*a + 10*b + c) * d > 99,
      )
