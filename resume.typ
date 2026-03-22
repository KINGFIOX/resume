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

  本科期间深入学习计算机体系结构与系统软件，独立完成编译器后端、CPU 设计、操作系统内核等多个系统级项目。在"一生一芯"项目中设计 RISC-V 处理器、曾获华为毕昇杯三等奖。对处理器微架构、编译优化方向有浓厚兴趣，希望在研究生阶段继续深耕体系结构领域。

]

== #fa-graduation-cap 教育背景

#sidebar(with-line: true, side-width: 12%)[
  2022.09 - 2026.06
][
  *哈尔滨工业大学（深圳）* · 计算机科学与技术

  GPA: 82.78/100（专业排名 58%）
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

== #fa-award 获奖情况

#item([ *全国大学生计算机系统能力大赛编译系统设计赛（华为毕昇杯）* ], [ *三等奖* ], date[ 2024 年 8 月 ])

== #fa-code 项目经历

#item(
  link("https://github.com/dusk-phantom/duskphantom", [ *SysY 编译器（华为毕昇杯）* ]),
  [ *团队项目* ],
  date[ 2024.02 – 2024.12 ],
)

#tech[ Rust, RISC-V, 编译原理 ]

将 SysY（C 语言子集）编译为 RISC-V 汇编。个人负责编译器后端，主要工作：

- 基于图着色的寄存器分配算法
- 基于表调度（List Scheduling）的指令调度
- 基于 Pettis-Hansen 算法的基本块重排优化
- 面向 rv64gc 的指令选择与代码生成

项目采用前后端分离架构，前端生成 LLVM IR 可通过 LLC 验证，后端可独立从 LLVM IR 进行指令选择。

#item(
  link("https://github.com/dusk-phantom/rv64gc-thrd", [ *轻量级用户态线程库* ]),
  [ *毕昇杯附属项目* ],
  date[ 2024.02 – 2024.12 ],
)

#tech[ Clang Builtins, Linux 系统调用, RISC-V ]

参考 musl libc 的 pthread 实现，为编译器自动并行功能设计精简线程库。实现类似 fork 的语义（一次调用多次返回），但在线程级别而非进程级别运行，减少上下文切换开销。

#item(
  link("https://github.com/KINGFIOX/ysyx-workbench", [ *一生一芯（ysyx\_26010003）* ]),
  [ *个人项目* ],
  date[ 2025.12 – 至今 ],
)

#tech[ C, Verilog, Chisel, Rust, RISC-V, Nix, 计算机体系结构 ]

"一生一芯"开源处理器培养计划，目前已通过 C 阶段考核，目前进度在 B5 阶段。#link("https://docs.qq.com/sheet/DTWtVWUZwTEhpeW1K")[（学习记录）]


- *软件*：基于南京大学 PA 实验，使用 C 语言实现 RV32IM 指令集模拟器（NEMU），可运行 RT-Thread 操作系统；使用 Rust 搭建仿真平台；接入 lightSSS 快照管理
- *硬件*：设计 RV32I 单发射乱序处理器并接入 SoC。采用前后端解耦的架构；采用值捕捉的寄存器重命名方案；采用基于 PLRU 的 ICache；采用 RAS+GShare+BHT 的动态分支预测
- *工程实践*：使用 nix-flake 管理外部依赖 NVBoard、Spike、Capstone；外部依赖均采用 Meson+Nix 静态分发

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

通过与 xv6 对比学习 i386 与 RISC-V 架构差异。实现定点小数运算用于调度时间计算，参考 4.4 BSD 实现 MLFQ 调度算法，完成用户进程参数传递及部分系统调用。

#item(
  link("https://github.com/KINGFIOX/cs144", [ *Stanford CS144 计算机网络实验* ]),
  [ *课外项目* ],
  date[ 2025.12 ],
)

#tech[ C++, 计算机网络, TCP/IP ]

实现用户态 TCP 协议栈，包括可靠数据传输、流量控制与拥塞控制机制。

== #fa-award 自我评价

- *主动学习*：在学校培养体系基础上积极拓展，将课程实验升级为更具挑战性的开源项目：xv6 → Pintos; 校内计网实验 → CS144; minirv → 一生一芯; 编译原理实验 → 毕昇杯。
- *善于思考*：通过 Pintos（i386）与 xv6（RISC-V）对比，深入理解不同指令集架构的设计差异。
- *技术热情*：Nix、Chisel、Rust

== #fa-building-columns 学生工作

#item([ *计算机十班班长* ], [ ], date[ 2022.09 – 至今 ])

#item([ *计算机学院学生会权益部成员* ], [ ], date[ 2023.03 – 2024.06 ])
