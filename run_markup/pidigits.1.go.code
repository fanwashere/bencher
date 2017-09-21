package main

func main() {
  var N = 10000000

  var w int = 0
  var k int = 1
  var n1 int = 4
  var n2 int = 3
  var d int = 1
  var f10 int = 10
  var n10 int = -10

  var i int = 0
  for {
    u := n1 / d
    v := n2 / d
    if u == v {
      i += 1

      if i == N {
        break
      }

      u  = d * n10 * u
      n1 = n1 * f10
      n1 = n1 + u
      n2 = n2 * f10
      n2 = n2 + u
    } else {
      k2 := k << 1
      u  = n1 * (k2 - 1)
      v  = n2 + n2
      w  = n1 * (k - 1)
      n1 = u + v
      u  = n2 * (k + 2)
      n2 = w + u
      d  = d * (k2 + 1)
      k += 1
    }
  }
}

