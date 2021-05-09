# 目标

方便嵌入到各种宿主语言的语言 方便用户扩展功能
---

## 支持宿主语言
- java 已经实现(server android)
- dart 已经实现(server flutter)
- swift 开发中(macos)
- c# 开发中

# 特性
- 增加内建函数支持 更好的 宿主环境和解释环境的交互
- @开头的函数为内建函数
如何定义
```java
public class Main {
    public static void main(String[] args) {
        try {
            TLLexer lexer = new TLLexer(CharStreams.fromFileName("src/main/tl/test.pg"));
            TLParser parser = new TLParser(new CommonTokenStream(lexer));
            parser.setBuildParseTree(true);
            ParseTree tree = parser.parse();
            
            Scope scope = new Scope();
            Map<String, BuildInFunction> functions = new HashMap<>();
            //增加内建函数
            functions.put("@sum", argv -> new TLValue(argv.stream().mapToLong(TLValue::asByte).sum()));

            EvalVisitor visitor = new EvalVisitor(scope, new HashMap<>(),functions);
            visitor.visit(tree);
        } catch (Exception e) {
            if (e.getMessage() != null) {
                System.err.println(e.getMessage());
            } else {
                e.printStackTrace();
            }
        }
    }
}
```

```
// 布尔表达式
assert(true || false);
assert(!false);
assert(true && true);
assert(!true || !false);
assert(true && (true || false));

// 关系表达式
assert(1 < 2);
assert(666 >= 666);
assert(-5 > -6);
assert(0 >= -1);
assert('a' < 's');
assert('sw' <= 'sw');

// 加减乘除
assert(1 + 999 == 1000);
assert([1] + 1 == [1,1]);
assert(2 - -2 == 4);
assert(-1 + 1 == 0);
assert(1 - 50 == -49);
assert([1,2,3,4,5] - 4 == [1,2,3,5]);

assert(3 * 50 == 150);
assert(4 / 2 == 2);
assert(1 / 4 == 0.25);
assert(999999 % 3 == 0);
assert(-5 * -5 == 25);
assert([1,2,3] * 2 == [1,2,3,1,2,3]);
assert('ab'*3 == "ababab");

// 幂运算
assert(2^10 == 1024);
assert(3^3 == 27);
assert(4^3^2 == 262144); // power is right associative
assert((4^3)^2 == 4096);

// 循环
a = 0;
for i=1 to 10 {
  a = a + i;
}
assert(a == (1+2+3+4+5+6+7+8+9+10));

b = -10;
c = 0;
while b < 0 {
  c = c + b;
  b = b + 1;
}
assert(c == -(1+2+3+4+5+6+7+8+9+10));

// 判断
a = 123;
if a > 200 {
  assert(false);
}

if a < 100 {
  assert(false);
} if a > 124 {
  assert(false);
} if a < 124 {
  assert(true);
}else {
  assert(false);
}

if false {
  assert(false);
} else {
  assert(true);
}

// 函数定义
func twice(n) {
  temp = n + n; 
  return temp; 
}

func squared(n)  {
  return n*n; 
}

func squaredAndTwice(n)  {
  return twice(squared(n)); 
}

func list() {
  return [7,8,9];
}

assert(squared(666) == 666^2);
assert(twice(squared(5)) == 50);
assert(squaredAndTwice(10) == 200);
assert(squared(squared(squared(2))) == ((2^2)^2)^2);
assert(list() == [7,8,9]);
assert(size(list()) == 3);
assert(list()[1] == 8);

// naive bubble sort
func sort(list) {
  while !sorted(list) {
  }
}

func sorted(list){
  n = size(list);
  for i=0 to n-2 {
    if list[i] > list[i+1] {
      temp = list[i+1];
      list[i+1] = list[i];
      list[i] = temp;
      return false;
    }
  }
  return true;
}
numbers = [3,5,1,4,2];
sort(numbers);
assert(numbers == [1,2,3,4,5]);

// recursive calls
func fib(n) {
  if n < 2 {
    return n;
  } else {
    return fib(n-2) + fib(n-1);
  }
}
assert(fib(4) == 3);
sequence = [];
for i = 0 to 10 {
  sequence = sequence + fib(i);
}
assert(sequence == [0,1,1,2,3,5,8,13,21,34,55]);

func fib2(n)         {
  if n < 2 {
    return n;
  } else {
    a = fib2(n-2);
    c = fib2(n-1);
    return a + c;
  }
}
assert(fib2(4) == 3);

// lists and lookups, `in` operator
n = [[1,0,0],[0,1,0],[0,0,1]];
p = [-1, 'abc', true];

assert('abc' in p);
assert([0,1,0] in n);
assert(n[0][2] == 0);
assert(n[1][1] == n[2][2]);
assert(p[2]);
assert(p[1][2] == 'c');

sum = @sum(1,2,3,4,5,6,7);

assert(sum == 28);

println("全部测试通过!");

```


# 在idea中开发

下载 idea 插件 antrl4

![ANTLR config](./image/antlr_config.png)

```
Ctrl_Shift+G
```



# maven 使用
```
<dependency>
  <groupId>net.crtrpt</groupId>
  <artifactId>tiny-language</artifactId>
  <version>${tiny-language-version}</version>
</dependency>
```
## (Un)license

[The Unlicense](http://unlicense.org)

## TODO 
- 生成 jvm bytecode
- swift 支持
- dart 支持 
- llvm os 对os支持
