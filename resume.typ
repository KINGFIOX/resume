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
  margin: (top: 1.5cm, bottom: 2cm, left: 2cm, right: 2cm),
  // 如果需要姓名及联系信息居中，请删除下面关于头像的三行参数，并取消header-center的注释
  //header-center: true,
  // // 如果不需要头像，则将下面三行的参数注释或删除
  // photograph: "profile.jpg",
  // photograph-width: 10em,
  // gutter-width: 2em,
)[
  = 王靳

  #info(
    color: theme-color, (icon: fa-phone, content: "(+86) 158-1687-0583"), (
      icon: fa-envelope, content: "wangfiox@hotmail.com", link: "mailto:wangfiox@hotmail.com",
    ), (
      icon: fa-github, content: "github.com/kingfiox", link: "https://github.com/kingfiox",
    ),
  )
][
  #h(2em)

  作为一名计算机专业的学生，我对嵌入式体系结构有浓厚的兴趣，具有相对扎实的编程基础。在校期间积极参加有挑战的比赛、参与实验室项目、参与学生工作。

]

== #fa-graduation-cap 教育背景

#sidebar(with-line: true, side-width: 12%)[
  2022.09 至今
][
  *哈尔滨工业大学（深圳）* · 计算机科学

  学分绩: 82.78/100
]

== #fa-wrench 专业技能

#sidebar(with-line: false, side-width: 12%)[
  *熟悉*
][
  #fa-linux Linux, Rust, Haskell, C/C++, Chisel, Verilog
]

== #fa-award 获奖情况

#item([ *华为毕昇杯* ], [ *三等奖* ], date[ 2024 年 8 月 ])

== #fa-code 项目经历

#item(
  link("https://github.com/dusk-phantom/duskphantom", [ *华为毕昇杯* ]), [ *比赛参赛项目* ], date[ 2024 年 02 月 – 2024 年 12 月 ],
)

#tech[ Rust, RISC-V, 编译原理 ]

实现功能：将 Sysy(subset of C) 编译成 RISC-V 汇编

个人主要完成以下工作：

- 基于弦图的寄存器分配、基于表调度的指令调度、基于Pettis-Hansen code layout的块重排、指令选择
- 参考 musl libc 的 pthread_create，实现了精简的线程库（用于自动并行）

#item(
  link("https://github.com/KINGFIOX/minirv", [ *RISC-V五级流水* ]), [ ], date[ 2024 年 06 月 – 2024 年 08 月 ],
)

#tech[ Chisel, Verilog, RISC-V, 计算机组成原理 ]

实验报告 #fa-github https://github.com/KINGFIOX/minirv/tree/main/report

- 基于 Chisel 实现的五级流水，实现了静态分支预测、数据前递

#item(
  link("https://github.com/KINGFIOX/xv6-oslab24-hitsz", [ *xv6: mit os lab* ]), [ ], date[ 2024 年 10 月 – 2024 年 12 月 ],
)
#item(
  link("https://github.com/KINGFIOX/ics2024", [ *南京大学计算机基础实验* ]), [ ], date[ 2024 年 10 月 – 2024 年 12 月 ],
)

== #fa-graduation-cap 科研经历

#item(link("", [ *PVLDBv18_2025 二作在发* ]), [ PDPH: A Performant Dynamic Perfect Hashing via Hybrid Construction for Large-scale Dynamic Workloads ], date[ ])

== #fa-building-columns 学生工作经历

#item([ *计算机十班班长* ], [ ], date[ 2022 年 09 月 – 至今 ])

#item(
  [ *计算机学院学生会权益部成员* ], [], date[ 2023 年 3 月 – 2024 年 6 月 ],
)

