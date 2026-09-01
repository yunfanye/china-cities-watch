# 中国主要城市观察（China Major Cities Watch）

一个持续维护的中国主要城市结构化信息库，覆盖 **经济、产业、收入、房产、人口、交通、教育、医疗、环境、治理、生活方式、政策** 十二个维度。覆盖全部 34 个省级行政区（含香港、澳门、台湾）的 64 座主要城市，按地区组织，由 AI agents 定期收集与更新。

比较两个中国城市，最好先明确目的——"适合生活""适合创业""适合工作""适合投资"的结论可能完全不同。本仓库不试图回答"哪个城市绝对更好"，而是提供足够结构化、可比较、带来源的数据，帮助回答：

> **对什么样的人、在什么人生阶段、为了什么目标，哪个城市更合适？**

## 这个仓库能回答的问题

- 找工作 / 创业 / 家庭定居 / 退休养老 / 房产投资，不同目标下两个城市怎么比？
- 一个城市正在变好还是变弱？（趋势比存量更重要）
- 同样的税后收入，在不同城市每年实际能存下多少钱？
- 同样通勤时间、同样预算，在不同城市能住什么样的房子？

## 仓库结构

```
.
├── README.md                 # 本文件：项目说明与全部城市状态总览
├── AGENTS.md                 # AI agent 工作手册（维护者必读）
├── CHANGELOG.md              # 仓库级更新日志
├── cities.yml                # 城市登记表（城市清单与状态的唯一权威来源）
├── docs/
│   ├── methodology.md        # 十二维度比较方法论（指标、评分、权重、一票否决）
│   └── data-standards.md     # 数据规范（口径、来源优先级、格式、状态标记）
├── templates/
│   └── city/                 # 城市档案空白模板（新增城市时手动复制）
└── cities/                   # 64 座城市的档案，全部骨架已生成
    ├── beijing/              # 直辖市与港澳直接位于 cities/ 下
    ├── fujian/
    │   ├── fuzhou/
    │   ├── xiamen/
    │   └── quanzhou/         # 省份/城市 两级目录
    └── .../
        └── <city>/
            ├── README.md     # 城市概览、评分卡、一票否决检查
            ├── 01-economy.md … 12-policy.md
            ├── sources.md    # 该城市的数据来源清单
            └── meta.yml      # 维度级更新状态（机器可读）
```

## 十二个维度

每个城市档案包含以下 12 个文件，指标定义与比较注意事项见 [docs/methodology.md](docs/methodology.md)。

| # | 维度 | 文件 | 核心问题 |
|---|------|------|----------|
| 01 | 经济实力与发展趋势 | `01-economy.md` | 城市在变强还是变弱？财政健康吗？ |
| 02 | 产业结构与职业机会 | `02-industry.md` | 有没有足够多、足够好的工作和备选雇主？ |
| 03 | 收入与实际购买力 | `03-income.md` | 扣掉住房和生活成本后，每年能存下多少？ |
| 04 | 房地产与居住条件 | `04-housing.md` | 同样的钱、同样的通勤，能住什么样的房子？ |
| 05 | 人口与城市活力 | `05-population.md` | 人在流入还是流出？年轻人愿意留下吗？ |
| 06 | 交通与区位 | `06-transport.md` | 门到门通勤和对外连接方便吗？ |
| 07 | 教育资源 | `07-education.md` | 普通家庭实际能获得什么水平的教育？ |
| 08 | 医疗与养老 | `08-healthcare.md` | 大病顶得住、小病看得快吗？ |
| 09 | 环境、气候与自然条件 | `09-environment.md` | 气候与自然条件能否长期接受？ |
| 10 | 公共服务与城市治理 | `10-governance.md` | 日常生活和办事省不省心？ |
| 11 | 文化、娱乐与生活方式 | `11-lifestyle.md` | 生活节奏与文化氛围合不合拍？ |
| 12 | 政策与长期不确定性 | `12-policy.md` | 落户、买房、子女入学政策友好且稳定吗？ |

## 城市总览

全部 64 城骨架已生成，点击城市名进入档案。**每次数据更新后，维护 agent 必须同步刷新本表对应行**（完整度 = 已完成维度数 x/12，与该城市 `meta.yml` 一致）。`cities.yml` 是状态的唯一权威来源，本表为人类可读镜像。

完整度图例：🔴 0/12 待填写 ｜ 🟡 部分完成 ｜ 🟢 12/12 完整 ｜ ⚠️ 数据过期待刷新

### 华北

