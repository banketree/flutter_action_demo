import 'package:flutter/material.dart';

class WithDemoPage extends StatefulWidget {
  const WithDemoPage({Key? key}) : super(key: key);

  @override
  WithDemoPageState createState() => WithDemoPageState();
}

class WithDemoPageState extends State<WithDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("With|Mix Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text("""
            //mixin 可以理解为对类的一种“增强”，但它与单继承兼容，因为它的继承关系是线性的。
            //with 后面的类会覆盖前面的类的同名方法
            //当我们想要在不共享相同类层次结构的多个类之间共享行为时，可以使用 mixin
            //当声明一个 mixin 时， on 后面的类是使用 这个mixin 的父类约束。也就是说一个类若是要 with 这个 mixin，则这个类必须继承或实现这个 mixin 的父类约束
              """),
            Text("""
            ///mixin : 从个人理解来看，可以把它想象为Kotlin中的接口(和Java的区别是可以带非抽象的属性和方法)，而多个mixin可以相互覆盖以实现组合

              mixin TestMixin {
                void test() {
                  print('test');
                }
              
                int testInt = 1;
              
                void test2();
              }
              
              class Test with TestMixin {
                @override
                test2() {
                  print('test2');
                }
              }
              
              void test1() {
                Test().test(); // test
                print(Test().testInt); // 1
                Test().test2(); // test2
              }
              
              //////////////////////////////////////////////////////////////////////////////////
              //mixin本身可以是抽象的，可以定义各种方法属性，等后续类去实现
              class BaseObject {
                void method() {
                  print('call method');
                }
              }
              
              mixin TestMixin2 on BaseObject {
                void test() {
                  print('test');
                }
              
                int testInt = 1;
              
                void test2() {
                  method();
                }
              }
              
              class Test2 extends BaseObject with TestMixin {
                @override
                void test2() {
                  print('Test2:test2');
                }
              }
              
              void test2() {
                Test2().test(); // test
                print(Test2().testInt); // 1
                Test2().test2(); // call method
              }
              
              //////////////////////////////////////////////////////////////////////////////////
              mixin TestMixin3 {
                void test() {
                  print('test');
                }
              
                int testInt = 1;
              
                void test2();
              }
              
              mixin TestMixin3_1 {
                int testInt = 2;
              
                void test3() {
                  print('test3');
                }
              }
              
              class Test3 with TestMixin3, TestMixin3_1 {
                @override
                test2() {
                  print('test2');
                }
              }
              
              void test3() {
                Test3().test(); // test
                print(Test3().testInt); // 2
                Test3().test2(); // test2
                Test3().test3(); // test3
              }
              
              ///如果mixin存在冲突的部分，后面会覆盖前面的，没有冲突的则会保留，所以可以存在后面的mixin修改了前面的mixin的一部分逻辑的情况，
              ///不需要直接继承即可实现覆盖，避免了更复杂的继承关系
              
              //////////////////////////////////////////////////////////////////////////////////
              
              mixin TestMixin4 on BaseClass {
                void init() {
                  print('TestMixin init start');
                  super.init();
                  print('TestMixin init end');
                }
              }
              
              mixin TestMixin4_1 on BaseClass {
                void init() {
                  print('TestMixin2 init start');
                  super.init();
                  print('TestMixin2 init end');
                }
              }
              
              class BaseClass {
                void init() {
                  print('Base init');
                }
              
                BaseClass() {
                  init();
                }
              }
              
              class TestClass4 extends BaseClass with TestMixin4, TestMixin4_1 {
                @override
                void init() {
                  print('TestClass init start');
                  super.init();
                  print('TestClass init end');
                }
              
                @override
                void method() {
                  print('TestClass method');
                }
              }
              
              void test4() {
                TestClass4();
              
                /// TestClass init start
                /// TestMixin2 init start
                /// TestMixin init start
                /// Base init
                /// TestMixin init end
                /// TestMixin2 init end
                /// TestClass init end
              }
              """),
            Text("""
            ////////////////////////////
            ///在面向对象的编程语言中，mixin（或mix-in）是一个类，其中包含供其他类使用的方法，而不必成为其他类的父类。
            ///这些其他类如何获得对mixin方法的访问权限取决于语言。 混合素有时被描述为“包含”而不是“继承”。
            ///Mixins鼓励代码重用，并且可用于避免多重继承可能导致的继承歧义（“钻石问题”），或解决语言中对多重继承的支持不足的问题。
            ///混合也可以看作是已实现方法的接口。 此模式是强制执行依赖关系反转原理的示例。
            //
            
            class Person {
              eat() {
                print('Person eat');
              }
            }
            
            mixin Dance {
              dance() {
                print('Dance dance');
              }
            }
            
            mixin Sing {
              sing() {
                print('Sing sing');
              }
            }
            
            mixin Code on Person {
              code() {
                print('Code code');
              }
            }
            
            class A extends Person with Dance, Sing {}
            
            class B extends Person with Sing, Code {}
            
            class C extends Person with Code, Dance {}
            
            test() {
              A a = A();
              a.eat();
              a.dance();
              a.sing();
            }
            
            ////////////////////////////////////////////////////////////////////////////////
            class TestC extends Person with Code, Dance {
              //error
              dance() {}
            }
            
            ///添加限定条件，使用关键字 on
            ///使用关键字 on 限定Code 只能被 Person 或者其子类 mixin
            class TestD extends Person with Code {}
            
            ///如何处理多个类有同一方法的情况 -> 将前面的覆盖了
            ///混合类时，进行混合的多个类是线性的，这是他们共有方法不冲突的原因，混合的顺序非常重要，因为它决定了混合时相同的方法的处理逻辑。
            
            ////////////////////////////////////////////////////////////////////////////////
            abstract class AB {
              AB() {
                print("AB Constructor");
                init();
              }
            
              init() {
                print("AB init");
              }
            }
            
            mixin AC on AB {
              @override
              init() {
                super.init();
                print("AC init");
              }
            }
            
            mixin AD on AB {
              @override
              init() {
                super.init();
                print("AD init");
              }
            }
            
            class ABCD extends AB with AC, AD {}
            
            test4() {
              ABCD().init();
            //  flutter: AB Constructor
            //  flutter: AD init
            //  flutter: AC init
            //  flutter: AB init
            }
            
            ////////////////////////////////////////////////////////////////////////////////
            ///Mixins 使我们可以在无需继承父类的情况下为此类添加父类的“功能”，可以在同一个类中具有一个父级和多个 mixin 组件。
            ///Mixins 不可以声明任何构造函数。
            ///给 Mixins 添加限定条件使用 on 关键字。
            ///混合使用 with 关键字，with 后面可以是 class、abstract class 和 mixin 的类型。
            ///Mixins 不是多重继承，相反，它只是在多个层次结构中重用类中的代码而无需扩展它们的一种方式。
            main() {
              test();
              test4();
            }
            """),
          ],
        ),
      ),
    );
  }
}