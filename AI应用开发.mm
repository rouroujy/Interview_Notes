<map version="1.0.1">
  <node ID="root" TEXT="AI应用开发｜面试复习总图">
    <node TEXT="一、个人定位与岗位匹配" ID="position" STYLE="bubble" POSITION="right">
      <node TEXT="身份：中科院大学人工智能硕士，预计2027年6月毕业；本科物联网工程" ID="position_identity" STYLE="fork"/>
      <node TEXT="经历主线：Vue/PHP全栈 → OpenAI API应用 → 计算机视觉研究 → 企业Agent工程" ID="position_path" STYLE="fork"/>
      <node TEXT="一句话定位：具备前后端工程基础，关注将LLM、RAG和工作流落地为可追溯、可控、可交付的企业Agent" ID="position_summary" STYLE="fork"/>
      <node TEXT="核心标签" ID="position_tags" STYLE="fork">
        <node TEXT="证据驱动：结论回溯到代码、文档或检索证据" ID="position_tag_evidence" STYLE="fork"/>
        <node TEXT="可靠性约束：确定性计算、检索依据、模型归纳分工；校验、降级、人工确认" ID="position_tag_reliability" STYLE="fork"/>
        <node TEXT="工程化交付：接口、数据库、任务状态、权限、异常恢复、日志与交互闭环" ID="position_tag_engineering" STYLE="fork"/>
      </node>
      <node TEXT="岗位关键词映射" ID="position_jd" STYLE="fork">
        <node TEXT="Python/Java/C++基础：重点准备Python，数据结构、算法、后端工程" ID="position_jd_lang" STYLE="fork"/>
        <node TEXT="深度学习：PyTorch、ResNet、LSTM、Attention；明确训练项目边界" ID="position_jd_dl" STYLE="fork"/>
        <node TEXT="大模型API：OpenAI API早期实践；当前LangChain/LangGraph、Tool Calling、RAG" ID="position_jd_llm" STYLE="fork"/>
        <node TEXT="Agent：质量管理Agent、成果评审Agent、AI Coding Harness" ID="position_jd_agent" STYLE="fork"/>
        <node TEXT="RAG：论文引用查证Hybrid RAG；质量体系文件RAG" ID="position_jd_rag" STYLE="fork"/>
        <node TEXT="全栈：Vue3、FastAPI、MySQL、Redis、Docker、第三方API集成" ID="position_jd_fullstack" STYLE="fork"/>
        <node TEXT="学习能力：从传统全栈转向AI应用，能快速理解业务并交付闭环" ID="position_jd_learning" STYLE="fork"/>
      </node>
      <node TEXT="90秒开场主线" ID="position_opening" STYLE="fork">
        <node TEXT="Agent/AI Coding岗：Harness → 成果评审Agent → 质量管理Agent" ID="position_opening_agent" STYLE="fork"/>
        <node TEXT="RAG/AI应用岗：论文引用查证 → 质量管理Agent → 成果评审Agent" ID="position_opening_rag" STYLE="fork"/>
        <node TEXT="AI全栈岗：Agent工程 → FastAPI/状态/幂等 → Vue3轻舟项目" ID="position_opening_fullstack" STYLE="fork"/>
        <node TEXT="模型研究岗：红外动作识别 → 理论基础 → Agent应用；主动说明微调/RL边界" ID="position_opening_research" STYLE="fork"/>
      </node>
    </node>

    <node TEXT="二、北京赛目科技｜企业Agent实习" ID="semo" STYLE="bubble" POSITION="right">
      <node TEXT="1. 质量管理体系Agent" ID="quality_agent" STYLE="fork">
        <node TEXT="项目定位：接入禅道BUG、GitLab Commit、飞书需求文档、质量体系文件，支持质量查询与分析" ID="quality_position" STYLE="fork"/>
        <node TEXT="业务痛点：数据分散；人工跨系统对照低效；LLM直接统计会产生错误和无依据结论" ID="quality_problem" STYLE="fork"/>
        <node TEXT="架构主线：用户问题 → 意图识别 → 参数标准化 → 受控工具调用/RAG → 指标整理 → LLM归纳 → 边界检查" ID="quality_flow" STYLE="fork">
          <node TEXT="状态：问题、标准化参数、已调用工具、结构化结果、检索依据、错误信息、最终回答" ID="quality_state" STYLE="fork"/>
          <node TEXT="节点职责单一，使用结构化状态传递；显式条件分支、重试、日志和业务复核" ID="quality_graph" STYLE="fork"/>
          <node TEXT="循环/失控防护：最大步数、允许迁移白名单、超时、重复调用检测、失败降级" ID="quality_loop" STYLE="fork"/>
        </node>
        <node TEXT="职责边界" ID="quality_boundary" STYLE="fork">
          <node TEXT="结构化事实：指标工具/SQL/指标引擎计算；BUG数量、等级、功能分布、激活等" ID="quality_fact" STYLE="fork"/>
          <node TEXT="规范知识：RAG提供质量体系条款、Checklist、来源和时间范围" ID="quality_policy" STYLE="fork"/>
          <node TEXT="自然语言变更：LLM做需求变更标注，原文保留、结果落库复用、允许复核" ID="quality_annotation" STYLE="fork"/>
          <node TEXT="LLM：意图理解、参数提取、跨来源归纳；不能补写缺失事实" ID="quality_llm" STYLE="fork"/>
        </node>
        <node TEXT="ToolRegistry" ID="quality_registry" STYLE="fork">
          <node TEXT="工具元数据：名称/用途、输入schema、返回schema、数据来源/时间范围、角色权限、超时重试、错误类型" ID="quality_registry_meta" STYLE="fork"/>
          <node TEXT="调用链：LLM选候选工具 → 系统检查存在性和权限 → Pydantic校验类型/范围 → 业务约束 → 固定范围执行" ID="quality_registry_call" STYLE="fork"/>
          <node TEXT="输出：结构化结果+来源信息；记录调用日志、耗时、成功/失败和错误原因" ID="quality_registry_output" STYLE="fork"/>
          <node TEXT="扩展指标：新增工具定义、schema、执行器、注册、权限与测试；不让Agent直连数据库" ID="quality_registry_extend" STYLE="fork"/>
          <node TEXT="防越权：服务端重做权限校验，租户/地区/项目范围隔离，禁止仅相信Prompt" ID="quality_registry_security" STYLE="fork"/>
        </node>
        <node TEXT="Edge主动同步：中心不能主动访问分公司内网GitLab" ID="quality_edge" STYLE="fork">
          <node TEXT="链路：分公司GitLab → Edge主动拉取 → SQLite Outbox持久化待发 → 游标增量 → 中心批次幂等接收 → 质量看板" ID="quality_edge_flow" STYLE="fork"/>
          <node TEXT="Outbox：先本地落库再发送；发送成功标记，失败保留并重试；容器重启依靠持久化卷避免丢失" ID="quality_edge_outbox" STYLE="fork"/>
          <node TEXT="游标：按稳定排序字段记录同步位置；批次大小和最大页数受控；异常后从游标继续" ID="quality_edge_cursor" STYLE="fork"/>
          <node TEXT="幂等：业务唯一键/批次标识+唯一约束/已处理记录；允许重复投递，不承诺恰好一次" ID="quality_edge_idempotent" STYLE="fork"/>
          <node TEXT="安全：多实例数据隔离、只同步必要字段、Docker化交付；当前事实不扩展为零丢失或高可用" ID="quality_edge_boundary" STYLE="fork"/>
        </node>
        <node TEXT="高频追问速答" ID="quality_questions" STYLE="fork">
          <node TEXT="问：为什么不用LLM直接算指标？答：统计需要确定性、可复算和可审计，交给工具/指标引擎，LLM只归纳" ID="quality_q1" STYLE="fork"/>
          <node TEXT="问：意图识别错怎么办？答：限定意图集合、结构化输出、参数校验、低置信度澄清或人工兜底" ID="quality_q2" STYLE="fork"/>
          <node TEXT="问：LangGraph相比普通Chain？答：节点、状态、迁移显式，适合分支、循环、重试、持久化和人工介入" ID="quality_q3" STYLE="fork"/>
          <node TEXT="问：RAG检索不到怎么办？答：返回证据不足，展示来源边界，不让LLM凭常识补结论" ID="quality_q4" STYLE="fork"/>
        </node>
      </node>

      <node TEXT="2. 功能开发成果评审Agent" ID="review_agent" STYLE="fork">
        <node TEXT="项目定位：面向GitLab仓库，按Checklist生成可追溯的合规性评审草稿，由人工确认归档" ID="review_position" STYLE="fork"/>
        <node TEXT="9节点流程：清单加载 → 仓库快照 → 目录清单/依赖解析 → 仓库事实提取 → 证据包组装 → 逐项裁决 → findings持久化与审计 → Markdown草稿" ID="review_flow" STYLE="fork"/>
        <node TEXT="三层职责" ID="review_layers" STYLE="fork">
          <node TEXT="LangGraph：受控分析步骤和结构化状态传递" ID="review_graph" STYLE="fork"/>
          <node TEXT="ToolRegistry：禁止Agent绕过工具直连GitLab/数据库，集中权限、输入、日志、异常边界" ID="review_registry" STYLE="fork"/>
          <node TEXT="任务服务层：后台线程、事务、状态迁移、持久化、报告文件和恢复策略" ID="review_service" STYLE="fork"/>
          <node TEXT="人工确认：模型输出与正式归档隔离，保留业务责任" ID="review_human" STYLE="fork"/>
        </node>
        <node TEXT="Evidence-Grounded裁决" ID="review_evidence" STYLE="fork">
          <node TEXT="每项结论绑定文件路径、行号、快照SHA；证据来自固定仓库快照" ID="review_evidence_bind" STYLE="fork"/>
          <node TEXT="校验引用是否存在、是否越过快照边界、是否足以支撑结论" ID="review_evidence_validate" STYLE="fork"/>
          <node TEXT="无证据/非法引用/证据不足：降级为无法确认或进入人工确认，不强行判断" ID="review_evidence_fallback" STYLE="fork"/>
        </node>
        <node TEXT="任务状态机" ID="review_state" STYLE="fork">
          <node TEXT="创建 → 执行 → 待人工确认 → 已归档；异常进入失败；取消可协作终止；重启遗留任务标记中断" ID="review_state_flow" STYLE="fork"/>
          <node TEXT="幂等创建：请求幂等键/业务唯一键，避免重复任务" ID="review_idempotent" STYLE="fork"/>
          <node TEXT="进度：阶段、当前Checklist项、已完成/失败数量、错误信息持久化" ID="review_progress" STYLE="fork"/>
          <node TEXT="取消/重试：协作式取消；只重试可恢复步骤；保留审计和错误原因" ID="review_retry" STYLE="fork"/>
          <node TEXT="当前实现口径：后台线程；不说已使用消息队列、WebSocket、K8s或高并发压测" ID="review_boundary" STYLE="fork"/>
        </node>
        <node TEXT="高频追问速答" ID="review_questions" STYLE="fork">
          <node TEXT="问：如何降低幻觉？答：事实来自快照，结论绑定证据，服务端校验索引，无证据即无法确认" ID="review_q1" STYLE="fork"/>
          <node TEXT="问：为什么要快照？答：保证分析期间文件版本稳定，路径/行号与结论可复现" ID="review_q2" STYLE="fork"/>
          <node TEXT="问：为什么需要人工确认？答：评审草稿和正式业务结论责任不同，人工做最终责任确认" ID="review_q3" STYLE="fork"/>
          <node TEXT="问：服务重启怎么办？答：状态持久化，启动扫描执行中任务并标记中断，再决定恢复或人工处理" ID="review_q4" STYLE="fork"/>
        </node>
      </node>

      <node TEXT="3. 最小AI Coding Harness / Context Engineering" ID="harness" STYLE="fork">
        <node TEXT="目标：让Claude Code/Codex在企业约束下理解上下文、遵守契约、完成测试并保留人工审批边界" ID="harness_goal" STYLE="fork"/>
        <node TEXT="工程上下文：dev_tasks任务单、decision_log稳定决策、api_contract接口契约、test_plan测试策略、任务状态" ID="harness_context" STYLE="fork"/>
        <node TEXT="闭环：业务建模 → 任务单人工确认 → AI编码与测试 → 人审验收 → 归档续接" ID="harness_flow" STYLE="fork"/>
        <node TEXT="价值：减少上下文丢失和任务漂移；让约束、变更、测试和责任可追溯" ID="harness_value" STYLE="fork"/>
        <node TEXT="AI边界：不自动决定业务目标、不绕过权限/测试/审批、不把生成代码等同于可上线代码" ID="harness_boundary" STYLE="fork"/>
        <node TEXT="评估方向：任务完成率、返工率、测试通过率、人工修改率、变更可追溯性" ID="harness_eval" STYLE="fork"/>
        <node TEXT="可扩展方案：任务与代码变更关联、自动采集测试结果、权限分级、不同仓库上下文初始化" ID="harness_future" STYLE="fork"/>
      </node>
    </node>

    <node TEXT="三、论文引用查证Agent｜RAG项目" ID="paper" STYLE="bubble" POSITION="right">
      <node TEXT="项目定位：论文PDF解析、证据检索、引用合理性判断、结构化结果输出" ID="paper_position" STYLE="fork"/>
      <node TEXT="数据链路：PDF → GROBID → TEI XML → 文本切分 → embedding → FAISS/关键词索引 → 证据上下文 → LLM判断" ID="paper_pipeline" STYLE="fork"/>
      <node TEXT="Hybrid RAG：BM25补充精确术语，FAISS补充语义召回，Rerank进行候选重排" ID="paper_hybrid" STYLE="fork">
        <node TEXT="BM25适合专有名词、公式、稀有词；向量检索适合语义相似表达" ID="paper_bm25" STYLE="fork"/>
        <node TEXT="元数据过滤：论文、章节、页码、引用位置等条件先缩小范围" ID="paper_metadata" STYLE="fork"/>
        <node TEXT="chunk权衡：过短上下文不足，过长噪声和成本增加；按论文结构和引用上下文切分" ID="paper_chunk" STYLE="fork"/>
      </node>
      <node TEXT="评测与反馈闭环" ID="paper_eval" STYLE="fork">
        <node TEXT="人工标注集：问题/引用、相关证据、合理性标签和边界样本" ID="paper_labels" STYLE="fork"/>
        <node TEXT="指标：Recall@k、证据覆盖率、判定准确率；用错误样本区分召回、排序、判断问题" ID="paper_metrics" STYLE="fork"/>
        <node TEXT="优化闭环：收集失败案例 → 定位检索/切分/Prompt问题 → 修改 → 回归评测" ID="paper_loop" STYLE="fork"/>
      </node>
      <node TEXT="工程化：FastAPI服务、受控工具、Redis缓存、Docker、日志与异常处理" ID="paper_engineering" STYLE="fork"/>
      <node TEXT="可信输出：证据不足返回无法确认；不编造线上规模、分数、缓存TTL或模型细节" ID="paper_boundary" STYLE="fork"/>
      <node TEXT="高频追问：RAG为何仍会错？答：召回不到、排序不佳、上下文噪声、模型误判；分别用评测定位" ID="paper_q1" STYLE="fork"/>
    </node>

    <node TEXT="四、LLM与Agent核心知识" ID="llm" STYLE="bubble" POSITION="left">
      <node TEXT="LLM基础" ID="llm_basic" STYLE="fork">
        <node TEXT="Transformer：Self-Attention建模序列关系；Q/K/V；多头注意力；位置编码；残差与LayerNorm" ID="llm_transformer" STYLE="fork"/>
        <node TEXT="训练目标：预训练学习语言分布；推理阶段根据上下文生成token" ID="llm_train" STYLE="fork"/>
        <node TEXT="推理参数：temperature影响随机性；top-p限制候选累计概率；参数需结合任务评测" ID="llm_params" STYLE="fork"/>
        <node TEXT="上下文窗口：输入历史、工具结果和检索内容共同占用；需控制长度、摘要和分层记忆" ID="llm_context" STYLE="fork"/>
      </node>
      <node TEXT="Agent范式" ID="agent_patterns" STYLE="fork">
        <node TEXT="Workflow：固定流程、确定性强、易测试；适合质量与评审项目" ID="agent_workflow" STYLE="fork"/>
        <node TEXT="ReAct：思考/行动/观察循环，灵活但需步数、工具和权限约束" ID="agent_react" STYLE="fork"/>
        <node TEXT="Plan&amp;Execute：先规划再执行，适合复杂任务；规划错误和计划过时需处理" ID="agent_plan" STYLE="fork"/>
        <node TEXT="Tool Calling：模型提出结构化调用，服务端校验并执行；不能把模型输出当权限凭证" ID="agent_tool" STYLE="fork"/>
        <node TEXT="Human-in-the-loop：高风险、证据不足或不可逆操作进入人工确认" ID="agent_hitl" STYLE="fork"/>
      </node>
      <node TEXT="Agent可靠性" ID="agent_reliability" STYLE="fork">
        <node TEXT="状态：显式保存任务输入、阶段、工具结果、证据、错误、重试次数和最终产物" ID="agent_state" STYLE="fork"/>
        <node TEXT="幂等：请求/任务/工具副作用使用唯一键；重试不产生重复业务结果" ID="agent_idempotency" STYLE="fork"/>
        <node TEXT="取消与恢复：协作式取消、超时、有界重试；重启后扫描遗留任务并标记中断" ID="agent_cancel" STYLE="fork"/>
        <node TEXT="降级：模型不可用、工具超时、数据缺失、证据不足时返回可解释的有限结果" ID="agent_fallback" STYLE="fork"/>
        <node TEXT="可观测性：结构化日志、trace/request/task ID、节点耗时、工具调用、检索命中、错误和人工操作" ID="agent_observe" STYLE="fork"/>
      </node>
      <node TEXT="记忆与上下文" ID="agent_memory" STYLE="fork">
        <node TEXT="短期记忆：当前会话/任务状态，保证流程连续" ID="memory_short" STYLE="fork"/>
        <node TEXT="长期记忆：用户偏好、历史事实或知识库；需权限、来源、版本、过期和删除策略" ID="memory_long" STYLE="fork"/>
        <node TEXT="不要把所有历史塞入Prompt；按任务检索、摘要、压缩和保留关键状态" ID="memory_strategy" STYLE="fork"/>
      </node>
    </node>

    <node TEXT="五、RAG、Prompt与安全边界" ID="rag_security" STYLE="bubble" POSITION="left">
      <node TEXT="RAG标准链路：数据接入 → 清洗解析 → 切分 → embedding → 索引 → 查询改写/过滤 → 召回 → 重排 → 上下文组装 → 生成 → 引用校验" ID="rag_pipeline" STYLE="fork"/>
      <node TEXT="检索优化" ID="rag_opt" STYLE="fork">
        <node TEXT="召回不足：调整chunk、query改写、BM25+向量、扩大top-k、补充元数据" ID="rag_recall" STYLE="fork"/>
        <node TEXT="排序不佳：Rerank、来源权重、时间/版本过滤、去重" ID="rag_rank" STYLE="fork"/>
        <node TEXT="上下文污染：保留最相关片段，限制长度，区分来源和可信等级" ID="rag_noise" STYLE="fork"/>
        <node TEXT="知识更新：版本、时间范围、增量索引、删除与失效；回答展示来源" ID="rag_update" STYLE="fork"/>
      </node>
      <node TEXT="Prompt Engineering" ID="prompt" STYLE="fork">
        <node TEXT="明确角色、任务、输入格式、输出schema、约束、边界和失败处理" ID="prompt_structure" STYLE="fork"/>
        <node TEXT="结构化输出：Pydantic/JSON schema校验，解析失败重试或降级" ID="prompt_json" STYLE="fork"/>
        <node TEXT="Evidence grounding：只基于给定事实和证据回答；缺失时说无法确认" ID="prompt_grounding" STYLE="fork"/>
        <node TEXT="Prompt注入防护：检索内容视为不可信数据；工具白名单、权限校验、敏感信息过滤、输出检查" ID="prompt_injection" STYLE="fork"/>
      </node>
      <node TEXT="安全与责任" ID="security" STYLE="fork">
        <node TEXT="最小权限：只读Token、工具级权限、租户/项目/地区隔离、服务端二次校验" ID="security_least" STYLE="fork"/>
        <node TEXT="源码与敏感数据：只取必要内容，不落库；文件大小、并发、超时和调用次数受限" ID="security_data" STYLE="fork"/>
        <node TEXT="高风险动作：删除、发布、归档等不可逆操作需人工确认和审计" ID="security_human" STYLE="fork"/>
        <node TEXT="安全口径：不把方案设想说成已落地，不把测试结果说成生产指标" ID="security_truth" STYLE="fork"/>
      </node>
    </node>

    <node TEXT="六、后端工程化与系统设计" ID="backend" STYLE="bubble" POSITION="left">
      <node TEXT="技术栈：Python、FastAPI、Pydantic、SQLAlchemy、Alembic、MySQL、Redis、Docker、异步编程" ID="backend_stack" STYLE="fork"/>
      <node TEXT="FastAPI/API设计" ID="backend_api" STYLE="fork">
        <node TEXT="分层：路由/Schema → Service业务编排 → Repository数据访问 → 外部API/工具适配" ID="backend_layers" STYLE="fork"/>
        <node TEXT="Pydantic：请求参数、返回结构、枚举、范围和跨字段校验；错误统一返回" ID="backend_schema" STYLE="fork"/>
        <node TEXT="接口设计：资源命名、状态码、分页、过滤、幂等键、超时与错误信息" ID="backend_rest" STYLE="fork"/>
        <node TEXT="数据库迁移：Alembic管理schema变更；事务边界清晰，避免部分写入" ID="backend_db" STYLE="fork"/>
      </node>
      <node TEXT="长任务" ID="backend_long" STYLE="fork">
        <node TEXT="创建接口快速返回task_id；后台线程执行；查询接口返回状态/阶段/进度/错误/结果" ID="backend_task_flow" STYLE="fork"/>
        <node TEXT="状态持久化：queued/running/waiting_confirmation/succeeded/failed/cancelled/interrupted" ID="backend_task_states" STYLE="fork"/>
        <node TEXT="可靠性：幂等创建、事务、超时、有界并发、重试分类、协作式取消、审计" ID="backend_task_reliable" STYLE="fork"/>
        <node TEXT="轮询 vs WebSocket：周期刷新实现简单、适合当前项目；强实时和双向推送再考虑WebSocket" ID="backend_push" STYLE="fork"/>
        <node TEXT="当前事实：评审项目使用后台线程；消息队列/分布式Worker属于扩展方案" ID="backend_boundary" STYLE="fork"/>
      </node>
      <node TEXT="缓存与并发" ID="backend_cache" STYLE="fork">
        <node TEXT="Redis适合可重建的解析/检索中间结果；缓存需考虑key隔离、TTL、失效和一致性" ID="backend_redis" STYLE="fork"/>
        <node TEXT="有界并发：限制文件大小、任务数、工具超时和重试次数；避免外部API和数据库被打满" ID="backend_concurrency" STYLE="fork"/>
        <node TEXT="异步：I/O密集场景提升并发；阻塞库需线程池/隔离，不能把async写成伪异步" ID="backend_async" STYLE="fork"/>
      </node>
      <node TEXT="数据可靠性" ID="backend_reliable" STYLE="fork">
        <node TEXT="至少一次投递 + 幂等消费通常比追求恰好一次更现实" ID="backend_delivery" STYLE="fork"/>
        <node TEXT="失败可恢复：错误分类、重试退避、死信/人工介入思路、审计记录" ID="backend_failure" STYLE="fork"/>
        <node TEXT="日志：结构化记录请求、任务、节点、工具、耗时、结果摘要和异常；避免记录密钥/敏感源码" ID="backend_logs" STYLE="fork"/>
      </node>
    </node>

    <node TEXT="七、传统全栈与计算机视觉" ID="fullstack_cv" STYLE="bubble" POSITION="right">
      <node TEXT="Vue3轻舟货运飞船前端" ID="vue_project" STYLE="fork">
        <node TEXT="地面站：遥测表格/趋势图、摄像机预览、灯光控制、报警、货架可视化、操作记录" ID="vue_modules" STYLE="fork"/>
        <node TEXT="技术：Vue3、Vue Router、Vuex、Axios、ECharts、Ant Design Vue" ID="vue_stack" STYLE="fork"/>
        <node TEXT="周期刷新：遥测、报警、货物状态、语音事件；事件去重、路由跳转、状态管理保证一致" ID="vue_refresh" STYLE="fork"/>
        <node TEXT="核心问题：实时回填可能覆盖用户操作；交互期间暂停刷新，结束后恢复并重新拉取状态" ID="vue_conflict" STYLE="fork"/>
        <node TEXT="运行时配置：解耦后端地址，同一构建产物适配不同部署环境" ID="vue_config" STYLE="fork"/>
        <node TEXT="事实边界：轻舟是Vue3；不要说成React或WebSocket项目" ID="vue_boundary" STYLE="fork"/>
      </node>
      <node TEXT="传统全栈经历" ID="legacy_fullstack" STYLE="fork">
        <node TEXT="2021-03至2022-12：Vue/PHP/MySQL；参与健身助手，主导剧帮主从0到1，覆盖PC、小程序、后端" ID="legacy_product" STYLE="fork"/>
        <node TEXT="业务：预约、会员、公众号推送、支付、第三方电子签名；强调多端协同和接口集成" ID="legacy_business" STYLE="fork"/>
        <node TEXT="2023-01至2023-04：AI流量盒子；基于OpenAI API封装文本生成和多平台发布，参与Prompt、参数与异常处理" ID="legacy_openai" STYLE="fork"/>
        <node TEXT="表达边界：早期主要是API集成和Prompt实践，不包装成模型训练或复杂Agent经验" ID="legacy_boundary" STYLE="fork"/>
      </node>
      <node TEXT="红外动作识别课题" ID="cv_project" STYLE="fork">
        <node TEXT="目标：封闭、复杂光照卫星货舱中的红外动作触发识别，为后续多模态感知提供稳定触发信号" ID="cv_goal" STYLE="fork"/>
        <node TEXT="基线：NTU RGB-D，ResNet-18提取空间特征 + LSTM建模时序，非Transformer方案" ID="cv_baseline" STYLE="fork"/>
        <node TEXT="改进：两层红外增强、Uniform Sampling、轻量Temporal Attention" ID="cv_modules" STYLE="fork"/>
        <node TEXT="评估：官方Cross-Subject协议；均匀采样Accuracy 96.55%、AUC 0.9934；综合配置F1 0.9424" ID="cv_metrics" STYLE="fork"/>
        <node TEXT="指标边界：不同配置/指标不能直接比较；不编超参数、硬件、训练轮数和类别表现" ID="cv_boundary" STYLE="fork"/>
        <node TEXT="论文：《融合时序采样与轻量时间注意力的红外动作触发识别方法》，第一作者，已录用《计算机应用研究》" ID="cv_paper" STYLE="fork"/>
      </node>
    </node>

    <node TEXT="八、算法与计算机基础" ID="algorithms" STYLE="bubble" POSITION="left">
      <node TEXT="数组/哈希：两数之和" ID="algo_hash" STYLE="fork">
        <node TEXT="先查target-current，再存current；避免同一元素重复使用" ID="algo_hash_method" STYLE="fork"/>
        <node TEXT="时间O(n)，空间O(n)；说明哈希冲突由容器处理" ID="algo_hash_complexity" STYLE="fork"/>
      </node>
      <node TEXT="滑动窗口：最长无重复子串" ID="algo_window" STYLE="fork">
        <node TEXT="右指针扩展，重复时左指针移动并维护窗口状态；窗口始终满足无重复" ID="algo_window_method" STYLE="fork"/>
        <node TEXT="左右指针单向移动，时间O(n)，空间O字符集大小" ID="algo_window_complexity" STYLE="fork"/>
      </node>
      <node TEXT="二分查找：有序数组边界" ID="algo_binary" STYLE="fork">
        <node TEXT="先定义查找语义（第一个≥target/最后一个≤target），再确定闭区间或半开区间" ID="algo_binary_method" STYLE="fork"/>
        <node TEXT="利用单调性收缩区间；时间O(log n)，空间O(1)" ID="algo_binary_complexity" STYLE="fork"/>
      </node>
      <node TEXT="基础题型：链表、栈/队列、树遍历、排序、动态规划、BFS/DFS" ID="algo_types" STYLE="fork"/>
      <node TEXT="白板表达四步：问清题意 → 讲方案和不变量 → 写最小正确代码 → 说明复杂度、边界和可优化点" ID="algo_expression" STYLE="fork"/>
      <node TEXT="计算机基础" ID="cs" STYLE="fork">
        <node TEXT="进程/线程/协程：隔离、调度和I/O等待；长任务执行需避免阻塞请求线程" ID="cs_process" STYLE="fork"/>
        <node TEXT="HTTP/API：方法、状态码、超时、重试、鉴权、幂等；外部API失败要可解释" ID="cs_http" STYLE="fork"/>
        <node TEXT="数据库：索引服务查询，事务保证一致性；关注慢查询、连接、分页和并发写入" ID="cs_db" STYLE="fork"/>
        <node TEXT="Git：分支、提交、冲突、回滚；AI生成代码必须经过测试和人工审查" ID="cs_git" STYLE="fork"/>
      </node>
    </node>

    <node TEXT="九、行为面试与表达" ID="behavior" STYLE="bubble" POSITION="right">
      <node TEXT="为什么转AI/Agent：OpenAI API实践让我看到价值也暴露认知深度不足；考研补基础，实习将AI落到企业工程" ID="behavior_why_ai" STYLE="fork"/>
      <node TEXT="最大优势：全栈交付视角 + AI应用实践 + 证据/权限/状态/异常等可靠性意识" ID="behavior_strength" STYLE="fork"/>
      <node TEXT="短板：复杂线上规模和模型训练经验仍需积累；用学习计划、项目验证和复盘持续补齐" ID="behavior_weakness" STYLE="fork"/>
      <node TEXT="需求变化：先确认目标和验收标准，拆分影响范围，锁定接口/状态/边界，先保证主链路再迭代" ID="behavior_change" STYLE="fork"/>
      <node TEXT="技术分歧：先统一问题和指标，做小实验/查文档/看数据，再记录决策与取舍，不争论个人偏好" ID="behavior_disagree" STYLE="fork"/>
      <node TEXT="延期/受阻：识别关键路径，提前暴露风险，拆分可交付物，给出替代方案并同步进展" ID="behavior_delay" STYLE="fork"/>
      <node TEXT="异常/失败：先止损和降级，再定位日志/输入/外部依赖，补测试和监控，复盘避免重复发生" ID="behavior_failure" STYLE="fork"/>
      <node TEXT="为什么适合岗位：岗位需要Python、Agent/RAG、深度学习和全栈协作；自己有对应项目证据且能快速学习" ID="behavior_fit" STYLE="fork"/>
      <node TEXT="未来规划：短期成为能独立交付AI应用的工程师；中期深入评测、可靠性、Agent平台和业务理解" ID="behavior_plan" STYLE="fork"/>
      <node TEXT="STAR口述：背景/任务 → 具体行动 → 可观察结果 → 复盘与边界；区分我负责、我参与、团队完成" ID="behavior_star" STYLE="fork"/>
    </node>

    <node TEXT="十、面试执行与事实边界" ID="execution" STYLE="bubble" POSITION="left">
      <node TEXT="四个项目一句话" ID="execution_projects" STYLE="fork">
        <node TEXT="质量Agent：指标工具算事实，RAG给规范依据，LLM归纳；Edge用Outbox、游标、批次幂等接入内网数据" ID="execution_p1" STYLE="fork"/>
        <node TEXT="成果评审：9节点串起Checklist、快照、事实、路径/行号/SHA证据和裁决；无证据降级人工确认" ID="execution_p2" STYLE="fork"/>
        <node TEXT="AI Coding Harness：任务、决策、契约、测试沉淀为上下文，AI编码后人审验收，不自动越权" ID="execution_p3" STYLE="fork"/>
        <node TEXT="论文查证：GROBID + BM25/FAISS/Rerank + 人工标注评测；证据不足返回无法确认" ID="execution_p4" STYLE="fork"/>
      </node>
      <node TEXT="必答六题" ID="execution_must" STYLE="fork">
        <node TEXT="LLM为什么不能直接算指标：确定性事实交给工具，LLM负责解释和归纳" ID="execution_m1" STYLE="fork"/>
        <node TEXT="如何降低幻觉：证据绑定、服务端校验、无证据降级、人工确认" ID="execution_m2" STYLE="fork"/>
        <node TEXT="Edge如何可靠：Outbox持久化、游标增量、批次幂等；准确说至少一次，不说恰好一次" ID="execution_m3" STYLE="fork"/>
        <node TEXT="长任务如何可靠：幂等创建、状态持久化、超时/有界并发、协作取消、重启中断、审计" ID="execution_m4" STYLE="fork"/>
        <node TEXT="Hybrid RAG为何有用：BM25补术语、向量补语义、Rerank提排序，用评测集定位问题" ID="execution_m5" STYLE="fork"/>
        <node TEXT="轮询/WebSocket怎么选：看实时性、双向性和复杂度；当前轻舟是周期刷新" ID="execution_m6" STYLE="fork"/>
      </node>
      <node TEXT="高风险事实边界" ID="execution_boundary" STYLE="fork">
        <node TEXT="当前实习时间：2026年4月至今；预计毕业：2027年6月" ID="execution_dates" STYLE="fork"/>
        <node TEXT="个人/团队：按简历动词表达，不说独立完成全部系统；没有确认的线上指标不补" ID="execution_ownership" STYLE="fork"/>
        <node TEXT="当前没有确认：消息队列、分布式Worker、WebSocket、K8s、高并发压测、零丢失、线上规模" ID="execution_unconfirmed" STYLE="fork"/>
        <node TEXT="论文RAG：确认有人工标注集和评测指标，但不编具体评测分数、Redis key或TTL" ID="execution_rag_boundary" STYLE="fork"/>
        <node TEXT="红外实验：96.55% Accuracy/0.9934 AUC是均匀采样配置；0.9424 F1是综合配置，不能混比" ID="execution_cv_boundary" STYLE="fork"/>
        <node TEXT="答不出兜底：具体实现参数不能确认，不想猜；先说核心问题、已确认事实、验证路径和当前边界" ID="execution_fallback" STYLE="fork"/>
      </node>
      <node TEXT="反问问题（选2-3个）" ID="execution_questions" STYLE="fork">
        <node TEXT="团队Agent/AI产品服务哪些业务流程？模型输出如何进入人工或系统决策？" ID="execution_ask_business" STYLE="fork"/>
        <node TEXT="团队如何做离线评测、线上观测和反馈闭环？最关注哪些指标？" ID="execution_ask_eval" STYLE="fork"/>
        <node TEXT="数据权限、敏感信息和外部工具调用通常如何设置边界和审计？" ID="execution_ask_security" STYLE="fork"/>
        <node TEXT="入职3-6个月最希望新人独立承担什么模块或交付？" ID="execution_ask_growth" STYLE="fork"/>
      </node>
      <node TEXT="30分钟复习法" ID="execution_30m" STYLE="fork">
        <node TEXT="0-5分钟：选岗位主线，不同时背四条线" ID="execution_30_1" STYLE="fork"/>
        <node TEXT="5-12分钟：口述四个项目的一句话" ID="execution_30_2" STYLE="fork"/>
        <node TEXT="12-18分钟：抽答六个必答题" ID="execution_30_3" STYLE="fork"/>
        <node TEXT="18-23分钟：算法和三道工程白板：评审、同步、长任务" ID="execution_30_4" STYLE="fork"/>
        <node TEXT="23-27分钟：扫事实边界；27-30分钟：准备反问和兜底话术" ID="execution_30_5" STYLE="fork"/>
      </node>
      <node TEXT="复习验收：能90秒开场、3分钟讲一个项目、2分钟画架构、脱稿回答追问，并明确事实边界" ID="execution_acceptance" STYLE="fork"/>
    </node>
  </node>
</map>
