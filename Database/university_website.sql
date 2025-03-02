-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2025 at 03:05 PM
-- Server version: 8.0.39
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(10000) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`, `created_at`) VALUES
(1, 'a', 'bAa@a.com', 'a', 'a', '2025-01-21 19:35:40'),
(2, 'b', 'bdAa@a.com', 'd', 'd', '2025-01-21 19:36:03'),
(3, 'j', 'bAja@a.com', 'j', 'j', '2025-01-21 19:38:03'),
(4, 'b', 'bdAa@a.com', 'd', 'd', '2025-01-21 19:39:33'),
(5, 'a', 'Aa@a.com', 'd', 'j', '2025-01-21 19:41:17'),
(6, 'jtryr', 'Aacvnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn@a.com', 'r', 'ry', '2025-01-21 19:41:35'),
(7, 'jtryr', 'Aacvnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn@a.com', 'r', 'ry', '2025-01-21 19:55:44'),
(8, 'jtryr000', 'Aacvnnnnnnn@a.com', 'rhgth', 'rynjnj', '2025-01-21 19:56:26'),
(9, 'jtryr000g', 'Aacvnnngnnnn@a.com', 'rhgthg', 'rynjnjg', '2025-01-21 19:58:30'),
(10, 'a', 'bAa@a.com', 'd', 'g', '2025-01-21 19:58:48'),
(11, 'bqqqqqqqqqqqqqqq', 'bAa@a.com', 'q', 'q', '2025-01-21 19:59:37'),
(12, 'h', 'bAa@a.com', 'h', 'h', '2025-01-21 20:06:11'),
(13, 'a', 'bAa@a.com', 'v', 'v', '2025-01-21 20:09:22'),
(14, 'a', 'bAa@a.com', 'k', 'k', '2025-01-21 20:12:26'),
(15, 'a', 'bAa@a.com', 'k', 'k', '2025-01-21 20:14:03'),
(16, 'a', 'bAa@a.com', 'a', 'a', '2025-01-21 20:14:50'),
(17, '1', 'p@p.com', 'f', 'f', '2025-01-22 12:15:18'),
(18, 'a', 'p@p.com', 'a', 'v', '2025-01-22 21:23:28'),
(19, 'a', 'p@p.com', 'a', 'v', '2025-01-22 21:24:13'),
(20, 'Pervez Alam', 'ap@gmail.com', 'a', 'a', '2025-03-02 14:04:51'),
(21, 'Pervez Alam', 'ap@gmail.com', 'a', 'a', '2025-03-02 14:04:55');

-- --------------------------------------------------------

--
-- Table structure for table `c_questions`
--

CREATE TABLE `c_questions` (
  `sl_no` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `question` varchar(149) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `option_1` varchar(168) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `option_2` varchar(151) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `option_3` varchar(151) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `option_4` varchar(151) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `correct_option` varchar(152) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `c_questions`
--

INSERT INTO `c_questions` (`sl_no`, `question`, `option_1`, `option_2`, `option_3`, `option_4`, `correct_option`) VALUES
('1', 'Which of the following are not standard header files in C?', 'stdio.h', 'stdlib.h', 'conio.h', 'None of the above.', 'None of the above.'),
('2', 'Which of the following function is used to open a file in C++?', 'fopen', 'fclose', 'fseek', 'fgets', 'fopen'),
('3', 'Which of the following is an exit controlled loop?', 'While loop.', 'For loop.', 'do-while loop.', 'None of the above.', 'do-while loop.'),
('4', 'How many bytes does \"int = D\" use? ', '1', '0', '10', '2&4', '2&4'),
('5', 'How to declare a double-pointer in C?', 'int **val', ' int *val', 'int **val', 'int &val', 'int **val'),
('6', 'What is the size of the int data type (in bytes) in C?', '4', '8', '1', '2', '4'),
('7', 'How are String represented in memory in C?', 'An Array of characters', ' Linked list of characters', 'The object of some class', 'Some as other primitive data types', 'An Array of characters'),
('8', 'Which of the following is the proper syntax for declaring macros in C?', '#define long long ll', '#define ll long long', '#define ll', '#define long long', '#define ll long long'),
('9', 'Which of the following should be used to free memory from a pointer allocated using the “new” operator?', 'free()', 'delete', 'realloc()', 'None of the above.', 'delete'),
('10', 'How are String represented in memory in C?', 'An array of characters.', 'The object of some class.', 'Same as other primitive data types.', 'LinkedList of characters.', 'An array of characters.'),
('11', 'How is an array initialized in C language?', 'int a[3] = {1, 2, 3};', 'int a = {1, 2, 3};', 'int a[] = new int[3]', 'int a(3) = [1, 2, 3];', 'int a[3] = {1, 2, 3};'),
('12', 'How is the 3rd element in an array accessed based on pointer notation?', '*a + 3', '*(a + 3)', '*(*a + 3)', '*(a+3)&(a + 3)', '*(a + 3)'),
('13', 'How to declare a double-pointer in C?', 'int *val', 'int **val', 'int &val', 'int *&val', 'int **val'),
('14', 'How to find the length of an array in C?', 'sizeof(a[0])', 'sizeof(a) / sizeof(a[0])', 'sizeof(a) * sizeof(a[0])', 'sizeof(a)', 'sizeof(a) / sizeof(a[0])'),
('15', 'If p is an integer pointer with a value 1000, then what will the value of p + 5 be?', '1020', '1005', '1004', '1010', '1020'),
('16', 'In which of the following languages is function overloading not possible?', 'C', 'C++', 'Java', 'Python', 'C'),
('17', 'What does the following declaration indicate?int x: 8;\n', 'x stores a value of 8.', 'x is an 8-bit integer.', 'x is an 8-bit integer.& x stores a value of 8.', 'None of the above.', 'x is an 8-bit integer.'),
('18', 'What is the disadvantage of arrays in C?', 'The amount of memory to be allocated should be known beforehand.', 'Elements of an array can be accessed in constant time.', 'Elements are stored in contiguous memory blocks.', 'Multiple other data structures can be implemented using arrays.', 'A.The amount of memory to be allocated should be known beforehand.'),
('19', ' What is the range of values that can be stored by int datatype in C?', '-(2^31) to (2^31) - 1', '-256 to 255', '-(2^63) to (2^63) - 1', '0 to (2^31) - 1', '-(2^31) to (2^31) - 1'),
('20', 'What is the return type of the fopen() function in C?', 'Pointer to a FILE object.', 'An integer.', 'Pointer to an integer.', 'An double', 'Pointer to a FILE object.'),
('21', 'How to declare a double-pointer in C?', 'int **val', ' int *val', 'int **val', 'int &val', 'int **val'),
('22', 'What is the size of the int data type (in bytes) in C?', '4', '8', '2', '1', '4'),
('23', ' ', 'Charles Babbage ', 'Grahambe', ' Steve ', ' Dennis Ritchie', 'Dennis Ritchie'),
('24', 'C Language is a successor to which language.?', 'FORTRAN', 'B Language', 'BASIC', 'Language', 'B Language'),
('25', 'C is a which level language.?', 'Midium', 'Low ', 'High', 'None', 'High'),
('26', 'Low level language is .? Human readable like language. ', 'Human readable like language. ', 'Difficult to understand and readability is questionable.', 'language with big program size.', 'language with small program size.', 'B.Difficult to understand and readability is questionable.'),
('27', 'C is _______ type of programming language.?', 'Bit level language', 'Procedural', 'Object Oriented', 'Functional', 'B.Procedural'),
('28', 'What is the present C Language Standard.? ', 'C99 ISO/IEC 9899:1999 ', 'C11 ISO/IEC 9899:2011 ', 'C05 ISO/IEC 9899:2005', 'C10 ISO/IEC 9899:2010', 'B.C11 ISO/IEC 9899:2011'),
('29', 'What are the new features of C11 or ISO IEC 9899 2011 standard.?', 'Type generic Macros, Static Assertions', 'Multi Threading, Anonymous Unions, quick_exit', 'Bounds Checking Interfaces, Anonymous Strurctures', 'All', 'D.All'),
('30', 'C language was invented in which laboratories.?', 'Verizon Labs', 'Uniliver Labs', 'AT&T Bell Labs', 'IBM Labs', 'C.AT&T Bell Labs'),
('31', 'BCPL Language is also called..?', 'D Language', 'B Language', 'C Language', 'None', 'C.None'),
('32', 'C language was invented to develop which Operating System.?', 'Android', 'Unix', 'Linux', 'Ubuntu', 'B.Unix'),
('33', 'C language was invented in the year.?', '1999', '1990', '1972', '1978', 'C.1972'),
('34', 'C language is used in the development of .?', 'Databases', 'Word Processors', 'Word Processors', 'All of the above', 'D.All of the above'),
('35', 'A C program is a combination of.?', 'Statements', 'Functions', 'Variables', 'All of the above', 'D.All of the above'),
('36', 'Correct way of commenting a single line is.?', '//printf(\"Hello C..\"); printf(\"How are you.\");', '/*printf(\"Hello C..\"); printf(\"How are you.\");', '/*printf(\"Hello C..\"); printf(\"How are you.\");*/', '//printf(\"Hello C..\");/ printf(\"How are you.\");', 'A.//printf(\"Hello C..\"); printf(\"How are you.\");'),
('37', 'Single Line Comment // is also called.?', 'PHP Style Comment', 'Java Style Comment', 'C++ Style Comment', 'All the above', 'D.All the above'),
('38', 'Choose the correct answer.?', 'Digraph represents [ Digraph reprsents { Digraph %: represents $ Digraph %:%: represents $$', 'Digraph represents ] Digraph reprsents } Digraph %: represents # Digraph %:%: represents ##', ') Digraph represents } Digraph reprsents ] Digraph %: represents / Digraph %:%: represents //', 'Digraph represents [ Digraph reprsents } Digraph %: represents # Digraph %:%: represents ##', 'B.Digraph represents ] Digraph reprsents } Digraph %: represents # Digraph %:%: represents ##'),
('39', 'What is an Identifier in C Language.?', 'Name of a Function or Variable', 'Name of a Macros', 'Name of Structure or Union', 'All the above.', 'D.All the above.'),
('40', 'An Identifier may contain.?', 'Letters a-z, A-Z in Basic character set. Unicode alphabet characters other languages', 'Underscore _ symbol', 'Numbers 0 to 9 Unicode Numbers in other languages', 'All the above', 'D.All the above'),
('41', 'What is the number of characters used to distinguish Identifier or Names of Functions and Global variables.?', '28', '33', '31', '32', 'C.31'),
('42', 'What is length of an Identifier that is unique for Non Global Variables and Non Function Names.?', '63', '93', '92', '65', 'A.63'),
('43', 'An Identifier can start with.?', 'Alphabet', 'Option A & Option B', 'Option A', 'Any character that can be typed on a keyboard', 'B.Option A & Option B'),
('44', 'C Programs are used in .?', 'Fridge, Microwave Ovens', 'Washing machine', 'Any Electronic device which works on some logic and Operating System.', 'All the above.', 'D.All the above.'),
('45', 'Choose correct statements', 'A constant value does not change. A variable value can change according to needs.', 'A constant can change its values. A variable can have one constant value only.', 'value only', 'A constant can change its values. A variable can have one constant value only', 'A.A constant value does not change. A variable value can change according to needs.'),
('46', 'Find an integer constant.', '34', '3.145', '\"125\"', 'None of the above', 'A.34'),
('47', 'Find a Floating Point constant.', '125.34857', '1.20E+35', '1230000', 'All the above.', 'D.All the above.'),
('48', 'Find a Character constant.', '\'A\' \'a\'', '\'1\' \'9\'', '\'$\' \'#\'', 'All the above.', 'D.All the above.'),
('49', 'Choose a right statement.', 'int myage = 10; int my,age = 10;', 'int myage = 10; int my_age = 10;', 'int myage = 10; int my age = 10;', 'All are right', 'B.int myage = 10; int my_age = 10;'),
('50', 'Number of Keywords present in C Language are .?', '62', '34', '32', '34', 'C.32'),
('51', 'Each statement in a C program should end with.?', 'Semicolon ;', 'Colon :', 'Period . (dot symbol)', 'None of the above.', 'A.Semicolon ;'),
('52', 'Choose a correct statement.', 'C Compiler converts your C program into machine readable language.', 'C Editor allows you to type C Programs. It is just like a Notepad with extra options.', 'Console shows the output of a C Program if it is text output.', 'All the above', 'D.All the above'),
('53', 'Identify wrong C Keywords below.', 'auto, double, int, struct', 'break, else, long, switch', 'case, enum, register, typedef', 'char, extern, intern, return', 'D.char, extern, intern, return'),
('54', 'Identify wrong C Keywords below.', 'union, const, var, float', 'short, unsigned, continue, for', 'signed, void, default, goto', 'sizeof, volatile, do, if', 'A.union, const, var, float'),
('55', 'Identify wrong C Keywords below.', 'static, while, break, goto', 'struct, construct, signed, unsigned', 'short, long, if, else', 'return, enum, struct, do', 'B.struct, construct, signed, unsigned'),
('56', 'Find a correct C Keyword below.', 'breaker', 'go to', 'shorter', 'default', 'D.default'),
('57', 'Find a correct C Keyword.', 'Float', 'Int', 'Long', 'double', 'D.double'),
('58', 'Types of Integers are.?', 'short', 'int', 'long', 'All the above', 'D.All the above'),
('59', 'Types of Real numbers in C are.?', 'float', 'double', 'long double', 'All the above', 'D.All the above'),
('60', 'Size of a Turbo C C++ compiler is.?', '16 bit', '32 bit', '64 bit', '128 bit', 'A.16 bit'),
('61', 'Size of a GCC or Visual Studio C Compiler is.?', '16 bit', '32 bit', '64 bit', '128 bit', 'B.32 bit'),
('62', 'Sizes of short, int and long in a Turbo C C++ compiler in bytes are.?', '2, 2, 4', '2, 4, 4', '4, 8, 16', '8, 8, 16', 'A.2, 2, 4'),
('63', 'Sizes of short, int and long in Visual Studio or GCC compiler in bytes are.?', '2, 2, 4', '2, 4, 4', ' 4, 8, 8\n', '4, 4, 8', '2, 4, 2004'),
('64', 'Range of signed char and unsigned char are.?', '-128 to +127 0 to 255', '128 to +127 0 to 255', '-128 to -1 0 to +127', '0 to +127 -128 to -1', 'A.-128 to +127 0 to 255'),
('65', 'Ranges of signed int and unsigned int are.?', '0 to 65535 -32768 to +32767', '-32768 to +32767 0 to 65535', '-32767 to +32768 0 to 65536', '0 to 65536 -32767 to +32768', 'B.-32768 to +32767 0 to 65535'),
('66', 'Size of float, double and long double in Bytes are.?', '4, 8, 16', '4, 8, 16', '4, 8, 16', '4,8,10', 'D.4, 8, 10'),
('67', 'Range of singed long and unsigned long variables are.?', '-2147483647 to +2147483648 0 to 4294967295', '-2147483648 to +2147483647 0 to 4294967296', '-2147483648 to +2147483647 0 to 4294967295', '0 to 4294967295 -2147483648 to +2147483647', 'C.2147483648 to +2147483647 0 to 4294967295'),
('68', 'Range of float variable is.?', '-3.2e38 to +3.2e38', '-3.8e32 to +3.8e32', '-3.4e34 to +3.4e34', '-3.4e38 to +3.4e38', 'D.-3.4e38 to +3.4e38'),
('69', 'Left most bit 0 in Singed representation indicates.?', 'A Positive number', 'A Negative Number', 'An Unsigned number', 'None of the above', 'C.A Positive number'),
('70', 'A Positive number', 'You get compiler error.', 'You get a compiler warning.', 'Output is null always', 'None of the above', 'D.None of the above'),
('71', 'What is a C Storage Class.?', 'C Storage decides where to or which memory store the variable', 'C Storage decides where to or which memory store the variable', 'C Storage Class decides what is the Scope and Life of a variable.', 'All the above.', 'D.All the above.'),
('72', 'Every C Variable must have.?', 'Type', 'Storage Class', 'Both Type and Storage Class', 'Either Type or Storage Class', 'C.Both Type and Storage Class'),
('73', 'Find a C Storage Class below.', 'static', 'auto', 'register & extern', 'All the above', 'D.All the above'),
('74', 'What is the default C Storage Class for a variable.?', 'static', 'auto', 'register', 'extern', 'B.auto'),
('75', 'A register variable is stored in a Register. Where does a Register Present in a Computer.?', 'RAM ( Random Access Memory )', 'ROM ( Read Only Memory )', 'CPU (Central Processing Unit )', 'DMA ( Direct Memory Access )', 'D.DMA ( Direct Memory Access )'),
('76', 'Variables of type auto, static and extern are all stored in .?', 'ROM', 'RAM', 'CPU (Central Processing Unit )', ' Compiler', 'B.RAM'),
('77', 'Find a right answer.', 'Default value of auto variable = Garbage Value Default value of static = Garbage Value Default value of extern = Garbage Value Default value of register = Garbage Value', 'Default value of auto variable = zero Default value of static = zero Default value of extern = zero Default value of register = zero', 'Default value of auto variable = Garbage Default value of static = zero Default value of extern = zero Default value of register = Garbage', 'Default value of auto variable = zero Default value of static = Garbage Default value of extern = Garbage Default value of register = zero', 'Default value of auto variable = Garbage Default value of static = zero Default value of extern = zero Default value of register = Garbage'),
('78', 'Which among the following is a Local Variable.?', 'register', 'auto', 'static', 'extern', 'B.auto'),
('79', 'Which among the following is a Global Variable.?', 'auto', 'register', 'static', 'extern', 'D.extern'),
('80', 'Choose a correct statement about static variable.', 'A static global variable can be accessed in other files.', 'A static global variable can be used only in a file in which it is declared', 'A static global variable can be used only in a file in which it is declared', 'A static global variable can be used only in a file in which it is declared', 'D.A static global variable can be used only in a file in which it is declared.'),
('81', 'Choose right statement.', 'Variable a is stored in CPU registers for fast access.', 'Variable a is converted to int and then stored in a CPU register.', 'register Storage Class is ignored and treated as', 'You get a compiler error as you can not store non integer value in a CPU register.', 'C.register Storage Class is ignored and treated as'),
('82', 'What is the difference between Declaration and Definition.?', 'Declaration does allocate memory for a variable. Definition does allocate memory for a variable.', ') Declaration does allocate memory for a variable. Definition does not allocate memory for a variable.', 'Declaration does not allocate memory for a variable. Definition does allocate memory for a variable.', 'Declaration does not allocate memory for a variable. Definition does not allocate memory for a variable', 'Declaration does not allocate memory for a variable. C.Definition does allocate memory for a variable.'),
('83', 'Operator % in C Language is called.?', 'Percentage Operator', 'Quotient Operator', 'Modulus', 'Division', 'C.Modulus'),
('84', 'Output of an arithmetic expression with integers and real numbers is ___ by default.?', 'Integer', 'Real number', 'Depends on the numbers used in the expression.', 'None of the above', 'B.Real number'),
('85', 'Choose a right statement. int a = 10 + 4.867;', 'a = 10', 'a = 14.867', ' a = 14', 'compiler error.', 'B.a = 14'),
('86', 'If both numerator and denominator of a division operation in C language are integers, then we get.?', 'Expected algebraic real value', 'Expected algebraic real value', 'Compiler error.', 'None of the above', 'D.None of the above'),
('87', 'Can you use C Modulo Division operator % with float and int?', 'Only int variables = Okay', 'Only float variables = Okay', 'int or float combination = Okay', 'Numerator int variable, Denominator any variable = Okay', 'A.Only int variables = Okay'),
('88', 'What is the output of the program.? int main() { float a = 45; printf(\"%f\", a); return 0; }', '45', '45', '45', '0', 'A.45'),
('89', 'In C language, which Operator group has more priority between (*, / and %) and (+, -) groups.?', 'Both groups share equal priority.', '(+, -) > (*, / and %)', '(+, -) < (*, / and %)', 'None of the above.', 'C.(+, -) < (*, / and %)'),
('90', 'Associativity of C Operators *, /, %, +, - and = is.?', 'Operators *, / and % have Left to Right Associativity. Operators + and - have Left to Right Associativity. Operator = has Right to Left Associativitiy.', 'Operators *, / and % have Right to Left Associativity. Operators + and - have Left to Right Associativity. Operator = has Right to Left Associativitiy.', 'Operators *, / and % have Right to Left Associativity. Operators + and - have Right to Left Associativity. Operator = has Right to Left Associativitiy.', 'Operators *, / and % have Right to Left Associativity. Operators + and - have Right to Left Associativity. Operator = has Left to Right Associativitiy.', 'A.Operators *, / and % have Left to Right Associativity. Operators + and - have Left to Right Associativity. Operator = has Right to Left Associativitiy'),
('91', ') What is the Priority among (*, /, %), (+, -) and (=) C Operators.?', '(*, /, %) > (+, -) < (=)', '(*, /, %) < (+, -) < (=)', '(*, /, %) > (+, -) > (=)', '(*, /, %) < (+, -) (+, -) == (=)', 'C.(*, /, %) > (+, -) > (=)'),
('92', 'Which loop is faster in C Language, for, while or Do While.?', 'for', 'while', 'do while', 'All work at same speed', 'D.All work at same speed'),
('93', 'What is the output of C Program.? int main() { while(true) { printf(\"RABBIT\"); break; } return 0; }', 'RABBIT', 'RABBIT is printed unlimited number of times.', 'No output', 'Compiler error.', 'D.Compiler error.'),
('94', 'What is the output of C Program.? int main() { int k; for(;;) { printf(\"TESTING\\n\"); break; }', 'No Output', 'TESTING', 'Compiler error', 'None of the above', 'B.TESTING'),
('95', ') What is the output of C Program.? int main() { int a=10, b, c; b=a++; c=++a; printf(\"%d %d %d\", a, b, c); return 0; }', '10 11 12', '12 10 12', '12 11 12', '12 12 12', 'B.12 10 12'),
('96', 'What is the output of C Program.? int main() { int a=0, b=0; while(++a < 4) printf(\"%d \", a); while(b++ < 4) printf(\"%d \", b); return 0; }', '0 1 2 3 1 2 3 4', '1 2 3 1 2 3 4', '1 2 3 4 1 2 3 4', '1 2 3 4 0 1 2 3', 'B.1 2 3 1 2 3 4'),
('97', 'A function which calls itself is called a ___ function.', 'Self Function', 'Auto Function', 'Recursive Function', 'Static Function', 'C.Recursive Function'),
('98', 'What is the output of C program with functions.? int show(); void main() { int a; a=show(); printf(\"%d\", a); } int show() { return 15.5; return 35; }', '15.5', '15', '0', 'Compiler error', 'B.15'),
('99', 'What are the data type of variables that can be returned by a C Function.?', 'int, float, double, char', 'struct, enum', 'Pointers to variables, arrays, functions, struct variables, enum variables etc', 'All the above', 'D.All the above'),
('100', 'What is the output of C program.? int main() { char ch=\'A\'; ch=getchar(); putchar(ch); return 0; }//input= S', 'A', 'B', 'S', 'Compiler error', 'C.S');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `feedback` varchar(10000) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `created_at`) VALUES
(1, 'a', 'p@p.com', 'a', 'a', '2025-01-22 12:17:42'),
(2, ' n', 'p@p.com', 'n', 'n', '2025-01-22 21:23:14');

-- --------------------------------------------------------

--
-- Table structure for table `gk_questions`
--

CREATE TABLE `gk_questions` (
  `sl_no` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `question` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `option_1` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `option_2` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `option_3` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `option_4` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `correct_option` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `gk_questions`
--

INSERT INTO `gk_questions` (`sl_no`, `question`, `option_1`, `option_2`, `option_3`, `option_4`, `correct_option`) VALUES
('1', 'Which gas is most abundant in the Earth’s atmosphere?', 'Nitrogen', ' Oxygen', 'Carbon dioxide', 'Hydrogen', 'Nitrogen'),
('2', 'What is the chemical symbol for gold?', 'Go', 'Gl', ' Gd', 'Au', 'Au'),
('3', 'What is the process by which plants make their food using sunlight?', 'Photosynthesis', ' Transpiration', ' Fermentation', 'Respiration', 'Photosynthesis'),
('4', 'Which planet is known as the “Red Planet”?', 'Venus', 'Mars', 'Jupiter', ' Saturn', 'Mars'),
('5', 'What is the chemical formula for water?', 'H2O2', 'CO2', 'H2O', 'O2H', 'H2O'),
('6', 'Which gas do plants absorb from the atmosphere during photosynthesis?', 'Carbon dioxide', 'Oxygen', ' Hydrogen', ' Nitrogen', 'Carbon dioxide'),
('7', 'Which ministries collaborated to organize the Veer Gatha 3.0 event in New Delhi?', 'Ministry of Defence and Ministry of Finance', 'Ministry of Education and Ministry of Health', 'Ministry of Defence and Ministry of Education', 'Ministry of Home Affairs and Ministry of External Affairs', 'Ministry of Defence and Ministry of Education'),
('8', 'Directorate of Revenue Intelligence (DRI), recently seen in the news, is associated with which ministry?', 'Ministry of Corporate Affairs', 'Ministry of Commerce & Industry', ' Ministry of Finance', 'none of the above', ' Ministry of Finance'),
('9', 'The tableau themed “Bharat: Mother of Democracy” clinched 1st place at the Republic Day 2024. It was associated with which ministry?', ' Ministry of Defence', 'Ministry of Culture', 'Ministry of Finance', 'Ministry of corporate Affairs', 'Ministry of Culture'),
('10', 'Which city recently received the first set of driverless metro train coaches, which are part of the Communication-based Train Control (CBTC) system?', 'Chennai', 'Bengaluru', 'Mumbai', 'New Delhi', 'Bengaluru'),
('11', 'Recently, Ministry of Earth Sciences inaugurated the first phase of Atmospheric Research Testbed in Central India (ART-CI) in which state?', 'Jharkhand', 'Madhya Pradesh', 'Maharashtra', 'Chhattisgarh', 'Madhya Pradesh'),
('12', 'Which state recently passed the Nodal Investment Region for Manufacturing (Construction) Area Bill (NIRMAN)-2024?', 'Bihar', 'Haryana', 'Madhya Pradesh', 'Uttar Pradesh', 'Uttar Pradesh'),
('13', 'NOAA Ocean Exploration researchers have found 1600 metre seamount in which ocean?', ' Indian Ocean', 'Arctic Ocean', 'Pacific Ocean', 'Southern Ocean', 'Pacific Ocean'),
('14', 'Scientists recently detected water molecules on the surface of two asteroids for the first time ever by using which telescope?', ' SOFIA', 'HEAO 3', ' HETE 2', 'CHIPS', ' SOFIA'),
('15', 'IIT Madras recently collaborated with which institution to develop ‘Garbhini-GA2’ AI model?', 'Translational Health Science and Technology Institute (THSTI)', 'IIM Ahmedabad', 'IISc Bangalore', ' IIT Bombay', 'Translational Health Science and Technology Institute (THSTI)'),
('16', 'Mission Utkarsh, recently seen in the news, is associated with which one of the following disease?', 'Typhoid', 'Cholera', '  Anaemia', 'Japanese encephalitis', ' Anaemia'),
('17', 'Kulasekarapattinam Spaceport, recently seen in the news, is located in which state?', 'Karnataka', ' Tamil Nadu', 'Maharashtra', 'Gujarat', 'Tamil Nadu'),
('18', 'Parrot fever, recently seen in the news, caused by which one of the following agents?', 'Virus', 'Fungus', 'Bacteria', 'Protozoa', 'Bacteria'),
('19', 'Lyme disease, recently seen in the news, is caused by which one of the following agents?', ' Bacteria', 'Virus', 'Fungus', 'none of the above', ' Bacteria'),
('20', 'What is ‘Heterobilharzia Americana’, recently seen in the news,?', 'Virus', 'Whipworm', 'Flatworm', 'none of the above', 'Flatworm'),
('21', 'Recently, which space organization is planning to carry a ‘message in a bottle’ to Europa, one of Jupiter’s moon in October 2024?', 'NASA', ' ISRO', ' ESA', 'none of the above', 'NASA'),
('22', 'Which organization has recently introduced a new AI model known as Voice Engine that can replicate any voice in any language?', 'Deep Mind', 'OpenAI', ' IBM', 'none of the above', 'OpenAI'),
('23', 'What kind of disease is ‘Whooping cough’, recently seen in news?', ' Bacterial disease', 'Viral disease', 'Fungal disease', 'none of the above', ' Bacterial disease'),
('24', 'Recently, ISRO has decided to achieve debris-free space by which year?', '2025', '2027', '2030', 'none of the above', '2030'),
('25', 'Indelible ink, recently seen in the Lok Sabha elections, is prepared by using which chemical?', ' Sodium Nitrate', 'Silver Nitrate', 'Potassium Nitrate', 'none of the above', 'Silver Nitrate'),
('26', 'Phi-3-Mini, an AI model, recently developed by which company?', 'Meta', 'Microsoft', 'Google', 'none of the above', 'Microsoft'),
('27', 'According to Global Hepatitis Report 2024, what percentage of the global Hepatitis B & C disease burden did India account for in 2022?', '0.105', ' 11.6%', '0.121', 'none of the above', ' 11.6%'),
('28', 'Recently, which country has become the first country to roll out a Vaccine for Meningitis?', 'Nigeria', 'Algeria', 'Botswana', 'none of the above', 'Nigeria'),
('29', 'Recently, which organization has developed Carbon-Carbon (C-C) nozzle for rocket engines?', 'ISRO', ' DRDO', ' BHEL', 'none of the above', 'ISRO'),
('30', 'Bulava intercontinental ballistic missile, recently seen in news, is developed by which country?', ' China', 'Japan', 'Russia', 'none of the above', 'Russia'),
('31', 'What is ‘RoseTTAFold’, recently seen in news?', 'New species of fish', 'An AI software prediction tool', ' Asteroid', 'none of the above', 'An AI software prediction tool'),
('32', 'H5N2 virus, sometimes seen in the news, is related to which disease?', 'Malaria', 'Dengue', 'Bird flu', 'none of the above', 'Bird flu'),
('33', 'Which institution recently conducted the study on CdTe (Cadmium telluride) technology’s environmental impact?', ' IIT, Delhi', ' IIT, Bombay', 'IIT, Mandi', 'none of the above', 'IIT, Mandi'),
('34', 'Taiwan established Taipei Economic and Cultural Centre (TECC) in which city of India?', 'Bengaluru', 'Jaipur', 'Mumbai', 'none of the above', 'Mumbai'),
('35', 'What is the new name of the National Achievement Survey (NAS) for 2024?', 'PARAKH Rashtriya Sarvekshan', 'Udaan Survey', 'Vidya Vikas Survey', 'none of the above', 'PARAKH Rashtriya Sarvekshan'),
('36', 'Hingot War festival is associated with which state?', 'Gujarat', 'Rajasthan', 'Madhya Pradesh', 'none of the above', 'Madhya Pradesh'),
('37', 'What is rank of India in Henley Passport Index, released in October 2024?', '65th', '83rd', '94th', 'none of the above', '83rd'),
('38', 'Which among the following is the junior most among all 4 ranks of Indian Air Force?', 'Wing Commander', 'Squadron Leader', 'Flight Lieutenant', 'none of the above', 'Flight Lieutenant'),
('39', 'Which of the following is India’s largest indigenous research and production nuclear reactor?', 'Apsara', 'Kamini', ' Dhruva', 'none of the above', ' Dhruva'),
('40', 'Kudankulam Nuclear Power Plant is a joint venture between India and which among the following countries?', 'Canada', ' France', 'Russia', 'none of the above', 'Russia'),
('41', 'The term “INS Kiltan”, that was frequently in news, is India’s first major warship to__:  ', 'have solar power panels installed atop', 'have an ATM onboard the vessel', 'have a superstructure of carbon fibre composite material', 'none of the above', 'have a superstructure of carbon fibre composite material'),
('42', 'UNMISS is the newest United Nations peacekeeping mission in which country?', ' Syria', 'South Sudan', 'Saudi Arabia', 'none of the above', 'South Sudan'),
('43', 'In which year Bangladesh got independence from Pakistan?', '1971', '1972', ' 1973', 'none of the above', '1971'),
('44', 'The “Opium Wars” happened in which nation?', ' Afghanistan', 'Venezuela', 'China', 'none of the above', 'China'),
('45', 'Which of the following called themselves as ‘Hellens’?', 'Mesopotamians', 'Greeks', 'Romans', 'none of the above', 'Greeks'),
('46', 'Which country’s government led by a committee of military leaders was “Derg”?', 'Kenya', 'Uganda', 'Nigeria', 'none of the above', 'none of the above'),
('47', 'Which of the following is correct regarding the period of “Nazi Germany”?', ' 1933-1941', ' 1933-1943', '1933-1945', 'none of the above', '1933-1945'),
('48', 'Indian Navy held a Passage Exercise (PASSEX) in the Eastern Indian Ocean along with which country?', 'China', 'U.K.', 'Russia', 'none of the above', 'Russia'),
('49', 'How many countries are part of the Australia Group?', '32', '56', '15', 'none of the above', 'none of the above'),
('50', 'How many commands are there in the Indian Army ?', '3', '5', ' 7', 'none of the above', ' 7');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int NOT NULL,
  `task_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `task_name`, `created_at`) VALUES
