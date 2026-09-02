<map version="1.0.1">
  <node ID="root" TEXT="AI应用开发工程师｜面试问题与答案">
    <node ID="intro" TEXT="一、岗位定位与开场" POSITION="right">
      <node ID="intro_1" TEXT="一分钟自我介绍">
        <node ID="intro_1_a" TEXT="中科院大学人工智能硕士，本科物联网工程；有AI应用、Agent、RAG、后端和全栈开发经历。"/>
        <node ID="intro_1_b" TEXT="实习项目：质量管理体系Agent、功能开发成果评审Agent、AI Coding Harness。"/>
        <node ID="intro_1_c" TEXT="论文引用查证智能体：GROBID、FAISS、BM25、Rerank、FastAPI。"/>
        <node ID="intro_1_d" TEXT="核心优势：结构化事实交给工具，规范知识交给RAG，LLM负责理解与归纳，高风险场景人工确认。"/>
      </node>
      <node ID="intro_2" TEXT="为什么应聘AI应用开发工程师？">
        <node ID="intro_2_a" TEXT="希望做能进入真实业务流程的AI应用，而不只是模型Demo。"/>
        <node ID="intro_2_b" TEXT="已有需求分析、工具调用、RAG、工作流、FastAPI、评估、异常处理和人工确认经验。"/>
        <node ID="intro_2_c" TEXT="希望继续提升应用效果评估、工程交付和业务落地能力。"/>
      </node>
      <node ID="intro_3" TEXT="项目讲述顺序">
        <node ID="intro_3_a" TEXT="质量管理Agent：企业业务、Tool Calling、RAG边界、数据同步。"/>
        <node ID="intro_3_b" TEXT="成果评审Agent：证据链、LangGraph、状态机、安全控制。"/>
        <node ID="intro_3_c" TEXT="论文查证Agent：Hybrid RAG、评估和工程化。"/>
        <node ID="intro_3_d" TEXT="AI Coding Harness：Context Engineering、Vibe Coding、人工审批。"/>
      </node>
    </node>

    <node ID="quality" TEXT="二、项目一：质量管理体系Agent" POSITION="right">
      <node ID="quality_main" TEXT="主问题：请介绍质量管理体系Agent">
        <node ID="quality_main_a" TEXT="场景：接入禅道BUG、GitLab Commit、飞书需求文档和质量体系文件，支持质量查询与分析。"/>
        <node ID="quality_main_b" TEXT="流程：意图识别 → 受控工具调用/RAG → 结果汇总 → LLM归纳。"/>
        <node ID="quality_main_c" TEXT="结构化指标由工具/指标引擎计算；质量体系和Checklist由RAG提供依据。"/>
        <node ID="quality_main_d" TEXT="跨网接入：Edge主动同步 + SQLite Outbox + 游标增量 + 批次幂等 + 数据隔离。"/>
      </node>
      <node ID="quality_q1" TEXT="追问：你具体负责什么？">
        <node ID="quality_q1_a" TEXT="负责或参与LangGraph主流程、ToolRegistry、结构化数据与RAG边界、需求变更标注落库、Edge同步相关实现。"/>
        <node ID="quality_q1_b" TEXT="明确区分个人负责、个人参与和团队完成，不把团队成果全部归为个人。"/>
      </node>
      <node ID="quality_q2" TEXT="追问：为什么不把所有数据交给RAG/LLM？">
        <node ID="quality_q2_a" TEXT="BUG数量、等级、功能分布等是结构化事实，需确定性计算、稳定口径和可审计。"/>
        <node ID="quality_q2_b" TEXT="规范、Checklist和流程条款是文档知识，适合RAG检索。LLM负责理解和归纳。"/>
        <node ID="quality_q2_c" TEXT="文本化结构化数据可辅助检索，但不适合作为核心统计链路。"/>
      </node>
      <node ID="quality_q3" TEXT="追问：RAG承担什么职责？">
        <node ID="quality_q3_a" TEXT="检索质量体系文件、Checklist和相关规范，提供来源、版本和位置等依据。"/>
        <node ID="quality_q3_b" TEXT="检索不到依据时，返回已确认事实和信息不足原因，不凭常识补全。"/>
      </node>
      <node ID="quality_q4" TEXT="追问：为什么用LangGraph？">
        <node ID="quality_q4_a" TEXT="流程存在多步骤、状态传递、条件分支、失败处理和人工确认。"/>
        <node ID="quality_q4_b" TEXT="LangGraph显式表达节点、状态和边；简单问答不强行使用复杂工作流。"/>
      </node>
      <node ID="quality_q5" TEXT="追问：ToolRegistry如何设计？">
        <node ID="quality_q5_a" TEXT="工具包含名称、描述、输入Schema、返回结构、权限、数据范围、错误语义、超时和副作用说明。"/>
        <node ID="quality_q5_b" TEXT="LLM只选择和组织工具；服务端负责认证、授权、参数校验、范围限制和审计。"/>
        <node ID="quality_q5_c" TEXT="不让LLM直接生成SQL，避免越权、全表扫描、统计口径错误和敏感数据泄露。"/>
      </node>
      <node ID="quality_q6" TEXT="追问：意图识别错误怎么兜底？">
        <node ID="quality_q6_a" TEXT="组合规则、Embedding候选召回、LLM/分类器结构化分类和参数校验。"/>
        <node ID="quality_q6_b" TEXT="置信度不足、参数不完整或意图冲突时向用户澄清，不能强行调用工具。"/>
      </node>
      <node ID="quality_q7" TEXT="追问：Edge为什么主动同步？">
        <node ID="quality_q7_a" TEXT="中心不能主动访问分公司内网，由Edge在本地网络侧主动发起同步。"/>
        <node ID="quality_q7_b" TEXT="Outbox防断网丢数据；游标做增量；批次幂等处理重试和重复发送。"/>
        <node ID="quality_q7_c" TEXT="同步失败保留待发送数据并重试；游标不能在数据可靠提交前提前推进。"/>
      </node>
      <node ID="quality_q8" TEXT="追问：如何保证分公司数据不串？">
        <node ID="quality_q8_a" TEXT="请求、任务、数据库、缓存、异步消息和日志都携带组织/实例标识。"/>
        <node ID="quality_q8_b" TEXT="服务端根据认证身份确定范围，数据库查询和工具执行强制增加隔离条件。"/>
      </node>
      <node ID="quality_q9" TEXT="追问：需求变更标注为什么用LLM并落库？">
        <node ID="quality_q9_a" TEXT="缺陷描述中的变更原因需要语义理解；LLM在限定标签和结构化输出下完成标注。"/>
        <node ID="quality_q9_b" TEXT="落库可复用、降成本和延迟、保持版本一致，并支持人工抽检、纠错和重新标注。"/>
      </node>
      <node ID="quality_q10" TEXT="追问：如何评估Agent可靠性？">
        <node ID="quality_q10_a" TEXT="离线评估：意图、参数、工具选择、指标结果、证据覆盖率、最终回答质量。"/>
        <node ID="quality_q10_b" TEXT="线上观测：工具成功率、空结果率、降级率、人工修改/确认结果。"/>
      </node>
      <node ID="quality_q11" TEXT="追问：有哪些安全风险？">
        <node ID="quality_q11_a" TEXT="越权工具调用、非法参数、Prompt Injection、组织数据串读、日志泄露、外部数据不可信。"/>
        <node ID="quality_q11_b" TEXT="控制：白名单、认证授权、Schema校验、数据隔离、日志脱敏、资源限制和审计。"/>
      </node>
    </node>

    <node ID="review" TEXT="三、项目二：功能开发成果评审Agent" POSITION="right">
      <node ID="review_main" TEXT="主问题：请介绍成果评审Agent">
        <node ID="review_main_a" TEXT="面向GitLab代码仓库，根据固定Checklist生成可追溯的评审草稿，由人工确认归档。"/>
        <node ID="review_main_b" TEXT="9阶段：清单加载 → 仓库快照 → 目录解析 → 依赖解析 → 事实提取 → 证据组装 → 逐项裁决 → 人工确认 → 归档。"/>
        <node ID="review_main_c" TEXT="Evidence-Grounded：结论关联文件路径、行号、快照SHA，并校验证据引用。"/>
        <node ID="review_main_d" TEXT="状态机支持创建、执行、待确认、取消、失败和重启中断；控制Token权限、源码落库、并发和文件大小。"/>
      </node>
      <node ID="review_q1" TEXT="追问：为什么不能让LLM直接读代码？">
        <node ID="review_q1_a" TEXT="直接阅读整个仓库会有上下文过长、版本不固定、遗漏文件、证据难复查等问题。"/>
        <node ID="review_q1_b" TEXT="快照固定版本，事实提取和证据组装缩小模型任务范围，便于定位和重试。"/>
      </node>
      <node ID="review_q2" TEXT="追问：为什么绑定snapshot_sha？">
        <node ID="review_q2_a" TEXT="分支名会变化，SHA可以固定评审代码版本，保证路径、行号和结论可复现。"/>
      </node>
      <node ID="review_q3" TEXT="追问：如何防止模型编造路径或行号？">
        <node ID="review_q3_a" TEXT="先从固定快照提取真实证据候选，模型只能选择候选证据。"/>
        <node ID="review_q3_b" TEXT="服务端校验路径、行号、文件内容和快照SHA；失败则降级为无法确认。"/>
      </node>
      <node ID="review_q4" TEXT="追问：不符合和无法确认有什么区别？">
        <node ID="review_q4_a" TEXT="不符合：有明确证据证明Checklist条件未满足。"/>
        <node ID="review_q4_b" TEXT="无法确认：数据、权限、文件或证据不足，不能得出结论。"/>
      </node>
      <node ID="review_q5" TEXT="追问：节点为什么拆成9个？">
        <node ID="review_q5_a" TEXT="便于单一职责、进度跟踪、错误定位、局部重试和人工介入。"/>
        <node ID="review_q5_b" TEXT="不能无限拆细；看阶段是否有独立输入输出、失败处理、观测或人工介入需求。"/>
      </node>
      <node ID="review_q6" TEXT="追问：状态机有哪些状态？">
        <node ID="review_q6_a" TEXT="创建、执行、待人工确认、已完成、取消、失败、服务重启中断。"/>
        <node ID="review_q6_b" TEXT="状态转换需合法校验，已取消不能直接完成，待确认不能绕过确认归档。"/>
      </node>
      <node ID="review_q7" TEXT="追问：如何设计创建幂等？">
        <node ID="review_q7_a" TEXT="使用稳定幂等键记录请求与任务映射，重复请求返回已有任务。"/>
        <node ID="review_q7_b" TEXT="幂等记录和任务创建需具备事务或等价一致性保证。"/>
      </node>
      <node ID="review_q8" TEXT="追问：取消和完成同时到达怎么办？">
        <node ID="review_q8_a" TEXT="使用事务、版本号或条件更新，保证只有一个合法状态转换成功。"/>
        <node ID="review_q8_b" TEXT="不依赖内存变量，操作失败后读取并返回最终状态。"/>
      </node>
      <node ID="review_q9" TEXT="追问：服务重启时任务怎么办？">
        <node ID="review_q9_a" TEXT="将无最终状态的任务标记为中断，根据检查点恢复、重新执行或人工处理。"/>
        <node ID="review_q9_b" TEXT="可重试节点必须幂等，避免恢复时重复副作用。"/>
      </node>
      <node ID="review_q10" TEXT="追问：如何处理大仓库和慢请求？">
        <node ID="review_q10_a" TEXT="限制仓库、文件、并发和文件类型；采用异步任务、阶段化处理和进度记录。"/>
        <node ID="review_q10_b" TEXT="缓存或增量处理需绑定snapshot_sha，避免不同版本混用。"/>
      </node>
      <node ID="review_q11" TEXT="追问：为什么源码不落库？">
        <node ID="review_q11_a" TEXT="源码可能是敏感信息；只保留仓库标识、SHA、路径、行号、证据摘要、结论和审计记录。"/>
      </node>
      <node ID="review_q12" TEXT="追问：为什么使用只读GitLab Token？">
        <node ID="review_q12_a" TEXT="评审Agent只需读取仓库，不应具备写代码、改分支或发布权限。"/>
      </node>
      <node ID="review_q13" TEXT="追问：如何评估评审Agent？">
        <node ID="review_q13_a" TEXT="逐项结论准确率、证据覆盖率、引用合法率、误报率、漏报率和无法确认的合理性。"/>
        <node ID="review_q13_b" TEXT="工程指标：节点耗时、失败率、重试率、取消率、人工修改率。"/>
      </node>
    </node>

    <node ID="paper" TEXT="四、项目三：论文引用查证智能体" POSITION="right">
      <node ID="paper_main" TEXT="主问题：请介绍论文引用查证智能体">
        <node ID="paper_main_a" TEXT="完成论文PDF解析、证据检索、引用合理性判断和结构化结果输出。"/>
        <node ID="paper_main_b" TEXT="链路：GROBID → TEI XML → 切分/向量化 → BM25+FAISS → Rerank → 证据组装 → 引用判断。"/>
        <node ID="paper_main_c" TEXT="FastAPI服务化，结合Redis缓存、Docker、日志和异常处理。"/>
        <node ID="paper_main_d" TEXT="人工标注集评估Recall@K、证据覆盖率和判定准确率；证据不足返回无法确认。"/>
      </node>
      <node ID="paper_q1" TEXT="追问：为什么使用GROBID？">
        <node ID="paper_q1_a" TEXT="PDF不是天然结构化文本，GROBID提取TEI XML，保留章节、段落、引用等结构。"/>
      </node>
      <node ID="paper_q2" TEXT="追问：为什么使用Hybrid RAG？">
        <node ID="paper_q2_a" TEXT="向量检索补语义，BM25补专有名词、编号和精确短语，Rerank对候选证据精排。"/>
      </node>
      <node ID="paper_q3" TEXT="追问：Chunk如何设计？">
        <node ID="paper_q3_a" TEXT="结合章节、段落和引用上下文切分，保留标题、页码、引用标识和文档ID。"/>
        <node ID="paper_q3_b" TEXT="过大引入噪声，过小缺少完整论证关系；用标注集比较策略。"/>
      </node>
      <node ID="paper_q4" TEXT="追问：如何判断证据真正支持结论？">
        <node ID="paper_q4_a" TEXT="检查论文、引用对象、上下文和证据语义关系，不能把相似度直接当成证明。"/>
        <node ID="paper_q4_b" TEXT="通过证据覆盖率、判定准确率和人工复核验证；不足时无法确认。"/>
      </node>
      <node ID="paper_q5" TEXT="追问：FAISS和向量数据库区别？">
        <node ID="paper_q5_a" TEXT="FAISS偏本地向量索引，简单快速；向量数据库通常提供持久化、过滤、分布式和运维能力。"/>
      </node>
      <node ID="paper_q6" TEXT="追问：如何优化RAG？">
        <node ID="paper_q6_a" TEXT="依次检查解析、Chunk、元数据、Embedding、BM25、Top-K、Rerank和最终证据使用。"/>
      </node>
    </node>

    <node ID="harness" TEXT="五、项目四：AI Coding Harness与Context Engineering" POSITION="right">
      <node ID="harness_main" TEXT="主问题：AI Coding Harness是什么？">
        <node ID="harness_main_a" TEXT="面向Claude Code和Codex的最小受控开发上下文与人工审批流程，不是另一个自动写代码Agent。"/>
        <node ID="harness_main_b" TEXT="上下文资产：dev_tasks、decision_log、api_contract、test_plan。"/>
        <node ID="harness_main_c" TEXT="流程：业务建模 → 任务单人工确认 → AI编码/测试 → 人工审查验收 → 归档续接。"/>
      </node>
      <node ID="harness_q1" TEXT="追问：为什么不能把整个仓库交给AI？">
        <node ID="harness_q1_a" TEXT="全仓库会增加Token和噪声，关键约束被淹没，旧事实与新代码混杂。"/>
        <node ID="harness_q1_b" TEXT="先固定任务、版本和约束，再按需检索入口、调用链、数据模型和测试。"/>
      </node>
      <node ID="harness_q2" TEXT="追问：什么是Context Engineering？">
        <node ID="harness_q2_a" TEXT="系统性设计Agent每阶段看到什么信息、来源、组织方式、更新时间和不可覆盖内容。"/>
        <node ID="harness_q2_b" TEXT="Repo任务必须知道改什么、为什么改、不能碰什么、谁依赖以及如何验证。"/>
      </node>
      <node ID="harness_q3" TEXT="追问：如何做上下文压缩？">
        <node ID="harness_q3_a" TEXT="保留硬约束、接口、权限、安全、验收和相关代码。"/>
        <node ID="harness_q3_b" TEXT="历史对话压缩为事实、决策、未解决问题和待办；低频日志做摘要，问题出现时按需检索。"/>
      </node>
      <node ID="harness_q4" TEXT="追问：Skill和Function Call区别？">
        <node ID="harness_q4_a" TEXT="Function Call是一次具体函数调用，包含名称、参数Schema和返回结果。"/>
        <node ID="harness_q4_b" TEXT="Skill是面向一类任务的能力包，还包含流程、知识、工具、示例、失败处理和安全边界。"/>
      </node>
      <node ID="harness_q5" TEXT="追问：Skill渐进式披露是什么？">
        <node ID="harness_q5_a" TEXT="先暴露名称和摘要，匹配后加载输入输出与限制，执行时再加载详细规则和工具Schema。"/>
        <node ID="harness_q5_b" TEXT="减少上下文噪声、错误路由和误调用，便于权限、版本和提示词管理。"/>
      </node>
      <node ID="harness_q6" TEXT="追问：如何理解Vibe Coding？">
        <node ID="harness_q6_a" TEXT="适合原型、样板代码、测试生成和重复重构，但不能替代需求、架构、权限、测试和人审。"/>
        <node ID="harness_q6_b" TEXT="Harness将其放入受控流程，限定任务范围，保留人工责任边界。"/>
      </node>
      <node ID="harness_q7" TEXT="追问：Harness和成果评审Agent有什么关系？">
        <node ID="harness_q7_a" TEXT="Harness控制开发前/开发中的上下文和变更边界。"/>
        <node ID="harness_q7_b" TEXT="评审Agent控制开发成果后的快照、证据和评审草稿。两者可通过任务、决策、测试和评审记录形成闭环。"/>
      </node>
    </node>

    <node ID="general" TEXT="六、通用Agent、LLM与RAG问题" POSITION="left">
      <node ID="general_1" TEXT="Agent和普通LLM问答区别">
        <node ID="general_1_a" TEXT="Agent围绕目标进行意图理解、规划、工具调用、状态管理、验证、重试和人工确认。"/>
      </node>
      <node ID="general_2" TEXT="Workflow、ReAct、Plan-and-Execute如何选">
        <node ID="general_2_a" TEXT="明确流程选Workflow；动态探索选ReAct；复杂任务可Plan-and-Execute，但要处理计划错误和中途失败。"/>
        <node ID="general_2_b" TEXT="当前质量Agent和成果评审Agent更偏受控Workflow。"/>
      </node>
      <node ID="general_3" TEXT="如何降低LLM幻觉">
        <node ID="general_3_a" TEXT="工具计算结构化事实；RAG绑定规范证据；Schema约束；服务端校验引用；无证据降级；高风险人工确认。"/>
        <node ID="general_3_b" TEXT="降低temperature只能辅助，不能替代证据、权限和服务端控制。"/>
      </node>
      <node ID="general_4" TEXT="Agent如何做意图识别">
        <node ID="general_4_a" TEXT="规则 + Embedding候选召回 + LLM/分类器结构化分类 + 参数和权限校验。"/>
        <node ID="general_4_b" TEXT="多意图拆分为有依赖关系的子任务；冲突或低置信度时澄清。"/>
      </node>
      <node ID="general_5" TEXT="一次输入多个诉求如何拆分">
        <node ID="general_5_a" TEXT="明确子任务边界、依赖、输入输出和错误状态；统一时间、范围、版本和权限上下文。"/>
        <node ID="general_5_b" TEXT="独立任务可并行；最终分块汇总完成、失败、证据不足和人工确认状态。"/>
      </node>
      <node ID="general_6" TEXT="多Agent之间如何分配模型">
        <node ID="general_6_a" TEXT="按复杂度、上下文长度、风险、延迟、并发、成本和评估结果路由。"/>
        <node ID="general_6_b" TEXT="简单任务用小模型，复杂/高风险任务用强模型，确定性统计优先工具。"/>
      </node>
      <node ID="general_7" TEXT="如何判断Agent生产可用">
        <node ID="general_7_a" TEXT="检查边界、证据、权限、状态持久化、幂等、取消、重试、恢复、评估、观测、安全、成本和维护。"/>
        <node ID="general_7_b" TEXT="Demo证明理想路径跑通；生产可用要求异常、并发、重启、数据缺失和模型变化下仍可控。"/>
      </node>
      <node ID="general_8" TEXT="Agent体系如何评估">
        <node ID="general_8_a" TEXT="意图、参数、工具选择、工具成功率、Recall@K、证据覆盖率、引用正确率、回答正确性。"/>
        <node ID="general_8_b" TEXT="同时评估延迟、成本、降级率、人工修改率、异常率和安全风险。任务成功率不能唯一评判。"/>
      </node>
      <node ID="general_9" TEXT="Prompt Injection如何防护">
        <node ID="general_9_a" TEXT="区分系统指令、用户输入和外部文档；工具白名单、Schema、权限、隔离、资源限制和人工审批。"/>
        <node ID="general_9_b" TEXT="Prompt约束只是辅助，不能替代服务端认证、授权和数据隔离。"/>
      </node>
      <node ID="general_10" TEXT="ASR说明">
        <node ID="general_10_a" TEXT="ASR不是本人项目，不把流式或非流式ASR经验说成个人经历。"/>
        <node ID="general_10_b" TEXT="若被问到：如实说明未实际做过，可从准确率、延迟、关键词召回和实时链路角度说明通用理解。"/>
      </node>
    </node>

    <node ID="engineering" TEXT="七、工程基础与模型基础" POSITION="left">
      <node ID="engineering_1" TEXT="FastAPI承担什么角色">
        <node ID="engineering_1_a" TEXT="提供请求接入、任务创建、状态查询、结果返回和异常处理；Pydantic做Schema校验。"/>
        <node ID="engineering_1_b" TEXT="长任务创建任务ID后异步执行并查询进度，避免同步请求长期阻塞。"/>
      </node>
      <node ID="engineering_2" TEXT="长任务如何取消、重试和恢复">
        <node ID="engineering_2_a" TEXT="任务状态持久化；取消使用标记或条件状态转换；临时错误才重试；重启后中断并按检查点恢复。"/>
        <node ID="engineering_2_b" TEXT="有副作用的操作必须幂等。"/>
      </node>
      <node ID="engineering_3" TEXT="日志与链路追踪">
        <node ID="engineering_3_a" TEXT="记录request/session/task、组织、模型/Prompt/工作流版本、节点、工具、检索元数据、耗时、Token、错误和状态。"/>
        <node ID="engineering_3_b" TEXT="关注延迟、失败率、工具成功率、空结果率、降级率、重试率、人工修改率和成本。"/>
        <node ID="engineering_3_c" TEXT="日志脱敏，不记录Token、源码和敏感业务数据。"/>
      </node>
      <node ID="engineering_4" TEXT="Docker解决什么问题">
        <node ID="engineering_4_a" TEXT="统一运行环境、依赖版本和启动方式，减少环境差异；但不等于高可用。"/>
      </node>
      <node ID="engineering_5" TEXT="MySQL与Redis如何分工">
        <node ID="engineering_5_a" TEXT="MySQL持久化任务、业务数据、结果和审计，强调事务一致性。"/>
        <node ID="engineering_5_b" TEXT="Redis适合缓存、短状态、锁和限流；缓存需考虑过期、失效、更新和租户隔离。"/>
      </node>
      <node ID="engineering_6" TEXT="Transformer、Embedding、Rerank">
        <node ID="engineering_6_a" TEXT="Transformer用Self-Attention建模序列关系；Embedding做语义召回；Rerank对候选精排。"/>
        <node ID="engineering_6_b" TEXT="Embedding相似度不等于最终答案正确性。"/>
      </node>
      <node ID="engineering_7" TEXT="PyTorch经验">
        <node ID="engineering_7_a" TEXT="红外动作识别课题使用ResNet-18提取空间特征、LSTM建模时间序列，完成训练和评估。"/>
        <node ID="engineering_7_b" TEXT="设计红外增强、Uniform Sampling和轻量Temporal Attention。"/>
        <node ID="engineering_7_c" TEXT="大规模分布式训练、强化学习训练框架不是当前简历可证明的经历。"/>
      </node>
      <node ID="engineering_8" TEXT="为什么ResNet-18 + LSTM">
        <node ID="engineering_8_a" TEXT="ResNet-18成熟轻量，提取单帧空间特征；LSTM建模帧序列时间依赖。"/>
        <node ID="engineering_8_b" TEXT="当前课题是非Transformer基线；其他方案需在相同协议和指标下实验比较。"/>
      </node>
      <node ID="engineering_9" TEXT="Accuracy、AUC、F1区别">
        <node ID="engineering_9_a" TEXT="Accuracy看整体正确率；AUC看跨阈值区分能力；F1平衡Precision和Recall。"/>
        <node ID="engineering_9_b" TEXT="不能直接比较不同配置下的指标大小，需固定数据、类别、阈值和实验设置。"/>
      </node>
    </node>

    <node ID="fullstack" TEXT="八、全栈与岗位要求" POSITION="left">
      <node ID="fullstack_1" TEXT="轻舟货运飞船前端项目">
        <node ID="fullstack_1_a" TEXT="Vue3实现遥测表格/趋势图、摄像机、灯光控制、报警、货架可视化和操作记录。"/>
        <node ID="fullstack_1_b" TEXT="周期刷新、事件去重、路由跳转、状态管理、ECharts和运行时配置。"/>
        <node ID="fullstack_1_c" TEXT="交互期间暂停刷新，避免回填数据覆盖用户控制操作。"/>
      </node>
      <node ID="fullstack_2" TEXT="为什么没有直接使用WebSocket">
        <node ID="fullstack_2_a" TEXT="当前简历确认的是周期刷新，不说已经使用WebSocket。"/>
        <node ID="fullstack_2_b" TEXT="更高实时性可评估WebSocket/SSE，但需处理连接、重连、顺序、重复和推送压力。"/>
      </node>
      <node ID="fullstack_3" TEXT="传统全栈经验">
        <node ID="fullstack_3_a" TEXT="参与健身助手，主导剧帮主从0到1，涉及PC、小程序、PHP/MySQL、预约、会员、支付和第三方电子签名。"/>
        <node ID="fullstack_3_b" TEXT="传统全栈经历帮助理解前后端接口、用户流程和业务交付。"/>
      </node>
      <node ID="fullstack_4" TEXT="Python、Java、C++掌握程度">
        <node ID="fullstack_4_a" TEXT="主力是Python、FastAPI、SQLAlchemy；C++有本科数据结构、算法和基础工程经验；Java不是当前主力。"/>
        <node ID="fullstack_4_b" TEXT="如实说明边界，不包装成Java/C++资深开发。"/>
      </node>
      <node ID="fullstack_5" TEXT="TensorFlow、PyTorch和框架经验">
        <node ID="fullstack_5_a" TEXT="深度学习主要是PyTorch相关训练流程；大模型应用主要使用LangChain和LangGraph。"/>
        <node ID="fullstack_5_b" TEXT="未实际使用的框架说了解或学习中，不说成生产经验。"/>
      </node>
      <node ID="fullstack_6" TEXT="AI应用从需求到上线">
        <node ID="fullstack_6_a" TEXT="明确用户、目标、输入输出、错误代价、数据权限和隐私边界。"/>
        <node ID="fullstack_6_b" TEXT="选择RAG/工具/Workflow/普通接口，做最小原型，建立评估集和验收标准。"/>
        <node ID="fullstack_6_c" TEXT="补充日志、异常、安全测试，小范围试用后持续迭代。"/>
      </node>
      <node ID="fullstack_7" TEXT="如何与产品、数据、算法协作">
        <node ID="fullstack_7_a" TEXT="产品：目标、流程、边界、验收；数据：字段、质量、更新、权限；算法：模型能力、评估和限制。"/>
        <node ID="fullstack_7_b" TEXT="把分歧拆成事实、约束、方案和验证方式，用实验或评估数据推动决策。"/>
      </node>
      <node ID="fullstack_8" TEXT="当前不足">
        <node ID="fullstack_8_a" TEXT="Java、复杂云原生、分布式高并发和大规模模型训练不是当前最强项。"/>
        <node ID="fullstack_8_b" TEXT="优势是已形成从数据和责任边界出发，设计工具、工作流、证据和降级的系统方法。"/>
      </node>
    </node>

    <node ID="behavior" TEXT="九、行为面试与风险边界" POSITION="left">
      <node ID="behavior_1" TEXT="为什么从传统开发转向AI应用/Agent">
        <node ID="behavior_1_a" TEXT="传统全栈 → OpenAI API应用 → 深度学习课题 → 企业Agent；兴趣从功能开发扩展到模型能力的业务落地。"/>
      </node>
      <node ID="behavior_2" TEXT="最大的技术优势">
        <node ID="behavior_2_a" TEXT="重视责任边界：工具算事实，RAG给依据，LLM做归纳，风险场景人工确认。"/>
      </node>
      <node ID="behavior_3" TEXT="复杂技术问题经历">
        <node ID="behavior_3_a" TEXT="分公司GitLab跨网络接入：Edge主动同步、Outbox、游标增量、批次幂等、实例隔离和Docker。"/>
      </node>
      <node ID="behavior_4" TEXT="给AI编码工具设定边界">
        <node ID="behavior_4_a" TEXT="通过任务、架构、决策、接口、测试上下文，以及人工确认、限定修改范围和人审验收控制AI。"/>
      </node>
      <node ID="behavior_5" TEXT="需求变化如何处理">
        <node ID="behavior_5_a" TEXT="判断目标/范围/实现变化，评估对数据、接口、工作流、测试和时间的影响，更新任务、决策、契约和测试计划。"/>
      </node>
      <node ID="behavior_6" TEXT="模型错误或证据不足怎么办">
        <node ID="behavior_6_a" TEXT="定位意图、参数、数据、检索、证据组装或生成环节；返回已确认事实和缺失信息，必要时人工确认并加入评估集。"/>
      </node>
      <node ID="behavior_7" TEXT="团队认为RAG/LangGraph过度设计怎么办">
        <node ID="behavior_7_a" TEXT="先判断业务是否需要；简单问答不用复杂框架，多步骤、证据、重试和人工确认场景再使用。"/>
        <node ID="behavior_7_b" TEXT="用样例、错误率、延迟和开发成本验证，而不是坚持技术偏好。"/>
      </node>
      <node ID="risk" TEXT="事实边界">
        <node ID="risk_1" TEXT="ASR不是本人项目，不说做过流式或非流式ASR。"/>
        <node ID="risk_2" TEXT="不把他人面经中的项目、技术和指标说成自己的经历。"/>
        <node ID="risk_3" TEXT="不把设计机制说成线上QPS、用户规模或准确率。"/>
        <node ID="risk_4" TEXT="不把参与说成独立完成，不把无法确认说成不符合。"/>
        <node ID="risk_5" TEXT="不把红外动作识别说成完整多模态系统，不把周期刷新说成WebSocket。"/>
      </node>
    </node>

    <node ID="review_plan" TEXT="十、复习与反问" POSITION="left">
      <node ID="review_plan_1" TEXT="Top 15必答">
        <node ID="review_plan_1_a" TEXT="自我介绍、求职动机、质量Agent架构、个人职责、结构化数据与RAG、ToolRegistry、LangGraph。"/>
        <node ID="review_plan_1_b" TEXT="成果评审9阶段、证据校验、状态机、取消/重试/恢复、论文Hybrid RAG、Harness、生产可用性、技术边界。"/>
      </node>
      <node ID="review_plan_2" TEXT="现场白板">
        <node ID="review_plan_2_a" TEXT="质量Agent：请求 → 意图 → 参数 → 工具/RAG → 汇总 → 生成 → 审计。"/>
        <node ID="review_plan_2_b" TEXT="成果评审：Checklist → 快照 → 事实 → 证据 → 裁决 → 人工确认。"/>
        <node ID="review_plan_2_c" TEXT="论文查证：PDF → GROBID → Hybrid RAG → Rerank → 证据判断。"/>
        <node ID="review_plan_2_d" TEXT="Harness：建模 → 任务确认 → AI编码测试 → 人审 → 归档。"/>
      </node>
      <node ID="review_plan_3" TEXT="统一答题模板">
        <node ID="review_plan_3_a" TEXT="背景与业务问题 → 目标和约束 → 总体架构 → 技术决策 → 本人职责 → 难点 → 结果/验证 → 限制与改进。"/>
      </node>
      <node ID="review_plan_4" TEXT="可向面试官反问的问题">
        <node ID="review_plan_4_a" TEXT="团队Agent产品服务哪些业务流程？模型输出如何进入人工或系统决策？"/>
        <node ID="review_plan_4_b" TEXT="团队如何做离线评测、线上观测和反馈闭环？最关注哪些指标？"/>
        <node ID="review_plan_4_c" TEXT="数据权限、敏感信息和外部工具调用如何设置边界和审计？"/>
        <node ID="review_plan_4_d" TEXT="入职3—6个月希望新人独立承担什么模块？"/>
      </node>
      <node ID="review_plan_5" TEXT="复习节奏">
        <node ID="review_plan_5_a" TEXT="第一遍：每个项目90秒讲清背景、架构、职责、难点和边界。"/>
        <node ID="review_plan_5_b" TEXT="第二遍：每个项目随机抽3个追问，先结论后细节。"/>
        <node ID="review_plan_5_c" TEXT="第三遍：脱稿画出三个Agent和Harness的数据流。"/>
        <node ID="review_plan_5_d" TEXT="第四遍：检查职责、指标、ASR、WebSocket和未验证能力边界。"/>
      </node>
    </node>
  </node>
</map>
