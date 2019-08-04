## Clang-Format 代码样式格式化工具

---
##### Language:        Cpp

```
格式化的目标语言，值可以为None（无目标语言）、Cpp（应用于C或者C++）、JavaScript（应用于javascript语言）、Java（应用于java语言）。
```

######~~AccessModifierOffset: -1~~

```
访问说明府（public，private等）的偏移量，应用于C++的标准语言关键字，C语言此选项不生效。
```

##### AlignAfterOpenBracket: Align

```
在括号之后的水平对齐参数，适用于圆括号、尖括号、方括号；
配置为Align：对齐括号中的参数，例如：
demo_function(argument1,
              argument2,
              argument3);
            
配置为DontAlign：不要对齐，而是使用ContinuationIndentWidth，例如：
demo_function(argument1,
	argument2);

配置为AlwaysBreak，如果参数单行字符数超出设定的行限制，则在括号后总是另换一行，例如：
demo_function(
	argument1, argument2);
```

##### AlignConsecutiveAssignments: true（bool）

```
如果为true， 对齐连续的赋值，将多行代码的赋值符号对齐；
```

##### AlignConsecutiveDeclarations: true（bool）

```
对齐连续的声明；
```

##### AlignEscapedNewlines: Left

```
用于在转义换行中对齐反斜杠的选项；
配置为DontAlign：不要对齐转义的换行符；
#define TEST \
  int aaaa; \
  int b; \
  int fffffff;
  
配置为Left：尽可能的向左对齐转义的换行符；
#define TEST \
  int aaaa;  \
  int b;     \
  int fffffff;

配置为Right：尽可能的向右对齐转义的换行符；
#define TEST                                                                   \
  int aaaa;                                                                    \
  int b;                                                                       \
  int fffffff;


```

##### AlignOperands:   true（bool）

```
如果为true，水平对齐二进制和三元表达式的操作数；具体来说，会对齐需要在多行拆分的单个表达式操作数，例如：
int aaa = bbbbbbbbbbbb + 
          cccccccccc;
```

##### AlignTrailingComments: true

```
对齐尾随的注释， 包括//、/**/。
  int   a;       /*My comments1*/
  char  b;       /*My comments2*/
  float c;       /*My comments3*/
  char  dd[128]; /*My comments4*/

```

##### AllowAllParametersOfDeclarationOnNextLine: true

```
如果函数调用或者声明参数列表不适合放在一行，则允许将所有参数放到下一行，即便BinPackArguments是false。
true：
callFunction（
	a, b, c, d);

false:
callFunction(a,
			 b,
			 c,
			 d)
```

##### AllowShortBlocksOnASingleLine: false

##### AllowShortCaseLabelsOnASingleLine: false

##### AllowShortFunctionsOnASingleLine: All

##### AllowShortIfStatementsOnASingleLine: true

##### AllowShortLoopsOnASingleLine: true

##### ~~AlwaysBreakAfterDefinitionReturnType: None~~

```
总是在定义返回类型后换行（Deprecated）；
```

##### AlwaysBreakAfterReturnType: None

```
返回类型后换行行为；
配置为None，返回类型后，自动确认是否换行：
class A {
  int f() { return 0; };
};
int f();
int f() { return 1; }

配置为All，返回类型后，总是换行：
class A {
  int
  f() {
    return 0;
  };
};
int
f();
int
f() {
  return 1;
}

配置为TopLevel，在返回顶级函数类型后换行，不包括类中函数的换行：
  int f() { return 0; };
};
int
f();
int
f() {
  return 1;
}

配置为AllDefinitions，在所有的函数返回类型后换行：
class A {
  int
  f() {
    return 0;
  };
};
int f();
int
f() {
  return 1;
}

配置为TopLevelDefinitions，总是在顶级函数返回类型后换行，不包括类中函数类型的换行：
class A {
  int f() { return 0; };
};
int f();
int
f() {
  return 1;
}
```

##### AlwaysBreakBeforeMultilineStrings: true

