$baseDir = "C:\Medallion_Fabric\documentacion_IQ"
$baseIQ   = "https://learn.microsoft.com/en-us/fabric/iq"
$baseGraph = "https://learn.microsoft.com/en-us/fabric/graph"
$baseDS    = "https://learn.microsoft.com/en-us/fabric/data-science"
$baseRTI   = "https://learn.microsoft.com/en-us/fabric/real-time-intelligence"
$baseDW    = "https://learn.microsoft.com/en-us/fabric/data-warehouse"
$baseRest  = "https://learn.microsoft.com/en-us/rest/api/fabric"

$pages = @(

    # ===== 01 - What is Fabric IQ =====
    @{ u="$baseIQ/overview";  p="01_What_is_Fabric_IQ.md" },

    # ===== 02 - Ontology / Overview =====
    @{ u="$baseIQ/ontology/overview";                p="02_Ontology\01_Overview\01_what_is_ontology.md" },
    @{ u="$baseIQ/ontology/overview-tenant-settings"; p="02_Ontology\01_Overview\02_required_tenant_settings.md" },

    # ===== 02 - Ontology / Tutorial =====
    @{ u="$baseIQ/ontology/tutorial-0-introduction";        p="02_Ontology\02_Tutorial\00_introduction.md" },
    @{ u="$baseIQ/ontology/tutorial-1-create-ontology";     p="02_Ontology\02_Tutorial\01_create_ontology.md" },
    @{ u="$baseIQ/ontology/tutorial-2-enrich-ontology";     p="02_Ontology\02_Tutorial\02_enrich_ontology.md" },
    @{ u="$baseIQ/ontology/tutorial-3-preview-ontology";    p="02_Ontology\02_Tutorial\03_preview_ontology.md" },
    @{ u="$baseIQ/ontology/tutorial-4-create-data-agent";   p="02_Ontology\02_Tutorial\04_create_data_agent.md" },
    @{ u="$baseIQ/ontology/tutorial-5-conclusion";          p="02_Ontology\02_Tutorial\05_conclusion.md" },

    # ===== 02 - Ontology / Concepts =====
    @{ u="$baseIQ/ontology/concepts-generate"; p="02_Ontology\03_Concepts\01_generating_from_semantic_model.md" },

    # ===== 02 - Ontology / How-tos =====
    @{ u="$baseIQ/ontology/how-to-create-entity-types";      p="02_Ontology\04_How-tos\01_create_entity_types.md" },
    @{ u="$baseIQ/ontology/how-to-bind-data";                p="02_Ontology\04_How-tos\02_bind_data.md" },
    @{ u="$baseIQ/ontology/how-to-create-relationship-types"; p="02_Ontology\04_How-tos\03_add_relationship_types.md" },
    @{ u="$baseIQ/ontology/how-to-use-preview-experience";   p="02_Ontology\04_How-tos\04_use_preview_experience.md" },
    @{ u="$baseIQ/ontology/how-to-use-rules";                p="02_Ontology\04_How-tos\05_add_rules.md" },
    @{ u="$baseIQ/ontology/how-to-use-resource-links";       p="02_Ontology\04_How-tos\06_use_resource_links.md" },

    # ===== 02 - Ontology / Resources =====
    @{ u="$baseIQ/ontology/resources-troubleshooting";                  p="02_Ontology\05_Resources\01_troubleshooting.md" },
    @{ u="$baseIQ/ontology/resources-capacity-usage";                   p="02_Ontology\05_Resources\02_billing_capacity.md" },
    @{ u="$baseIQ/ontology/resources-glossary";                         p="02_Ontology\05_Resources\03_glossary.md" },
    @{ u="$baseIQ/ontology/resources-frequently-asked-questions";       p="02_Ontology\05_Resources\04_faq.md" },
    @{ u="$baseRest/ontology/items";                                     p="02_Ontology\05_Resources\05_ontology_rest_api.md" },

    # ===== 03 - Plan / Overview =====
    @{ u="$baseIQ/plan/overview";            p="03_Plan\01_Overview\01_what_is_plan.md" },
    @{ u="$baseIQ/plan/overview-regions";    p="03_Plan\01_Overview\02_region_availability.md" },
    @{ u="$baseIQ/plan/overview-limitations"; p="03_Plan\01_Overview\03_known_limitations.md" },

    # ===== 03 - Plan / Planning sheets =====
    @{ u="$baseIQ/plan/planning-overview";    p="03_Plan\02_Planning_sheets\00_overview.md" },
    @{ u="$baseIQ/plan/planning-concept-cube"; p="03_Plan\02_Planning_sheets\01_Concepts\01_cubes.md" },
    @{ u="$baseIQ/plan/planning-how-to-create-database-connection";         p="03_Plan\02_Planning_sheets\02_How-tos\01_create_database_connection.md" },
    @{ u="$baseIQ/plan/planning-how-to-create-semantic-model-connection";   p="03_Plan\02_Planning_sheets\02_How-tos\02_create_semantic_model_connection.md" },
    @{ u="$baseIQ/plan/planning-how-to-get-started";                        p="03_Plan\02_Planning_sheets\02_How-tos\03_create_planning_sheet.md" },
    @{ u="$baseIQ/plan/planning-how-to-input-data";                         p="03_Plan\02_Planning_sheets\02_How-tos\04_input_data.md" },
    @{ u="$baseIQ/plan/planning-how-to-set-up-scenarios";                   p="03_Plan\02_Planning_sheets\02_How-tos\05_set_up_scenarios.md" },
    @{ u="$baseIQ/plan/planning-how-to-write-back-data";                    p="03_Plan\02_Planning_sheets\02_How-tos\06_write_back_data.md" },
    @{ u="$baseIQ/plan/planning-how-to-change-layouts";                     p="03_Plan\02_Planning_sheets\02_How-tos\07_change_layouts.md" },
    @{ u="$baseIQ/plan/planning-how-to-create-cube";                        p="03_Plan\02_Planning_sheets\02_How-tos\08_create_cube.md" },
    @{ u="$baseIQ/plan/planning-how-to-add-comments";                       p="03_Plan\02_Planning_sheets\02_How-tos\09_add_comments.md" },
    @{ u="$baseIQ/plan/planning-how-to-add-notes";                          p="03_Plan\02_Planning_sheets\02_How-tos\10_add_notes.md" },
    @{ u="$baseIQ/plan/planning-how-to-add-bookmark";                       p="03_Plan\02_Planning_sheets\02_How-tos\11_add_bookmarks.md" },
    @{ u="$baseIQ/plan/planning-forecasting/planning-how-to-build-forecasts";                    p="03_Plan\02_Planning_sheets\02_How-tos\Forecasting\01_configure_forecasts.md" },
    @{ u="$baseIQ/plan/planning-forecasting/planning-how-to-manage-rolling-forecasts";           p="03_Plan\02_Planning_sheets\02_How-tos\Forecasting\02_manage_rolling_forecasts.md" },
    @{ u="$baseIQ/plan/planning-forecasting/planning-how-to-create-statistical-forecasts";       p="03_Plan\02_Planning_sheets\02_How-tos\Forecasting\03_create_statistical_forecasts.md" },
    @{ u="$baseIQ/plan/planning-forecasting/planning-how-to-create-multidimensional-forecasts";  p="03_Plan\02_Planning_sheets\02_How-tos\Forecasting\04_create_multidimensional_forecasts.md" },
    @{ u="$baseIQ/plan/planning-forecasting/planning-how-to-extend-time";                        p="03_Plan\02_Planning_sheets\02_How-tos\Forecasting\05_extend_planning_time_range.md" },
    @{ u="$baseIQ/plan/planning-forecasting/planning-how-to-configure-forecast-settings";        p="03_Plan\02_Planning_sheets\02_How-tos\Forecasting\06_edit_forecast_settings.md" },
    @{ u="$baseIQ/plan/planning-how-to-optimize-input-values";              p="03_Plan\02_Planning_sheets\02_How-tos\12_optimize_input_values.md" },

    # ===== 03 - Plan / PowerTable sheets =====
    @{ u="$baseIQ/plan/powertable-overview";                           p="03_Plan\03_PowerTable_sheets\00_overview.md" },
    @{ u="$baseIQ/plan/powertable-how-to-create-table-app";            p="03_Plan\03_PowerTable_sheets\01_How-tos\01_create_table_app.md" },
    @{ u="$baseIQ/plan/powertable-how-to-enter-table-data-manually";   p="03_Plan\03_PowerTable_sheets\01_How-tos\02_enter_table_data_manually.md" },
    @{ u="$baseIQ/plan/powertable-how-to-connect-existing-database";   p="03_Plan\03_PowerTable_sheets\01_How-tos\03_connect_database.md" },
    @{ u="$baseIQ/plan/powertable-how-to-connect-semantic-model";      p="03_Plan\03_PowerTable_sheets\01_How-tos\04_connect_semantic_model.md" },
    @{ u="$baseIQ/plan/powertable-how-to-set-up-access-control";       p="03_Plan\03_PowerTable_sheets\01_How-tos\05_set_up_access_control.md" },
    @{ u="$baseIQ/plan/powertable-how-to-generate-forms";              p="03_Plan\03_PowerTable_sheets\01_How-tos\06_generate_forms.md" },
    @{ u="$baseIQ/plan/powertable-how-to-configure-approval-workflow"; p="03_Plan\03_PowerTable_sheets\01_How-tos\07_configure_approval_workflow.md" },
    @{ u="$baseIQ/plan/powertable-how-to-review-approval-workflow";    p="03_Plan\03_PowerTable_sheets\01_How-tos\08_review_approval_workflow.md" },

    # ===== 03 - Plan / Intelligence sheets =====
    @{ u="$baseIQ/plan/intelligence-overview";                             p="03_Plan\04_Intelligence_sheets\00_overview.md" },
    @{ u="$baseIQ/plan/intelligence-how-to-get-started";                   p="03_Plan\04_Intelligence_sheets\01_How-tos\01_get_started.md" },
    @{ u="$baseIQ/plan/intelligence-how-to-build-financial-reports";       p="03_Plan\04_Intelligence_sheets\01_How-tos\02_build_financial_reports.md" },
    @{ u="$baseIQ/plan/intelligence-how-to-comment-collaborate";           p="03_Plan\04_Intelligence_sheets\01_How-tos\03_comment_collaborate.md" },
    @{ u="$baseIQ/plan/intelligence-how-to-create-paginated-reports";      p="03_Plan\04_Intelligence_sheets\01_How-tos\04_create_paginated_reports.md" },
    @{ u="$baseIQ/plan/intelligence-how-to-export-data-visuals";           p="03_Plan\04_Intelligence_sheets\01_How-tos\05_export_data_visuals.md" },
    @{ u="$baseIQ/plan/intelligence-how-to-visualize-planning-data";       p="03_Plan\04_Intelligence_sheets\01_How-tos\06_visualize_planning_data.md" },
    @{ u="$baseIQ/plan/intelligence-how-to-create-gantt-chart";            p="03_Plan\04_Intelligence_sheets\01_How-tos\07_gantt_charts.md" },

    # ===== 03 - Plan / InfoBridge =====
    @{ u="$baseIQ/plan/infobridge-overview";                  p="03_Plan\05_InfoBridge\00_overview.md" },
    @{ u="$baseIQ/plan/infobridge-how-to-share-measures";     p="03_Plan\05_InfoBridge\01_How-tos\01_share_measures.md" },
    @{ u="$baseIQ/plan/infobridge-how-to-write-back-data";    p="03_Plan\05_InfoBridge\01_How-tos\02_write_back_data.md" },

    # ===== 04 - Graph / Getting started =====
    @{ u="$baseGraph/overview";         p="04_Graph\01_Getting_started\01_overview.md" },
    @{ u="$baseGraph/quickstart";       p="04_Graph\01_Getting_started\02_quickstart.md" },
    @{ u="$baseGraph/sample-datasets";  p="04_Graph\01_Getting_started\03_sample_datasets.md" },

    # ===== 04 - Graph / Tutorial =====
    @{ u="$baseGraph/tutorial-introduction";                      p="04_Graph\02_Tutorial\00_introduction.md" },
    @{ u="$baseGraph/tutorial-load-data";                         p="04_Graph\02_Tutorial\01_load_data.md" },
    @{ u="$baseGraph/tutorial-create-graph";                      p="04_Graph\02_Tutorial\02_create_graph.md" },
    @{ u="$baseGraph/tutorial-model-nodes";                       p="04_Graph\02_Tutorial\03_model_nodes.md" },
    @{ u="$baseGraph/tutorial-model-edges";                       p="04_Graph\02_Tutorial\04_model_edges.md" },
    @{ u="$baseGraph/tutorial-model-node-edge-from-same-table";   p="04_Graph\02_Tutorial\05_node_edge_same_table.md" },
    @{ u="$baseGraph/tutorial-query-builder";                     p="04_Graph\02_Tutorial\06_query_builder.md" },
    @{ u="$baseGraph/tutorial-query-code-editor";                 p="04_Graph\02_Tutorial\07_query_gql.md" },
    @{ u="$baseGraph/tutorial-clean-up";                          p="04_Graph\02_Tutorial\08_clean_up.md" },

    # ===== 04 - Graph / Concepts =====
    @{ u="$baseGraph/graph-database";              p="04_Graph\03_Concepts\01_what_is_graph_database.md" },
    @{ u="$baseGraph/graph-data-models";           p="04_Graph\03_Concepts\02_labeled_property_graph.md" },
    @{ u="$baseGraph/graph-relational-databases";  p="04_Graph\03_Concepts\03_compare_graph_relational.md" },
    @{ u="$baseGraph/how-graph-works";             p="04_Graph\03_Concepts\04_how_graph_works.md" },
    @{ u="$baseGraph/security-overview";           p="04_Graph\03_Concepts\05_security.md" },

    # ===== 04 - Graph / How-tos - Graph Modeling =====
    @{ u="$baseGraph/design-graph-schema";                  p="04_Graph\04_How-tos\01_Graph_Modeling\01_design_graph_schema.md" },
    @{ u="$baseGraph/convert-relational-data-to-graph-model"; p="04_Graph\04_How-tos\01_Graph_Modeling\02_convert_relational.md" },

    # ===== 04 - Graph / How-tos - Data Management =====
    @{ u="$baseGraph/share-graph-manage-permissions";  p="04_Graph\04_How-tos\02_Data_Management\01_share_manage_permissions.md" },
    @{ u="$baseGraph/manage-data";                     p="04_Graph\04_How-tos\02_Data_Management\02_manage_data.md" },

    # ===== 04 - Graph / How-tos - Querying =====
    @{ u="$baseGraph/write-common-gql-queries";      p="04_Graph\04_How-tos\03_Querying\01_write_common_gql.md" },
    @{ u="$baseGraph/filter-aggregate-graph-data";   p="04_Graph\04_How-tos\03_Querying\02_filter_aggregate.md" },
    @{ u="$baseGraph/write-graph-pattern-queries";   p="04_Graph\04_How-tos\03_Querying\03_graph_pattern_queries.md" },
    @{ u="$baseGraph/gql-query-performance";         p="04_Graph\04_How-tos\03_Querying\04_optimize_performance.md" },

    # ===== 04 - Graph / How-tos - Integration & Operations =====
    @{ u="$baseGraph/monitoring-overview";       p="04_Graph\04_How-tos\04_Integration_Operations\01_monitor_status.md" },
    @{ u="$baseGraph/monitor-graph-performance"; p="04_Graph\04_How-tos\04_Integration_Operations\02_monitor_performance.md" },

    # ===== 04 - Graph / Troubleshoot =====
    @{ u="$baseGraph/troubleshooting-and-faq";  p="04_Graph\05_Troubleshoot\01_troubleshooting_faq.md" },
    @{ u="$baseGraph/limitations";              p="04_Graph\05_Troubleshoot\02_limitations.md" },

    # ===== 04 - Graph / Reference - GQL Manual =====
    @{ u="$baseGraph/gql-language-guide";         p="04_Graph\06_Reference\01_GQL_Manual\01_gql_language_guide.md" },
    @{ u="$baseGraph/gql-schema-example";         p="04_Graph\06_Reference\01_GQL_Manual\02_gql_schema_example.md" },
    @{ u="$baseGraph/gql-graph-patterns";         p="04_Graph\06_Reference\01_GQL_Manual\03_gql_graph_patterns.md" },
    @{ u="$baseGraph/gql-expressions";            p="04_Graph\06_Reference\01_GQL_Manual\04_gql_expressions.md" },
    @{ u="$baseGraph/gql-graph-types";            p="04_Graph\06_Reference\01_GQL_Manual\05_gql_graph_types.md" },
    @{ u="$baseGraph/gql-values-and-value-types"; p="04_Graph\06_Reference\01_GQL_Manual\06_gql_values_types.md" },

    # ===== 04 - Graph / Reference - GQL Reference material =====
    @{ u="$baseGraph/gql-query-api";                   p="04_Graph\06_Reference\02_GQL_Reference\00_gql_query_api.md" },
    @{ u="$baseGraph/gql-reference-abridged";          p="04_Graph\06_Reference\02_GQL_Reference\01_gql_quick_reference.md" },
    @{ u="$baseGraph/gql-conformance";                 p="04_Graph\06_Reference\02_GQL_Reference\02_gql_conformance.md" },
    @{ u="$baseGraph/gql-reference-status-codes";      p="04_Graph\06_Reference\02_GQL_Reference\03_gql_status_codes.md" },
    @{ u="$baseGraph/gql-reference-reserved-terms";    p="04_Graph\06_Reference\02_GQL_Reference\04_gql_reserved_words.md" },

    # ===== 05 - Data agent =====
    @{ u="$baseDS/concept-data-agent";                          p="05_Data_agent\01_what_is_data_agent.md" },
    @{ u="$baseDS/data-agent-tenant-settings";                  p="05_Data_agent\02_tenant_settings.md" },
    @{ u="$baseDS/how-to-create-data-agent";                    p="05_Data_agent\03_how_to_create.md" },
    @{ u="$baseDS/fabric-data-agent-sdk";                       p="05_Data_agent\04_sdk.md" },
    @{ u="$baseDS/evaluate-data-agent";                         p="05_Data_agent\05_evaluate.md" },
    @{ u="$baseDS/data-agent-configurations";                   p="05_Data_agent\06_Configure\01_configurations.md" },
    @{ u="$baseDS/semantic-model-best-practices";               p="05_Data_agent\06_Configure\02_semantic_model_best_practices.md" },
    @{ u="$baseDS/data-agent-example-queries";                  p="05_Data_agent\06_Configure\03_example_queries.md" },
    @{ u="$baseDS/data-agent-configuration-best-practices";     p="05_Data_agent\06_Configure\04_best_practices.md" },
    @{ u="$baseDS/develop-iterative-process-data-agent";        p="05_Data_agent\06_Configure\05_how_to_configure.md" },
    @{ u="$baseDS/data-agent-add-datasources";                  p="05_Data_agent\06_Configure\06_add_datasources.md" },
    @{ u="$baseDS/data-agent-ai-search-index";                  p="05_Data_agent\06_Configure\07_ai_search_index.md" },
    @{ u="$baseDS/data-agent-foundry";                          p="05_Data_agent\07_Consume\01_from_foundry.md" },
    @{ u="$baseDS/data-agent-copilot-powerbi";                  p="05_Data_agent\07_Consume\02_from_copilot_powerbi.md" },
    @{ u="$baseDS/data-agent-microsoft-copilot-studio";         p="05_Data_agent\07_Consume\03_from_copilot_studio.md" },
    @{ u="$baseDS/consume-data-agent-python";                   p="05_Data_agent\07_Consume\04_using_python_sdk.md" },
    @{ u="$baseDS/data-agent-microsoft-365-copilot";            p="05_Data_agent\07_Consume\05_from_m365_copilot.md" },
    @{ u="$baseDS/data-agent-mcp-server";                       p="05_Data_agent\07_Consume\06_as_mcp_server.md" },
    @{ u="$baseDS/data-agent-source-control";                   p="05_Data_agent\08_source_control_cicd.md" },
    @{ u="$baseDS/data-agent-end-to-end-tutorial";              p="05_Data_agent\09_end_to_end_tutorial.md" },
    @{ u="$baseDS/data-agent-sharing";                          p="05_Data_agent\10_sharing.md" },

    # ===== 06 - Operations agent =====
    @{ u="$baseRTI/operations-agent";                      p="06_Operations_agent\01_getting_started.md" },
    @{ u="$baseRTI/operations-agent-billing";              p="06_Operations_agent\02_billing.md" },
    @{ u="$baseRTI/operations-agent-limitations";          p="06_Operations_agent\03_limitations.md" },
    @{ u="$baseRTI/operations-agent-transparency-note";    p="06_Operations_agent\04_transparency_note.md" },

    # ===== 07 - Power BI semantic model =====
    @{ u="$baseDW/semantic-models";           p="07_Power_BI_semantic_model\01_semantic_models.md" },
    @{ u="$baseDW/create-semantic-model";     p="07_Power_BI_semantic_model\02_create_semantic_model.md" },
    @{ u="$baseDW/manage-semantic-model";     p="07_Power_BI_semantic_model\03_manage_semantic_model.md" },
    @{ u="$baseDW/reports-power-bi-service";  p="07_Power_BI_semantic_model\04_create_reports.md" }
)