| 省份 | 城市 | 完整度 | 最后更新 |
|------|------|:------:|:--------:|
| 直辖市 | [北京](cities/beijing) | 🔴 0/12 | — |
| 直辖市 | [天津](cities/tianjin) | 🔴 0/12 | — |
| 河北 | [石家庄](cities/hebei/shijiazhuang) | 🔴 0/12 | — |
| 河北 | [唐山](cities/hebei/tangshan) | 🔴 0/12 | — |
| 山西 | [太原](cities/shanxi/taiyuan) | 🔴 0/12 | — |
| 内蒙古 | [呼和浩特](cities/neimenggu/hohhot) | 🔴 0/12 | — |
| 内蒙古 | [包头](cities/neimenggu/baotou) | 🔴 0/12 | — |

### 东北

| 省份 | 城市 | 完整度 | 最后更新 |
|------|------|:------:|:--------:|
| 辽宁 | [沈阳](cities/liaoning/shenyang) | 🔴 0/12 | — |
| 辽宁 | [大连](cities/liaoning/dalian) | 🔴 0/12 | — |
| 吉林 | [长春](cities/jilin/changchun) | 🔴 0/12 | — |
| 黑龙江 | [哈尔滨](cities/heilongjiang/harbin) | 🔴 0/12 | — |

### 华东

| 省份 | 城市 | 完整度 | 最后更新 |
|------|------|:------:|:--------:|
| 直辖市 | [上海](cities/shanghai) | 🔴 0/12 | — |
| 江苏 | [南京](cities/jiangsu/nanjing) | 🔴 0/12 | — |
| 江苏 | [苏州](cities/jiangsu/suzhou) | 🔴 0/12 | — |
| 江苏 | [无锡](cities/jiangsu/wuxi) | 🔴 0/12 | — |
| 江苏 | [常州](cities/jiangsu/changzhou) | 🔴 0/12 | — |
| 江苏 | [南通](cities/jiangsu/nantong) | 🔴 0/12 | — |
| 江苏 | [徐州](cities/jiangsu/xuzhou) | 🔴 0/12 | — |
| 浙江 | [杭州](cities/zhejiang/hangzhou) | 🔴 0/12 | — |
| 浙江 | [宁波](cities/zhejiang/ningbo) | 🔴 0/12 | — |
| 浙江 | [温州](cities/zhejiang/wenzhou) | 🔴 0/12 | — |
| 浙江 | [嘉兴](cities/zhejiang/jiaxing) | 🔴 0/12 | — |
| 安徽 | [合肥](cities/anhui/hefei) | 🔴 0/12 | — |
| 安徽 | [芜湖](cities/anhui/wuhu) | 🔴 0/12 | — |
| 福建 | [福州](cities/fujian/fuzhou) | 🔴 0/12 | — |
| 福建 | [厦门](cities/fujian/xiamen) | 🔴 0/12 | — |
| 福建 | [泉州](cities/fujian/quanzhou) | 🔴 0/12 | — |
| 江西 | [南昌](cities/jiangxi/nanchang) | 🔴 0/12 | — |
| 山东 | [济南](cities/shandong/jinan) | 🔴 0/12 | — |
| 山东 | [青岛](cities/shandong/qingdao) | 🔴 0/12 | — |
| 山东 | [烟台](cities/shandong/yantai) | 🔴 0/12 | — |

### 中南

| 省份 | 城市 | 完整度 | 最后更新 |
|------|------|:------:|:--------:|
| 河南 | [郑州](cities/henan/zhengzhou) | 🔴 0/12 | — |
| 河南 | [洛阳](cities/henan/luoyang) | 🔴 0/12 | — |
| 湖北 | [武汉](cities/hubei/wuhan) | 🔴 0/12 | — |
| 湖北 | [宜昌](cities/hubei/yichang) | 🔴 0/12 | — |
| 湖南 | [长沙](cities/hunan/changsha) | 🔴 0/12 | — |
| 广东 | [广州](cities/guangdong/guangzhou) | 🔴 0/12 | — |
| 广东 | [深圳](cities/guangdong/shenzhen) | 🔴 0/12 | — |
| 广东 | [东莞](cities/guangdong/dongguan) | 🔴 0/12 | — |
| 广东 | [佛山](cities/guangdong/foshan) | 🔴 0/12 | — |
| 广东 | [珠海](cities/guangdong/zhuhai) | 🔴 0/12 | — |
| 广东 | [惠州](cities/guangdong/huizhou) | 🔴 0/12 | — |
| 广西 | [南宁](cities/guangxi/nanning) | 🔴 0/12 | — |
| 广西 | [桂林](cities/guangxi/guilin) | 🔴 0/12 | — |
| 海南 | [海口](cities/hainan/haikou) | 🔴 0/12 | — |
| 海南 | [三亚](cities/hainan/sanya) | 🔴 0/12 | — |

### 西南