```
如果是true，总是在多行字符串之前换行，此标志用于表示文件中有多个多行字符串看起来更一致的情况；
true：
aaaa = 
	"bbbb"
	"cccc";

false:
aaaa = "bbbb"
	   "cccc";
```



##### ~~AlwaysBreakTemplateDeclarations: true~~

##### BinPackArguments: true

```
true 不处理
false 函数调用的参数要么在同一行，要么各自一行；

true:
void f() {
  f(aaaaaaaaaaaaaaaaaaaa, aaaaaaaaaaaaaaaaaaaa,
    aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa);
}

false:
void f() {
  f(aaaaaaaaaaaaaaaaaaaa,
    aaaaaaaaaaaaaaaaaaaa,
    aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa);
}
```

##### BinPackParameters: true

```
true 不处理
false 函数形参要么在同一行，要么各自一行；

true:
void f(int aaaaaaaaaaaaaaaaaaaa, int aaaaaaaaaaaaaaaaaaaa,
       int aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa) {}

false:
void f(int aaaaaaaaaaaaaaaaaaaa,
       int aaaaaaaaaaaaaaaaaaaa,
       int aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa) {}
```

##### BraceWrapping:   

```
当BreakBeforeBraces 配置为Custom生效，否则，将被忽略，用于控制花括号前的换行行为。
```

######   ~~AfterClass:      false~~

  AfterControlStatement: true
  AfterEnum:       false
  AfterFunction:   true

######   ~~AfterNamespace:  false~~

######   ~~AfterObjCDeclaration: false~~

######   AfterStruct:     false

  AfterUnion:      false
  AfterExternBlock: false

######   ~~BeforeCatch:     false~~

  BeforeElse:      false
  IndentBraces:    false
  SplitEmptyFunction: true

######   ~~SplitEmptyRecord: true~~

######   ~~SplitEmptyNamespace: true~~

##### BreakBeforeBinaryOperators: None

```
配置为None：在二元操作符后换行；
LooooooooooongType loooooooooooooooooooooongVariable =
    someLooooooooooooooooongFunction();

bool value = aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa +
                     aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa ==
                 aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa &&
             aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa >
                 ccccccccccccccccccccccccccccccccccccccccc;

配置为NonAssignment：在除赋值符之外的二元操作符前换行；
LooooooooooongType loooooooooooooooooooooongVariable =
    someLooooooooooooooooongFunction();

bool value = aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                     + aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                 == aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
             && aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                    > ccccccccccccccccccccccccccccccccccccccccc;

配置为All: 在二元操作符前换行；
LooooooooooongType loooooooooooooooooooooongVariable
    = someLooooooooooooooooongFunction();

bool value = aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                     + aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                 == aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
             && aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                    > ccccccccccccccccccccccccccccccccccccccccc;

```

##### BreakBeforeBraces: Custom

```
支持多种大括号换行风格，可配置为Attach、Linux、Mozilla、Allman、GNU、WebKit、Custom；
配置为Attach：始终将大括号附加到周围的上下文中；
配置为Linux：除函数、命名空间、类定义大括号换行，其他与Attach类似；

需要自定义大括号换行风格的话，此项配置为Custom，然后通过BraceWrapping配置各个子项风格。
```

##### ~~BreakBeforeInheritanceComma: false~~

##### BreakBeforeTernaryOperators: true

```
配置为true：三元操作符之前换行；
veryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryLongDescription
    ? firstValue
    : SecondValueVeryVeryVeryVeryLong;
    
配置为false： 三元操作符之后换行；
veryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryLongDescription ?
    firstValue :
    SecondValueVeryVeryVeryVeryLong;
```

##### ~~BreakConstructorInitializersBeforeComma: false~~

##### ~~BreakConstructorInitializers: BeforeColon~~

##### ~~BreakAfterJavaFieldAnnotations: false~~

##### BreakStringLiterals: true

```
配置为true，允许字符串换行；
```

##### ColumnLimit:     80

```
每行字符限制，0代表没有限制；
```