Add-Type -AssemblyName System.Web

function ConvertTo-CleanText {
    param([string]$html)
    $article = $html
    if ($html -match '(?s)<article[^>]*>(.*?)</article>') { $article = $matches[1] }
    elseif ($html -match '(?s)<main[^>]*>(.*?)</main>') { $article = $matches[1] }

    $article = $article -replace '(?s)<pre[^>]*>(.*?)</pre>', "`n`n```n`$1`n```n`n"
    $article = $article -replace '<h1[^>]*>(.*?)</h1>', "`n# `$1`n"
    $article = $article -replace '<h2[^>]*>(.*?)</h2>', "`n## `$1`n"
    $article = $article -replace '<h3[^>]*>(.*?)</h3>', "`n### `$1`n"
    $article = $article -replace '<h4[^>]*>(.*?)</h4>', "`n#### `$1`n"
    $article = $article -replace '<li[^>]*>(.*?)</li>', "`n- `$1"
    $article = $article -replace '<br\s*/?>', "`n"
    $article = $article -replace '</p>', "`n"
    $article = $article -replace '</div>', "`n"
    $article = $article -replace '</tr>', "`n"
    $article = $article -replace '<strong[^>]*>(.*?)</strong>', "**`$1**"
    $article = $article -replace '<b[^>]*>(.*?)</b>', "**`$1**"
    $article = $article -replace '<em[^>]*>(.*?)</em>', "_`$1_"
    $article = $article -replace '<[^>]+>', ''
    $article = [System.Web.HttpUtility]::HtmlDecode($article)
    $article = $article -replace '(\r?\n){3,}', "`n`n"
    return $article.Trim()
}

