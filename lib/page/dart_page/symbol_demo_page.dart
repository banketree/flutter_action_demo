import 'package:flutter/material.dart';

class SymbolDemoPage extends StatefulWidget {
  const SymbolDemoPage({Key? key}) : super(key: key);

  @override
  SymbolDemoPageState createState() => SymbolDemoPageState();
}

class SymbolDemoPageState extends State<SymbolDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Symbol Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text("""
       ///反射是一种计算机处理方式，是进程可以访问、检测和修改它本身状态或行为的一种能力。
        ///换一个角度说，反射可以细分为自省——进程在运行时决定自身结构的能力，以及自我修正——进程在运行时改变自身的能力。
        ///Dart 的反射基于 mirror 概念，它指的是反映其他对象的对象，并且目前只支持自省，不支持自我修改。
        main() {
          ClassMirror cm = reflectClass(ChildClass);
          cm.instanceMembers.forEach((key, value) => print('key >>> value'));
        
          ClassMirror simpleCM = reflectClass(Simple);
          Simple simple = simpleCM.newInstance(Symbol.empty, ['hey']) as Simple;
        }
        
        class Simple {
          Simple(a) {
            print('A new Simple: a');
          }
        }
        
        class SuperClass {
          int superField = 0;
          final int superFinalField = 1;
        
          int get superGetter => 2;
        
          set superSetter(x) {
            superField = x;
          }
        
          int superMethod(x) => 4;
        
          static int superStaticField = 5;
          static final int superStaticFinalField = 6;
          static const superStaticConstField = 7;
        
          static int get superStaticGetter => 8;
        
          static set superStaticSetter(x) {}
        
          static int superStaticMethod(x) => 10;
        }
        
        class ChildClass extends SuperClass {
          int aField = 11;
          final int aFinalField = 12;
        
          get aGetter => 13;
        
          set aSetter(x) {
            aField = x;
          }
        
          int aMethod(x) => 15;
        
          static int staticField = 16;
          static final staticFinalField = 17;
          static const staticConstField = 18;
        
          static int get staticGetter => 19;
        
          static set staticSetter(x) {
            staticField = x;
          }
        
          static int staticMethod(x) => 21;
        }
        
        //输出为
        //Symbol("==") >>> MethodMirror on '=='
        //Symbol("hashCode") >>> MethodMirror on 'hashCode'
        //Symbol("toString") >>> MethodMirror on 'toString'
        //Symbol("noSuchMethod") >>> MethodMirror on 'noSuchMethod'
        //Symbol("runtimeType") >>> MethodMirror on 'runtimeType'
        //Symbol("superField") >>> Instance of '_SyntheticAccessor'
        //Symbol("superField=") >>> Instance of '_SyntheticAccessor'
        //Symbol("superFinalField") >>> Instance of '_SyntheticAccessor'
        //Symbol("superGetter") >>> MethodMirror on 'superGetter'
        //Symbol("superSetter=") >>> MethodMirror on 'superSetter='
        //Symbol("superMethod") >>> MethodMirror on 'superMethod'
        //Symbol("aField") >>> Instance of '_SyntheticAccessor'
        //Symbol("aField=") >>> Instance of '_SyntheticAccessor'
        //Symbol("aFinalField") >>> Instance of '_SyntheticAccessor'
        //Symbol("aGetter") >>> MethodMirror on 'aGetter'
        //Symbol("aSetter=") >>> MethodMirror on 'aSetter='
        //Symbol("aMethod") >>> MethodMirror on 'aMethod'
        //A new Simple: hey
        
        //分类
        //在官方 API 页面可以看到所有的 Mirror 类型：dart:mirrors library。Mirror 的主要类型如下
        //
        //ClassMirror：Dart 类的反射类型
        //
        //InstanceMirror：Dart 实例的反射类型
        //
        //ClosureMirror： 闭包的反射类型
        //
        //DeclarationMirror：类属性的反射类型
        //
        //IsolateMirror：Isolate 的反射类型
        //
        //MethodMirror：Dart 方法（包括函数、构造函数、getter/setter 函数）的反射类型
        //
        //通过dart:mirrors包内顶层函数reflecClass 获得类的 “镜像” 的实例，该实例的instanceMembers属性如下
        //
        //MapSymbol, MethodMirror> get instanceMembers;
        //由控制面板输出结果可以看到，对于普通字段（属性），除自身外还列出了以 “=” 结尾的 setter 字段，对于不提供 setter 的final字段则只出现一次。
        //
        //使用staticMembers将列出所有的静态字段
        //
        //cm.staticMembers.forEach((key, value) => print('key >>> value'));
        //输出如下
        //
        //Symbol("staticField") >>> Instance of '_SyntheticAccessor'
        //Symbol("staticField=") >>> Instance of '_SyntheticAccessor'
        //Symbol("staticFinalField") >>> Instance of '_SyntheticAccessor'
        //Symbol("staticConstField") >>> Instance of '_SyntheticAccessor'
        //Symbol("staticGetter") >>> MethodMirror on 'staticGetter'
        //Symbol("staticSetter=") >>> MethodMirror on 'staticSetter='
        //Symbol("staticMethod") >>> MethodMirror on 'staticMethod'
        //可以发现父类静态成员没有出现在列表中，这是因为静态属性不会被继承、不能被ChildClass调用。
        
        //影响
        //在 Java 中，当开发者多次（10w 次以上）访问、修改某一属性时，使用反射的成本会比正常访问高很多，同时会让private修饰符失去作用。
        //在 Dart 中，反射的影响主要在于，编译器使用tree shaking的过程确定应用真正运行时使用的代码，以减少进程的大小。
        //但是使用反射将使tree shaking失效，因为任何代码都有可能被使用，由此严重影响应用的启动时间和内存占用。
        //
        //解决👆一问题的有效方法是，通过代码生成执行反射。为了 “告知” 编译器使用反射的代码和方式，开发者可以使用dart:reflectable库，
        //通过特定元数据注解反射代码。reflectable
        //
        //另一个影响在于最小化，其表示对下载到 Web 浏览器的源进程进行压缩的过程。在最小化过程中，源代码使用的名称在编译代码中被压缩成了短名称。
        //这一过程会对反射带来不良影响，因为最小化之后，原来表示声明的名称的字符串，不再对应进程中的实际名称。
        //
        //为了解决这一问题， Dart 反射使用 symbol 而非字符串作为 key，symbol 会被执行最小化的进程minifier识别并使用与标识符同样的压缩方式。
        //这也是上面的输出中出现Symbol(...)的原因。开发者也可以通过 MirrorSystem 提供的static String getName(Symbol symbol)方法获得非最小化名称字符串。
              """),
            Text("""
            ///
          main() {
            Symbol lib = new Symbol("foo_lib");
            Symbol clsToSearch = new Symbol("Foo");
            reflectInstanceMethods(lib, clsToSearch);
          
          
            // 不透明的动态字符串名称,用于反映库中的元数据
            var varSymbol = Symbol("onlyOne");
            print(varSymbol == #onlyOne);
            print({#onlyOne:"fsdfsdf"});
          }
          
          void reflectInstanceMethods(Symbol libraryName, Symbol className) {
            MirrorSystem mirrorSystem = currentMirrorSystem();
            LibraryMirror libMirror = mirrorSystem.findLibrary(libraryName);
          
            if (libMirror != null) {
              print("Found Library");
              print("checkng...class details..");
              print("No of classes found is : {libMirror.declarations.length}");
              libMirror.declarations.forEach((s, d) => print(s));
          
              if (libMirror.declarations.containsKey(className)) print("found class");
              ClassMirror classMirror = libMirror.declarations[className];
          
              print(
                  "No of instance methods found is {classMirror.instanceMembers.length}");
              classMirror.instanceMembers.forEach((s, v) => print(s));
            }
          }
          
          //输出-
          //Found Library
          //checkng...class details..
          //No of classes found is : 1
          //Symbol("Foo")
          //found class
          //No of instance methods found is 8
          //Symbol("==")
          //Symbol("hashCode")
          //Symbol("toString")
          //Symbol("noSuchMethod")
          //Symbol("runtimeType")
          //Symbol("m1")
          //Symbol("m2")
          //Symbol("m3")
            """),
            Text("""
            ///Symbol是一种用于存储人类可读字符串和经过优化以供计算机使用的字符串之间的关系的方法。
            
            void main() {
              Symbol lib = new Symbol("foo_lib");
              //library name stored as Symbol
            
              Symbol clsToSearch = new Symbol("Foo");
              //class name stored as Symbol
            
              if (checkIfClassAvailableInlibrary(lib, clsToSearch))
                //searches Foo class in foo_lib library
                print("class found..");
            }
            
            bool checkIfClassAvailableInlibrary(Symbol libraryName, Symbol className) {
              MirrorSystem mirrorSystem = currentMirrorSystem();
              LibraryMirror libMirror = mirrorSystem.findLibrary(libraryName);
            
              if (libMirror != null) {
                print("Found Library");
                print("checkng...class details..");
                print("No of classes found is : {libMirror.declarations.length}");
                libMirror.declarations.forEach((s, d) => print(s));
            
                if (libMirror.declarations.containsKey(className)) return true;
                return false;
              }
            
              return false;
            }
            
            //注意，行libMirror.declarations.forEach((s，d)=> print(s)); 将在运行时遍历库中的每个声明，并将声明打印为Symbol类型。
            
            //输出-
            //Found Library
            //checkng...class details..
            //No of classes found is : 1
            //Symbol("Foo") //class name displayed as symbol
            //class found.
            """),
          ],
        ),
      ),
    );
  }
}