##### CommentPragmas:  '^ IWYU pragma:'

```
描述具有特殊含义的注释的正则表达式，不应该被多行拆分或者以其他方式改变。
```

##### ~~CompactNamespaces: false~~

##### ~~ConstructorInitializerAllOnOneLineOrOnePerLine: true~~

##### ~~ConstructorInitializerIndentWidth: 4~~

##### ContinuationIndentWidth: 4

```
行连续的缩进宽度。
```

##### ~~Cpp11BracedListStyle: true~~

##### DerivePointerAlignment: true

```
配置为true，继承最常用的指针和引用对齐方式，PointerAlignment作为备用。
```

##### DisableFormat:   false

```
完全禁用格式化。
```

##### ~~ExperimentalAutoDetectBinPacking: false~~

##### ~~FixNamespaceComments: true~~

##### ForEachMacros:   

```
- foreach
- Q_FOREACH
- BOOST_FOREACH
```

##### IncludeBlocks:   Preserve

```
根据include排序类型，将多个include块进行排序；
配置为Preserver，分别对每个#include块进行排序：
#include "b.h"               into      #include "b.h"

#include <lib/main.h>                  #include "a.h"
#include "a.h"                         #include <lib/main.h>

配置为Merge，将多个#include块合并在一起并排序为一个：
#include "b.h"               into      #include "a.h"
                                       #include "b.h"
#include <lib/main.h>                  #include <lib/main.h>
#include "a.h"

配置为Regroup，将多个#include块合并在一起并排序为一个，然后根据类别优先级拆分成组，见IncludeCategories：
#include "b.h"               into      #include "a.h"
                                       #include "b.h"
#include <lib/main.h>
#include "a.h"                         #include <lib/main.h>

```



##### IncludeCategories: 

```
  - Regex:           '^<ext/.*\.h>'
    Priority:        2
  - Regex:           '^<.*\.h>'
    Priority:        1
  - Regex:           '^<.*'
    Priority:        2
  - Regex:           '.*'
    Priority:        3
```

##### IncludeIsMainRegex: '([-_](test|unittest))?$'

##### IndentCaseLabels: true

```
case是否缩进；
false:                                 true:
switch (fool) {                vs.     switch (fool) {
case 1:                                  case 1:
  bar();                                   bar();
  break;                                   break;
default:                                 default:
  plop();                                  plop();
}                                     
```

##### IndentPPDirectives: None

```
预处理指令的缩进样式；
配置为None， 不缩进任何指令：
#if FOO
#if BAR
#include <foo>
#endif
#endif

配置为AfterHash，缩进，样式为：
#if FOO
#  if BAR
#    include <foo>
#  endif
#endif

配置为BeforeHash，缩进，样式为：
#if FOO
  #if BAR
    #include <foo>
  #endif
#endif

```

##### IndentWidth:     2

```
缩进宽度。
```

##### IndentWrappedFunctionNames: false

```
函数在返回类型换行后，是否缩进函数名；
true:
LoooooooooooooooooooooooooooooooooooooooongReturnType
    LoooooooooooooooooooooooooooooooongFunctionDeclaration();

false:
LoooooooooooooooooooooooooooooooooooooooongReturnType
LoooooooooooooooooooooooooooooooongFunctionDeclaration();
```

##### ~~JavaScriptQuotes: Leave~~

##### ~~JavaScriptWrapImports: true~~

##### KeepEmptyLinesAtTheStartOfBlocks: false

```
保留块开始的空行；
true:                                  false:
if (foo) {                     vs.     if (foo) {
                                         bar();
  bar();                               }
}
```

##### MacroBlockBegin: ''

```
开始一个块的宏的正则表达式。
```

##### MacroBlockEnd:   ''

```
结束一个块的宏的正则表达式。
```

##### MaxEmptyLinesToKeep: 1

```
最大连续空行；
```

##### ~~NamespaceIndentation: None~~

##### ~~ObjCBlockIndentWidth: 2~~