$total = $pages.Count
$success = 0
$skipped = 0
$errors = @()

Write-Host ""
Write-Host "Descargando $total paginas de Fabric IQ docs..." -ForegroundColor Cyan
Write-Host ""

foreach ($page in $pages) {
    $filePath = Join-Path $baseDir $page.p
    $dir = Split-Path $filePath -Parent
    if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Path $dir -Force | Out-Null }

    if (Test-Path $filePath) {
        Write-Host "  [SKIP] $($page.p)" -ForegroundColor DarkGray
        $skipped++
        $success++
        continue
    }

    try {
        Write-Host "  [GET]  $($page.u)" -ForegroundColor Yellow
        $response = Invoke-WebRequest -Uri $page.u -UseBasicParsing -TimeoutSec 30 -ErrorAction Stop
        $text = ConvertTo-CleanText -html $response.Content
        [System.IO.File]::WriteAllText($filePath, $text, [System.Text.Encoding]::UTF8)
        Write-Host "         OK: $($page.p)" -ForegroundColor Green
        $success++
    }
    catch {
        $msg = $_.ToString()
        Write-Host "  [404/ERR] $($page.u)" -ForegroundColor Red
        $errors += "$($page.p) -- $($page.u)"
    }

    Start-Sleep -Milliseconds 300
}

Write-Host ""
Write-Host "=============================="  -ForegroundColor Cyan
Write-Host "Total    : $total"               -ForegroundColor Cyan
Write-Host "OK       : $success"             -ForegroundColor Green
Write-Host "Saltados : $skipped"             -ForegroundColor DarkGray
if ($errors.Count -gt 0) {
    Write-Host "Errores  : $($errors.Count)" -ForegroundColor Red
    $errors | ForEach-Object { Write-Host "  - $_" -ForegroundColor Red }
}
Write-Host ""
