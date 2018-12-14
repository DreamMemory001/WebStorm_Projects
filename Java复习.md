# Java 复习

1.在ArrayList进行查找时可以直接使用二分法查找

public static void  binarySearch(double [] a, double number ){}

在进行二分法查找时 先得进行排序工作 调用：
public static void sort(double [] a, int start, int end ){}

他返回的是一个位置信息
封装：
 封装是把过程和数据包围起来，对数据的访问只能通过已定义的接口。
 面向对象计算始于这个基本概念，即现实世界可以被描绘成一系列完全自治、封装的对象，
 这些对象通过一个受保护的接口访问其他对象。封装是一种信息隐藏技术，
 在java中通过关键字private，protected和public实现封装。什么是封装？
 封装把对象的所有组成部分组合在一起，封装定义程序如何引用对象的数据，
 封装实际上使用方法将类的数据隐藏起来，控制用户对类的修改和访问数据的程度。
  适当的封装可以让程式码更容易理解和维护，也加强了程式码的安全性。
一般来说经常接触封装就是类的封装，方法的封装等。比如：来个例子看看；
```
public class People
{
//其中姓名，年龄都是私有属性，外部只能通过get方法访问
private String name;
private int age;
　public String getName() {
　　return name;
　}
　public void setName(String name) {
　　this.name = name;
　}
　public int getAge() {
　　return age;
　}
　public void setAge(int age) {
　　this.age = age;
　}
}
再来看个方法的封装：
//打印一个人name
public void showName() {
   //相应的实现
　　People people = new People();
　　String name = people.getName();
　　System.out.println(name);
}
public static void main(String[] args)
{
　　showName();
}
```
其他人只需要知道这个方法是打印一个人的名字，然后调用得到自己的结果就行，具体这个方法怎么实现是不需要管的。（类木有写完，只是体现封装的大体意思）。
继承：
继承是面向对象最显著的一个特性。继承是从已有的类中派生出新的类，新的类能吸收已有类的数据属性和行为，并能扩展新的能力。 Java继承是使用已存在的类的定义作为基础建立新类的技术，新类的定义可以增加新的数据或新的功能，也可以用父类的功能，但不能选择性地继承父类。这种技术使得复用以前的代码非常容易，能够大大缩短开发周期，降低开发费用。
同样给个例子来看看：
```
class A{
　　//成员变量name
　　private String name;
　　public String getName() {
　　　　return name;
　   }
　   public void setName(String name) {
　　　　this.name = name;
　   }
　　public void showName(){
　　　　System.out.println(name);
　　}
}
//B继承A
class B extends A{
　　private int age;
　　public int getAge() {
　　　　return age;
　　}
　　public void setAge(int age) {
　　　　this.age = age;
　　}
　　public void showAge(){
　　　　System.out.println(age);
　　}
}
public static void main(String[] args)
{
A a = new A();
B b = new B();
//调用B类show年龄的方法
b.showAge();
//因为B继承了A，B也有A的name属性，也能调用A的方法。
b.showName();
}

```
这里就只体现了继承，简单来说，继承就是子类能拥有父类的属性和方法，可以调用。
多态：
按字面的意思就是“多种状态”。在面向对象语言中，接口的多种不同的实现方式即为多态。多态性是允许你
将父对象设置成为一个或更多的他的子对象相等的技术，赋值之后，父对象就可以根据当前赋值给它的子对
象的特性以不同的方式运作
多态的话，我觉得是更好的利用了继承这一特性，然后为什么能实现多态，因为可以重写父类的方法。说重写可能不清楚，具体来说就是子类父类可以存在分别存在名字相同的属性或者方法，然后可视声明的类去调用相应的方法等。看下下面这个例子：
将上面的class B修改一下
//B继承A
```
class B extends A{

　　private int age;
　　public int getAge() {
　　　　return age;
　　}
　　public void setAge(int age) {
　　　　this.age = age;
　　}
　　public void showAge(){
　　　　System.out.println(age);
　　}
　　public void showName(){
　　　　//显示姓名年龄
　　　　//这里的super.name是调用父类的name
　　　　System.out.println(super.name+age);
　　}
}
public static void main(String[] args)
{
　　A a = new A();
　　B b = new B();
　　//调用B类show年龄的方法
　　b.showAge();
　　//调用的是A类自己显示名字的方法
　　a.showName();
　　//因为B重写了A的showName()方法，显示的就是姓名加年龄
　　b.showName();
}



```
这里只是对多态粗略介绍，当然还有更多对多态的衍生，这个以后遇到再说，现在让大家了解下分别是什么作用。
抽象：
抽象是通过分析与综合的途径，运用概念在人脑中再现对象的质和本质的方法，我觉得理解成一种方法比较好。就是我们通过对事物的认知，将某一或者一类事物的属性变化成JAVA语言能识别的类（你可以把一个基础的类看成一个事物，这个类的属性就等于这个事物的的属性）。
举个例子吧，比如我现在要做一个人员作主体的系统，那么我需要把现实生活的人抽象成一个基础的实体类功能程序识别，我会声明一个people的类，这个类包含了name(名字)，age(年龄)，sn(身份证)，sex(性别)，height （身高），等等属性，这些属性基本都是我们现实生活中都有的标签。类抽象好了，就是封装，继承，根据业务进行相应功能逻辑实现。