##### ~~ObjCSpaceAfterProperty: false~~

~~ObjCSpaceBeforeProtocolList: false~~

PenaltyBreakAssignment: 2
PenaltyBreakBeforeFirstCallParameter: 1
PenaltyBreakComment: 300
PenaltyBreakFirstLessLess: 120
PenaltyBreakString: 1000
PenaltyExcessCharacter: 1000000
PenaltyReturnTypeOnItsOwnLine: 200

##### PointerAlignment: Left

```
指针*号对齐方式；
配置为Left，*号对齐到左侧：
int* a;

配置为Right， *号对齐到右侧：
int *a;

配置为Middle， *号对齐到中间：
int * a;
```

##### RawStringFormats: 

```
  - Delimiter:       pb
    Language:        TextProto
    BasedOnStyle:    google

```

##### ReflowComments:  true

```
重新格式化注释；
false:
// veryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryLongComment with plenty of information
/* second veryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryLongComment with plenty of information */

true:
// veryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryLongComment with plenty of
// information
/* second veryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryLongComment with plenty of
 * information */
```

##### SortIncludes:    true

```
对include排序；
false:                                 true:
#include "b.h"                 vs.     #include "a.h"
#include "a.h"                         #include "b.h"
```

##### SortUsingDeclarations: true

```
对声明排序；
```

##### SpaceAfterCStyleCast: false

```
在C风格类型转换后添加空格；
true:                                  false:
(int) i;                       vs.     (int)i;
```

##### ~~SpaceAfterTemplateKeyword: true~~

##### SpaceBeforeAssignmentOperators: true

```
true：赋值运算操作符两侧加空格；
false：赋值运算操作两侧移除空格；
```

##### SpaceBeforeParens: ControlStatements

```
在开圆括号之前添加一个空格：
配置为Never：不在圆括号之前添加空格；
void f() {
  if(true) {
    f();
  }
}

配置为ControlStatements：在控制语句（if、for、while、switch...）的圆括号之前添加一个空格；
void f() {
  if (true) {
    f();
  }
}

配置为Always：总是在开圆括号之前添加空格，除了语法不允许的情况和其他规格定义的情况；
void f () {
  if (true) {
    f ();
  }
}
```

##### SpaceInEmptyParentheses: false

```
是否在空的括号中添加空格；
true:                                false:
void f( ) {                    vs.   void f() {
  int x[] = {foo( ), bar( )};          int x[] = {foo(), bar()};
  if (true) {                          if (true) {
    f( );                                f();
  }                                    }
}                                    }
```

##### SpacesBeforeTrailingComments: 2

```
在尾随的注释前添加的空格数，只适用于//；
SpacesBeforeTrailingComments: 3
void f() {
  if (true) {   // foo1
    f();        // bar
  }             // foo
}
```

##### ~~SpacesInAngles:  false~~

```
在尖括号中前后加空格；
```

##### SpacesInContainerLiterals: true

```
true:                                  false:
var arr = [ 1, 2, 3 ];         vs.     var arr = [1, 2, 3];
f({a : 1, b : 2, c : 3});              f({a: 1, b: 2, c: 3});
```

##### SpacesInCStyleCastParentheses: false

```
在C风格类型转换的括号中添加空格；
true:                                  false:
x = ( int32 )y                 vs.     x = (int32)y
```

##### SpacesInParentheses: true

```
在圆括号前后添加空格；
true:                                  false:
t f( Deleted & ) & = delete;   vs.     t f(Deleted &) & = delete;
```

##### SpacesInSquareBrackets: false

```
在方括号前后添加空格；
true:                                  false:
int a[ 5 ];                    vs.     int a[5];
```

##### Standard:        Auto

```
标准兼容，Cpp03、Cpp11、Auto。
```

##### TabWidth:        4

```
制表符宽度。
```

##### UseTab:          Never

```
是否使用制表符，可配置为Never、ForIndentation、ForContinuationAndIndentation、Always，推荐配置为Never，不使用制表符。
```

...