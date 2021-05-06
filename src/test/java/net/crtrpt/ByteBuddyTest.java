package net.crtrpt;

import net.bytebuddy.ByteBuddy;
import net.bytebuddy.implementation.FixedValue;
import net.bytebuddy.matcher.ElementMatchers;

import java.io.File;
import java.io.IOException;

public class ByteBuddyTest {

    @org.junit.Test
    public void main() throws IllegalAccessException, InstantiationException, IOException {
        new ByteBuddy()
                .subclass(Object.class)
                .name("test")
                .method(ElementMatchers.named("toString"))
                .intercept(FixedValue.value("Hello World!"))
                .make()
                .saveIn(new File("./target/tiny/classes"));
        //测试生成 class 类
//                .load(getClass().getClassLoader())
//                .getLoaded();

//        System.out.println(dynamicType.newInstance().toString());

    }
}