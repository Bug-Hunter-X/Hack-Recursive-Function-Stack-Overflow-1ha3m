function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

This code is intended to calculate the factorial of a number. However, it will cause a stack overflow error if the input is a large number. This is because the recursive calls to foo() keep adding to the call stack, and eventually, the stack overflows.

The problem is that Hack does not automatically optimize tail-recursive functions.  Therefore, even though the recursive call to `foo` is the last operation in the `else` branch, the compiler doesn't recognize it as tail-recursive and still adds a new frame to the call stack.  This issue is exacerbated with larger inputs.