| 省份 | 城市 | 完整度 | 最后更新 |
|------|------|:------:|:--------:|
| 直辖市 | [重庆](cities/chongqing) | 🔴 0/12 | — |
| 四川 | [成都](cities/sichuan/chengdu) | 🔴 0/12 | — |
| 四川 | [绵阳](cities/sichuan/mianyang) | 🔴 0/12 | — |
| 贵州 | [贵阳](cities/guizhou/guiyang) | 🔴 0/12 | — |
| 云南 | [昆明](cities/yunnan/kunming) | 🔴 0/12 | — |
| 云南 | [大理](cities/yunnan/dali) | 🔴 0/12 | — |
| 西藏 | [拉萨](cities/xizang/lhasa) | 🔴 0/12 | — |

### 西北

| 省份 | 城市 | 完整度 | 最后更新 |
|------|------|:------:|:--------:|
| 陕西 | [西安](cities/shaanxi/xian) | 🔴 0/12 | — |
| 甘肃 | [兰州](cities/gansu/lanzhou) | 🔴 0/12 | — |
| 青海 | [西宁](cities/qinghai/xining) | 🔴 0/12 | — |
| 宁夏 | [银川](cities/ningxia/yinchuan) | 🔴 0/12 | — |
| 新疆 | [乌鲁木齐](cities/xinjiang/urumqi) | 🟢 12/12 | 2026-08-31 |

### 港澳台

| 地区 | 城市 | 完整度 | 最后更新 |
|------|------|:------:|:--------:|
| 香港 | [香港](cities/hongkong) | 🔴 0/12 | — |
| 澳门 | [澳门](cities/macau) | 🔴 0/12 | — |
| 台湾 | [台北](cities/taiwan/taipei) | 🔴 0/12 | — |
| 台湾 | [新竹](cities/taiwan/hsinchu) | 🔴 0/12 | — |
| 台湾 | [台中](cities/taiwan/taichung) | 🔴 0/12 | — |
| 台湾 | [高雄](cities/taiwan/kaohsiung) | 🔴 0/12 | — |

## 数据规范（摘要）

完整规范见 [docs/data-standards.md](docs/data-standards.md)，核心原则：

1. **三元组原则**：每个数字必须带 `数值 + 年份 + 来源`，缺一即视为未完成。
2. **来源分级**：官方统计公报 > 政府部门发布 > 权威研究机构 > 媒体报道 > 估算（估算必须标 ⚠️）。
3. **口径注明**：常住 vs 户籍人口、平均 vs 中位数工资、成交价 vs 挂牌价——口径不同的数字不可直接比较。
4. **保留历史**：更新时不覆盖旧数据，移入历史表，让每个指标随时间形成趋势。
5. **宁缺毋假**：找不到的数据留空并标注 `TODO`，严禁编造。
6. **港澳台适配**：制度差异较大的指标（户籍、公积金、医保、三甲医院等）按当地对应制度填写，不适用时标 `N/A` 并注明当地对应项（如强积金、健保）。

## 更新机制

本仓库由 AI agents 维护：**不同 agent 认领不同城市**，通过 `cities.yml` 中的 `maintainer` 字段避免冲突，完整流程见 [AGENTS.md](AGENTS.md)。每轮更新收尾时，agent 同步刷新本 README 城市总览表中自己城市的"完整度"和"最后更新"两列。

各维度按变化速度分层刷新，而不是每次全量重写：

| 刷新频率 | 维度 | 说明 |
|----------|------|------|
| 每季度 | 04 房产（价格）、02 产业（招聘热度）、12 政策 | 变化快，直接影响决策 |
| 每半年 | 03 收入、05 人口、06 交通、10 治理 | |
| 每年 | 01 经济、07 教育、08 医疗、09 环境、11 文化 | 各市统计公报集中在每年 2–4 月发布，**每年 Q2 是年度数据的集中更新窗口** |

## 如何使用：比较两个城市

1. **先明确目的**（找工作 / 创业 / 家庭定居 / 养老 / 投资），从 [docs/methodology.md](docs/methodology.md) 选取对应的权重方案；
2. 打开两个城市的档案，逐维度对照"核心指标"表打分（1–10 分）；
3. 计算加权总分：`城市总分 = Σ(维度评分 × 权重)`；
4. **过一遍一票否决项**（气候无法接受、买不起满足需求的住房、无法落户等）——任何一项不通过，总分再高也应放弃；
5. 注意城市内部差异：尽量比较"同样通勤时间、同样预算、同样教育条件"的对应区域，而不是全市均价对全市均价。

## 免责声明

本仓库数据来自公开渠道，由 AI 收集整理，可能存在误差、口径差异与时间滞后；定性判断仅代表整理时的观察。内容不构成任何置业、投资或迁居建议，重大决策请核实原始来源并实地考察。

## License

[CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/deed.zh-hans) — 欢迎引用与二次整理，注明出处，禁止商用。
