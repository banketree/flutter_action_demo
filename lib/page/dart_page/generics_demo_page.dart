import 'package:flutter/material.dart';

class GenericsDemoPage extends StatefulWidget {
  const GenericsDemoPage({Key? key}) : super(key: key);

  @override
  GenericsDemoPageState createState() => GenericsDemoPageState();
}

class GenericsDemoPageState extends State<GenericsDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Generics Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text("""
            ///泛型Generics对数据类型增加了限制条件，这样的集合称为类型安全集合，类型安全是一种编程函数，可确保存储块只能包含特定数据类型的数据。
            ///泛型经常是被要求类型安全的，而且还有很多优势：
            ///合理的指定泛型类型能够更好的生成代码
            ///使用泛型减少重复代码
            """),
            Text("""
            void test() {
              List<String> logTypes = [];
              logTypes.add("WARNING");
              logTypes.add("ERROR");
              logTypes.add("INFO");
            //  logTypes.add(1);
            
              //iterating across list
              for (String type in logTypes) {
                print(type);
              }
            }
            
            void test2() {
              Set<int> numberSet = Set<int>();
              numberSet.add(100);
              numberSet.add(20);
              numberSet.add(5);
              numberSet.add(60);
              numberSet.add(70);
            
              //numberSet.add("Tom");
              //compilation error;
              print("Default implementation  :{numberSet.runtimeType}");
            
              for (var no in numberSet) {
                print(no);
              }
            }
            
            void test3() {
              Queue<int> queue = Queue<int>();
              print("Default implementation {queue.runtimeType}");
              queue.addLast(10);
              queue.addLast(20); 
              queue.addLast(30);
              queue.addLast(40);
              queue.removeFirst();
            
              for (int no in queue) {
                print(no);
              }
            }
            
            void test4() {
              Map<String, String> m = {'name': 'Tom', 'Id': 'E1001'};
              print('Map :m');
            }
              """),
            Text("""
            ///泛型具体化
            class BoqVO {}
            
            class Response {
              void hydrate<T>() {
                print(T.runtimeType); // always prints _Type
            
                if (T is BoqVO) {
                  print("IF");
                } else {
                  print("ELSE"); // always goes into ELSE block
                }
              }
            }
            
            //定义：类型参数化
            //泛型方法可以约束一个方法使用同类型的参数、返回同类型的值，可以约束里面的变量类型。
            //泛型:通俗的理解: 就是解决类的接口, 方法, 复用性, 以及对不特定数据类型的支持(类型校验),
            //在通俗一点,就是对于类型的约束.
            
            //使用泛型的原因
            //在 Dart 中类型是可选的，可以通过泛型来限定类型。
            //使用泛型可以有效地减少重复的代码。
            //泛型可以在多种类型之间定义同一个实现，同时还可以继续使用检查模式和静态分析工具提供的代码分析功能。
            //如果你需要更加安全的类型检查，则可以使用 参数化定义。
            
            //泛型的好处
            //泛型的好处不仅仅是保证代码的正常运行：
            //正确指定泛型类型可以提高代码质量。
            //使用泛型可以减少重复的代码。
            
            //声明泛型类,比如声明一个 Array 类，实际上就是 List 的别名，而 List 本身也支持泛型的实现
            class Array<T> {
              List _list = new List<T>();
            
              Array();
            
              void add<T>(T value) {
                this._list.add(value);
              }
            
              get value {
                return this._list;
              }
            }
            
            //泛型接口
            abstract class Storage<T> {
              Map m = new Map();
            
              void set(String key, T value);
            
              void get(String key);
            }
            
            class Cache<T> implements Storage<T> {
              @override
              Map m = new Map();
            
              @override
              void get(String key) {
                print(m[key]);
              }
            
              @override
              void set(String key, T value) {
                print('set successed!');
                m[key] = value;
              }
            }
            
            //泛型函数
            //最初，Dart 的泛型只能用于类。 新语法的泛型，允许在方法和函数上使用类型参数：
            T getInfo<T>(T value) {
              T num = value;
              return num;
            }
            
            //类泛型
            //dart中可以在定义类是使用泛型.
            //在类名字后面使用尖括号(<...>)来指定 泛型类型。
            //限制泛型类型
            //说明:
            //当需要对泛型的具体类型进行限定的时候，可以使用extends 关键字来限定泛型参数的具体类型。
            class Person<T> {
              T sayhello(T value) {
                print("hello,我是value");
                return value;
              }
            }
            
            
            ////////////////////////////////////////////////////////////////////////////////
            class A1<T extends BoqVO> {
              T name;
            
              T getName() {
                return name;
              }
            
              R getR<R>() {}
            }
            
            T getSome<T>() {}
            
            var getC = <T>(T name) => name;
            
            test5(){
              getC<String>("hello");
              print(getSome<String>());
            }
            """),
          ],
        ),
      ),
    );
  }
}