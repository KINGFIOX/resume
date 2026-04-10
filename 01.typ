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
    color: theme-color,
    (icon: fa-phone, content: "(+86) 158-1687-0583"),
    (
      icon: fa-envelope,
      content: "kingfiox520@gmail.com",
      link: "mailto:kingfiox520@gmail.com",
    ),
    (
      icon: fa-github,
      content: "github.com/kingfiox",
      link: "https://github.com/kingfiox",
    ),
  )
][
  #h(2em)

  哈工大（深圳）计算机专业应届生，考研初试总分 406（408 科目 128 分），拟录取至中科院计算所。本科期间完整学习并深入理解 408 课程体系，阅读过 CSAPP、超标量处理器设计、UNIX 环境高级编程等专业著作，并独立完成处理器设计、操作系统内核、计算机网络等多个系统级项目与实验，兼具扎实的理论功底与丰富的实践经历。曾任班长及学生会成员，沟通表达能力强。

]

== #fa-graduation-cap 教育背景

#sidebar(with-line: true, side-width: 12%)[
  2022.09 - 2026.06
][
  *哈尔滨工业大学（深圳）* · 计算机科学与技术

  GPA: 82.84/100（专业排名 176/315）
]

#sidebar(with-line: true, side-width: 12%)[
  拟录取
][
  *中国科学院大学计算技术研究所* · 计算机技术

  初试总分 406 , 408 分数 128

]

== #fa-wrench 专业技能

#sidebar(with-line: false, side-width: 12%)[
  *编程语言*
][
  C/C++, Rust, Haskell, Verilog, Chisel, Nix
]

#sidebar(with-line: false, side-width: 12%)[
  *技术领域*
][
  #fa-linux Linux 系统编程、编译优化、处理器设计、操作系统内核
]

== #fa-code 项目经历

#item(
  link("https://github.com/KINGFIOX/ysyx-workbench", [ *一生一芯（ysyx\_26010003）* ]),
  [ *个人项目* ],
  date[ 2025.12 – 至今 ],
)

#tech[ C, Verilog, Chisel, Rust, RISC-V, Nix, 计算机体系结构 ]

"一生一芯"开源处理器培养计划，目前已通过 C 阶段考核，目前进度在 B5 阶段。#link("https://docs.qq.com/sheet/DTWtVWUZwTEhpeW1K")[（学习记录）]

- 设计 RV64I 单发射乱序处理器并接入 SoC（408 考研考查静态五级流水线，乱序流水线是其进阶，体现对流水线技术的深入理解）
- 实现基于 PLRU 的 ICache（408 考查 LRU 替换策略，PLRU 为其工程近似，体现对 Cache 原理的扎实掌握）
- 实现 SDRAM 控制器及仿真模型（408 中 DRAM 知识点涵盖传统 DRAM 与 SDRAM 的融合，该实践加深了对存储层次的理解）

#item(
  link("https://github.com/KINGFIOX/minirv", [ *RISC-V 五级流水线处理器* ]),
  [ *课程项目* ],
  date[ 2024.06 – 2024.08 ],
)

#tech[ Chisel, Verilog, RISC-V, 计算机组成原理 ]

基于 Chisel 实现五级流水线处理器，包含静态分支预测与数据前递机制。

#item(
  link("https://github.com/KINGFIOX/xv6-oslab24-hitsz", [ *xv6 操作系统扩展（MIT 6.S081）* ]),
  [ *课程项目* ],
  date[ 2024.10 – 2024.12 ],
)

#tech[ C, 操作系统, RISC-V ]

基于 MIT xv6 扩展虚拟内存子系统，实现 mmap、copy-on-write、lazy allocation 等特性。

#item(
  link("https://github.com/KINGFIOX/xv6fs-fuse-oslab24-hitsz", [ *基于 FUSE 的 xv6 文件系统* ]),
  [ *课程项目* ],
  date[ 2024.11 ],
)

#tech[ C++, 文件系统, FUSE ]

参考 xv6 设计，基于 FUSE 框架在用户态实现文件系统，增加日志功能以保证崩溃一致性。

#item(
  link("https://github.com/KINGFIOX/pintos", [ *Pintos 操作系统（UC Berkeley CS162）* ]),
  [ *课外项目* ],
  date[ 2024.10 – 2024.12 ],
)

#tech[ C, 操作系统, i386 ]

通过与 xv6 对比学习 i386 与 RISC-V 架构差异。实现定点小数运算用于调度时间计算，参考 4.4 BSD 实现 MLFQ 调度算法（2016.47 背景）。完成用户进程参数传递及部分系统调用。

#item(
  link("https://github.com/KINGFIOX/cs144", [ *Stanford CS144 计算机网络实验* ]),
  [ *课外项目* ],
  date[ 2025.12 ],
)

#tech[ C++, 计算机网络, TCP/IP ]

实现用户态 TCP 协议栈，包括可靠数据传输、流量控制与拥塞控制机制。

== #fa-building-columns 学生工作

#item([ *计算机十班班长* ], [ ], date[ 2022.09 – 至今 ])

#item([ *计算机学院学生会权益部成员* ], [ ], date[ 2023.03 – 2024.06 ])

== #fa-award 作为答疑老师的优势

- *对 408 课程体系有完整认知*：完整、认真地学习过零壹 408 全部科目的课程内容，初试 408 科目取得 128 分，对各科目的知识框架、重点难点与命题规律有清晰把握
- *广泛的专业阅读积累*：系统阅读过 CSAPP、超标量处理器设计、UNIX 环境高级编程等计算机体系结构与系统方向的经典著作，能够从原理层面为学生答疑解惑
- *丰富的动手实践经历*：正在实现乱序处理器（一生一芯）、完成过操作系统（xv6/Pintos）、计算机网络（CS144）、计算机组成原理（五级流水线）等课内外项目与实验；调试过 Linux 内核与 musl libc 源码，折腾过软路由等实际系统，能以实践视角帮助学生理解抽象概念
- *学生工作经验*：本科四年担任班长，曾任学生会成员，具备良好的沟通协调与责任意识，能够耐心、有条理地解答学生问题