### 上转型对象


### 接口回调

建立接口类的对象

接口变量中存放对象的引用 （也就是new 想要使用的类的上转型对象 ）

接口回调 （也就是new的对象进行调用接口中的抽象方法）

###  匿名内部类


### 在Java中的一些编程思想

开-闭原则：对扩展开放 对修改关闭

多用组合，少用继承原则

高内聚-低耦合



### 设计模式

分三类：
1.创建型

2.行为型

3.结构型

一个简单的例子:策略模型：

裁判打分最后的得分方案 ：（对于某次比赛：可以从中选取一种方案进行得分计算）

访问者模式的优点：

1. 在不改变集合中元素的情况下，增加新的施加于该元素上的新操作

2.可以将集合中的各元素的某些操作集中到访问者模式上，不仅便于集合的维护，也有利于集合中元素的使用

适合使用的场景：

1.在一个对象结构中，比如某个集合中，包含很多对象 ，想对集合中的对象增加一些操作

2. 需要对集合中的对象进行很多且不相关的操作，而我们又不想修改对象的类，此时可以使用访问者模式

装饰模式的优点：

1.被装饰者和装饰者是松耦合状态，由于装饰仅仅依赖于抽象组件，因此，具体的装饰模式只需要要知道她要装饰的对象是抽象组件的某一个子类的实例，不需要知道集体是哪个类

2. 装饰模式满足“开闭原则”，用户不必修改具体组件，就可以增加新的针对该类组件的具体装饰

3.可以使用多个具体装饰来装饰具体组件的实例


适合场景：

1.程序希望动态的增强类的某个对象的功能，而又不影响该类的其他对象

2.采用继承来增强对象功能不利于系统得到扩展和维护



## 常用实用类

### String类

1. public int length()

2.public boolean equals(String s)

3.public int compareTo(String s) //比较字符串的大小 如果相等返回0 如果大则返回正值， 如果小返回负值

4.public boolean contains(String s )

5.public int indexOf(String s) //从某一位置开始检索字符串 如果存在 则返回位置信息

6.public String subString (int start,int end)//葱start开始截取，到end-1位结束

7.public String trim() // 去掉字符串前后俩端的空格

字符串与基本数据类型的相互转换

1. public static int parseInt/Byte/Short/Long/Float/Double(String s)

```
int x ;
String s = "123455"
x = Interger.parseInt(s);

```
2.public static String valueOf()

3.public void getChars(int start, int end , char c[], int offset)//把当前一部分字符复制一部分到曾指定的数组中 、

4.public char[] toCharArray()//将字符串放到一个字符数组中简单操作
```
char s[] = "15555".toCharArray();

```

正则表达式

public boolean matches(Srting )//判断当前字符串对象是否和参数regex指定的正则表达式匹配

字符串的替换

1.public String replaceAll(String regex ,String replacement)  //方法返回的是一个字符串，该字符串是当前字符串中所有和参数regex指定的正则表达式中所匹配的部分进行（repalcement）的替换

```

String result replaceAll(String regex,String replacement)

String result = “12helloo555”.repalceAll("//d", "你好");

reuslt  = "你好hell你好"

```
2.public String[] split(String regex) //利用正则表达式作为标志分割字符串

```
String regex  = "[\\s\\d\\p{Punct}]+";

String str = "Hello world(male)"

String  word[] = str.split(regex);

输出：
Hello

world

male
```
###  StringBuffer类

1.StringBuffer append(String s/int n/ double n/float n/Object o)//拼接函数

2.public char charAt(int n)//得到指定n位置是哪个的字符

3.public void set setCharAt(it n , char ch)//在位置n用 字符ch替换

4.StringBuffer insert(int index ,String str)//把字符串插到index的位置

5.public StringBuffer reverse()//字符进行反转

6.StringBuffer delete (int startIndex ,int endIndex)//删除俩个位置之间的字符串

6.StringBuffer replace(int startIndex, int endIndex, Srting etr)//替换俩个位置之间的字符串

 ### Date和Calendar类



![Java集合框架:](www.runoob.com/wp-content/uploads/2014/01/2243690-9cd9c896e0d512ed.gif)



## 集合框架

### Map

map使用迭代器

1.Iterator it = map.keyset().iterator();

2.Iterator it = map.values.Iterator();

3.Iterator it  =map.entrySet().iterator();



### Java并发机制的底层实现原理

使用 volatile：他是轻量级的synchronized，Java允许线程访问共享变量

为了保证共享变量能被准确和一致的更新，线程应该确保通过排它锁单独获得这个变量
