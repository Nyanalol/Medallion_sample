---
layout: Conceptual
title: 'Tutorial part 4: Create data agent - Microsoft Fabric | Microsoft Learn'
canonicalUrl: https://learn.microsoft.com/en-us/fabric/iq/ontology/tutorial-4-create-data-agent
breadcrumb_path: /fabric/breadcrumb/toc.json
uhfHeaderId: MSDocsHeader-Fabric
show_latex: false
feedback_system: Standard
feedback_help_link_url: https://community.fabric.microsoft.com/powerbi
feedback_help_link_type: ask-the-community
feedback_product_url: https://ideas.fabric.microsoft.com/
ms.service: fabric
author: baanders
ms.author: baanders
ms.subservice: iq-ontology
description: Create a data agent that queries the ontology (preview) in natural language. Part 4 of the ontology (preview) tutorial.
ms.date: 2026-02-04T00:00:00.0000000Z
ms.topic: tutorial
locale: en-us
document_id: 4b31ae0b-dfec-1977-a72e-e0c0702ec3d7
document_version_independent_id: 4b31ae0b-dfec-1977-a72e-e0c0702ec3d7
updated_at: 2026-02-17T06:08:00.0000000Z
original_content_git_url: https://github.com/MicrosoftDocs/fabric-docs-pr/blob/live/docs/iq/ontology/tutorial-4-create-data-agent.md
gitcommit: https://github.com/MicrosoftDocs/fabric-docs-pr/blob/5156dc524b5f03f820d4d6b55aa69caeded0cce5/docs/iq/ontology/tutorial-4-create-data-agent.md
git_commit_id: 5156dc524b5f03f820d4d6b55aa69caeded0cce5
site_name: Docs
depot_name: MSDN.fabric-docs
page_type: conceptual
toc_rel: ../toc.json
pdf_url_template: https://learn.microsoft.com/pdfstore/en-us/MSDN.fabric-docs/{branchName}{pdfName}
word_count: 342
asset_id: iq/ontology/tutorial-4-create-data-agent
moniker_range_name: 
monikers: []
item_type: Content
source_path: docs/iq/ontology/tutorial-4-create-data-agent.md
cmProducts:
- https://microsoft-devrel.poolparty.biz/DevRelOfferingOntology/c6f99e62-1cf6-4b71-af9b-649b05f80cce
- https://microsoft-devrel.poolparty.biz/DevRelOfferingOntology/e7cd09c2-9e9a-4f0d-b160-c15783f45b1f
spProducts:
- https://microsoft-devrel.poolparty.biz/DevRelOfferingOntology/3f56b378-07a9-4fa1-afe8-9889fdc77628
- https://microsoft-devrel.poolparty.biz/DevRelOfferingOntology/1d337399-0ca4-4b4c-acef-8df37820e018
platformId: e368ffc8-6585-438f-44a3-a5cb03fd1619
---

# Tutorial part 4: Create data agent - Microsoft Fabric | Microsoft Learn

Ontology (preview) integrates with [Fabric data agent (preview)](../../data-science/concept-data-agent) to let you ask questions in natural language, and get answers grounded in the ontology's definitions and bindings.

Important

This feature is in [preview](../../fundamentals/preview).

## Create data agent with ontology (preview) source

Follow these steps to create a new data agent that connects to your ontology (preview) item.

1. Go to your Fabric workspace. Use the **+ New item** button to create a new **Data agent (preview)** item named *RetailOntologyAgent*.

    [![Screenshot of creating a new data agent item.](media/tutorial-4-create-data-agent/data-agent-new.png)](media/tutorial-4-create-data-agent/data-agent-new.png#lightbox)

    Tip

    If you don't see the data agent item type, make sure that it's enabled in your tenant as described in the [tutorial prerequisites](tutorial-0-introduction#prerequisites).
2. The agent opens when it's ready. Select **Add a data source**.

    ![Screenshot of adding a source to the data agent.](media/tutorial-4-create-data-agent/add-source.png)

    Search for the *RetailSalesOntology* item and select **Add**. Now your ontology is added as a source for the data agent.

When the agent is ready, the ontology and its entity types are visible in the Explorer.

[![Screenshot of the Retail Ontology Agent.](media/tutorial-4-create-data-agent/data-agent.png)](media/tutorial-4-create-data-agent/data-agent.png#lightbox)

## Provide agent instructions

Note

This step addresses a known issue affecting aggregation in queries.

Next, add a custom instruction to the agent.

1. Select **Agent instructions** from the menu ribbon.
2. At the bottom of the input box, add `Support group by in GQL`. This instruction enables better aggregation across ontology data.

    [![Screenshot of the agent instructions.](media/tutorial-4-create-data-agent/agent-instructions.png)](media/tutorial-4-create-data-agent/agent-instructions.png#lightbox)
3. The instruction is applied automatically. Optionally, close the **Agent instructions** tab.

## Query agent with natural language

Next, explore your ontology with natural language questions.

Start by entering these example prompts:

- *For each store, show any freezers operated by that store that ever had a humidity lower than 46 percent.*
- *What is the top product by revenue across all stores?*

Notice that the responses reference entity types (*Store*, *Products*, *Freezer*) and their relationships, not just raw tables.

[![Screenshot of the result of a query.](media/tutorial-4-create-data-agent/query-result.png)](media/tutorial-4-create-data-agent/query-result.png#lightbox)

Tip

If you see errors that say there's no data while running the example queries, wait a few minutes to give the agent more time to initialize. Then, run the queries again.

Continue exploring the data agent by trying out some prompts of your own.