(66, 'g', '2025-01-25 04:53:19'),
(68, 'ggggggggggg', '2025-01-25 04:53:40'),
(75, 'qqq', '2025-03-02 14:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `users_sign_up`
--

CREATE TABLE `users_sign_up` (
  `id` int NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users_sign_up`
--

INSERT INTO `users_sign_up` (`id`, `fullname`, `email`, `password`, `created_at`) VALUES
(37, 'TASK 2', 'TASK2@a.com', '$2y$10$Ri1LBbkntTlOiAzHBHf9xOsOxpgKH6qSjE/SvDpglya0IeyPO9N8K', '2025-01-21 19:45:52'),
(38, 'TASK 3', 'TASK3@a.com', '$2y$10$GvuW9c0oBTaHu56jmpTS2.EXfFV6HEzKPpHSBjQxaOZ0S17qjxct.', '2025-01-21 19:46:51'),
(40, 'TASK 4', 'TASK4@a.com', '$2y$10$1c6339BCciIv8QIVAHr8OeOyt59fWOPBJwntkBoexIueMzkqS57rm', '2025-01-21 19:48:21'),
(41, 'TASK 5', 'bARa@a.com', '$2y$10$ycL.68xt7BxRlLyKaw2PRu32.kpbUPK/i7ZxOEh2Z3knQWqrvlBnG', '2025-01-21 19:49:08'),
(43, 'TASK 5', 'bARNa@a.com', '$2y$10$OqItMWmN7NMnqhOvAHh8UeUs65Qh5UIx6ZANC.nCxIq7DH3egXAiq', '2025-01-21 19:50:27'),
(44, 'TASK 6', 'bGNAa@a.com', '$2y$10$46FOWvOzXUeLO7j1V4xU4ehU0xTJe9v4UKFLE7qcX0u5W9k/jSC3m', '2025-01-21 19:51:03'),
(47, 'fbrgtrghfb', 'bArgtra@a.com', '$2y$10$v7hYethGCNRyDdaXQLPEwemRnBTpyl2IceB36AEmdf1VYxpMfKUze', '2025-01-21 19:52:06'),
(49, 'TASK 7', 'A7777a@a.com', '$2y$10$1VnA2gKPAmKUfVP15f9T6Oz9Nfqtje4hISOSUi4FQqGDWfYTnJvAG', '2025-01-21 20:01:42'),
(50, 'g', 'Aga@a.com', '$2y$10$KqeiW6PiDWILJCUB10CgkeptbANitzfu4ze3SbaLXnQc5/ejC7UCC', '2025-01-21 20:02:38'),
(51, 'dvfd123', 'bAdgffbfg5t4a@a.com', '$2y$10$lUw0SkCA3SYky3Hm8SVSv.dVJ5DL5uhe5s8trYNBVVTVhm7bmUjrK', '2025-01-21 20:03:58'),
(52, 'fbgfbh', 'A7776575464a@a.com', '$2y$10$2jr3reYynQTieg9.GbREjeC3EbQmxSLjuZryCS/.n8ITmTN9c5ACW', '2025-01-21 20:05:27'),
(53, 't1', 'yt56Aa@a.com', '$2y$10$.5V5J39odlwBG0um9lNgkeuNP9CrQKdpDdDuOO4Br42ilRr2HO.y2', '2025-01-21 20:16:08'),
(54, '123', 'b34324rAa@a.com', '$2y$10$haGAwn1K3WG/IMAkuMK24uE5bGaxsTv.y0ZzXV7oIorFIA/27za8a', '2025-01-21 20:19:43'),
(55, 'fbgfb', 'bAha@a.comh', '$2y$10$sWxt/sdA0JQ3YjnvKWWSDenWbAcUXejl1s7L8WAfoirkNp1cL2YPS', '2025-01-21 20:20:17'),
(57, 'fbgfbg5', '1hbAa@a.com', '$2y$10$OQsOrmB3jdu5HwjqiqWdtev9aWBR1jNAYbTrgFH/Z.ARPUMnvCGEW', '2025-01-21 20:22:37'),
(58, 'TASK 15', 'btashhh22kAa@a.com', '$2y$10$AIEMoIwBg07YSFiDP2XhNOdi4dk8pe4OoPL849MSrZYlQb5wwX9I.', '2025-01-21 20:25:13'),
(59, 'h', 'btas22krthgthn56756Aa@a.com', '$2y$10$SfTTVlYUi06M0jTVAw4pcuYByb7c8dwVE5swtM00NuSji6l0RsK7C', '2025-01-21 20:25:42'),
(60, 'a', 'a@a.com', '$2y$10$/0FVVkeJqrcsVKIDR9PFie6lysNrqdPXhVErZYxnv2Z58TasLxc/u', '2025-01-21 20:28:33'),
(61, 'ppp', 'p@p.com', '$2y$10$ZS1hI99Borgtd/sOYU3XQeWWSJPRHeRNxyBfDOac9/AMHQmLOu1/G', '2025-01-21 21:01:45'),
(62, 'ppp', 'vp@p.com', '$2y$10$HXua8hclcW/aPOEfXYC0MerTT2WdcdOuSI9Xe/RjwxvgVNH4.WGQm', '2025-01-22 21:24:29'),
(63, 'Pervez Alam', 'p@gmail.com', '$2y$10$8lj4kQAbOBRyZYS2rPsRS.IF2xV.BGycJi3dwuQFEyhOvtan0.mgW', '2025-02-27 14:57:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_sign_up`
--
ALTER TABLE `users_sign_up`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `users_sign_up`
--
ALTER TABLE `users_sign_up`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
