#import "template.typ": *

// 主题颜色
#let theme-color = rgb("#26267d")
#let icon = icon.with(fill: theme-color)

// 设置图标, 来源: https://fontawesome.com/icons/
#let fa-award = icon("icons/fa-award.svg")
#let fa-building-columns = icon("icons/fa-building-columns.svg")
#let fa-code = icon("icons/fa-code.svg")
#let fa-envelope = icon("icons/fa-envelope.svg")
#let fa-github = icon("icons/fa-github.svg")
#let fa-graduation-cap = icon("icons/fa-graduation-cap.svg")
#let fa-linux = icon("icons/fa-linux.svg")
#let fa-phone = icon("icons/fa-phone.svg")
#let fa-windows = icon("icons/fa-windows.svg")
#let fa-wrench = icon("icons/fa-wrench.svg")
#let fa-work = icon("icons/fa-work.svg")

// 设置简历选项与头部
#show: resume.with(
  // 字体和基准大小
  size: 10pt,
  // 标题颜色
  theme-color: theme-color,
  // 控制纸张的边距
  margin: (
    top: 1.5cm,
    bottom: 2cm,
    left: 2cm,
    right: 2cm,
  ),

  // 如果需要姓名及联系信息居中，请删除下面关于头像的三行参数，并取消header-center的注释
  //header-center: true,

  // // 如果不需要头像，则将下面三行的参数注释或删除
  // photograph: "profile.jpg",
  // photograph-width: 10em,
  // gutter-width: 2em,
)[
  = 王靳

  #info(
    color: theme-color,
    (
      icon: fa-phone,
      content: "(+86) 158-1687-0583",
    ),
    (
      icon: fa-envelope,
      content: "wangfiox@hotmail.com",
      link: "mailto:wangfiox@hotmail.com",
    ),
    (
      icon: fa-github,
      content: "github.com/kingfiox",
      link: "https://github.com/kingfiox",
    ),
  )
][
  #h(2em)

  *简历内容由 AI 生成，不代表真实内容。*作为一名计算机专业的学生，我专注于全栈开发和云计算技术。具有扎实的编程基础，热衷于开源项目贡献。在校期间参与多个实验室项目，对人工智能和分布式系统有深入研究。

]


== #fa-graduation-cap 教育背景

#sidebar(with-line: true, side-width: 12%)[
  2022.09 至今
][
  *哈尔滨工业大学（深圳）* · 计算机科学

  Rank: 79/330 （大一）
]


== #fa-wrench 专业技能

#sidebar(with-line: false, side-width: 12%)[
  *熟悉*
][
  #fa-linux Linux, Rust, Haskell, C/C++, Chisel, Verilog
]


== #fa-award 获奖情况

#item(
  [ *华为毕昇杯* ],
  [ *（国）三等奖* ],
  date[ 2024 年 8 月 ],
)

#item(
  [ *大一年度项目* ],
  [ *（校）优秀奖* ],
  date[ 2024 年 2 月 ],
)


== #fa-code 项目经历

#item(
  link(
    "https://github.com/dusk-phantom/duskphantom",
    [ *华为毕昇杯* ],
  ),
  [ *比赛参赛项目* ],
  date[ 2024 年 02 月 – 2024 年 12 月 ],
)

#tech[ Rust, RISC-V, 编译原理 ]

将 Sysy(subset of C) 编译成 riscv 汇编，
能被 riscv-gcc 汇编&链接成 elf 文件，能在开发版上运行。

个人主要完成以下工作：

- 基于弦图寄存器分配
- 基于表调度的指令调度
- 基于Pettis-Hansen code layout的块重排（二进制优化）
- 从中端IR到后端IR的指令选择
- 一些窥孔优化, 指令融合, 死代码消除等

#item(
  link(
    "https://github.com/KINGFIOX/rv64gc-thrd",
    [ *mini open mp, 线程库* ],
  ),
  [ *个人项目* ],
  date[ 2024 年 10 月 ],
)

#tech[ RISC-V, C, 操作系统 ]

这个是与毕昇杯编译器配套的项目，用于自动并行。
一开始是用汇编写的(2024/04)，赛后用 C with inline asm重写了一遍(2024/10)

- 参考了 musl libc 中 pthread_create 的实现
- 使用了一些编译器魔法，例如控制寄存器分配等
- 使用了一些 clang 的 bultin 魔法，例如获取栈指针的位置等
- 使用了 clone 系统调用，精心选择线程创建的参数


== #fa-building-columns 学生工作经历

#item(
  [ *计算机十班班长* ],
  [],
  date[ 2022 年 09 月 – 至今 ],
)

#item(
  [ *计算机学院学生会权益部成员* ],
  [],
  date[ 2023 年 3 月 – 2024 年 6 月 ],
)

