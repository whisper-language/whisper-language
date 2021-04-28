fork from https://github.com/bkiers/tiny-language-antlr4
# 特性
- 增加内建函数支持 更好的 宿主环境和解释环境的交互
如何定义
```java
Scope scope = new Scope();
Map<String, BuildInFunction> functions = new HashMap<>();
//增加内建函数            
functions.put("@sum", argv -> new TLValue(argv.stream().mapToLong(p-> p.asLong()).sum()));

EvalVisitor visitor = new EvalVisitor(scope, new HashMap<>(),functions);
```
如何使用
```
a=1;
b=2;

def test (a,b)
    return @sum(1,333333);
end

println(test(1,2));

println(@sum(1,2,3,4,5,6,7));
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
