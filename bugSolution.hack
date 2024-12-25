function foo_iterative(x: int): int {
  var result: int = 1;
  var i: int = 1;

  while (i <= x) {
    result = result * i;
    i = i + 1;
  }

  return result;
}

function main(): void {
  echo foo_iterative(5);
}

This iterative version avoids the recursive calls, preventing stack overflow errors.  It calculates the factorial using a loop, making it suitable for larger inputs.