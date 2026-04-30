---
layout: Conceptual
title: 'Tutorial: Create a graph model in Microsoft Fabric - Microsoft Fabric | Microsoft Learn'
canonicalUrl: https://learn.microsoft.com/en-us/fabric/graph/tutorial-create-graph
breadcrumb_path: /fabric/breadcrumb/toc.json
uhfHeaderId: MSDocsHeader-Fabric
show_latex: false
feedback_system: Standard
feedback_help_link_url: https://community.fabric.microsoft.com/powerbi
feedback_help_link_type: ask-the-community
feedback_product_url: https://ideas.fabric.microsoft.com/
ms.service: fabric
author: lorihollasch
ms.author: loriwhip
ms.subservice: graph
description: Learn how to create a new graph model in Microsoft Fabric, including loading data from OneLake and configuring graph properties.
ms.topic: tutorial
ms.date: 2026-04-14T00:00:00.0000000Z
ms.reviewer: wangwilliam
ms.search.form: Tutorial - Create a graph
ai-usage: ai-assisted
locale: en-us
document_id: 327e2cf9-c4f0-d146-831e-129e552bdfd5
document_version_independent_id: 327e2cf9-c4f0-d146-831e-129e552bdfd5
updated_at: 2026-04-15T17:02:00.0000000Z
original_content_git_url: https://github.com/MicrosoftDocs/fabric-docs-pr/blob/live/docs/graph/tutorial-create-graph.md
gitcommit: https://github.com/MicrosoftDocs/fabric-docs-pr/blob/3eb0d49369b063add32e1e25b888e1837ac7f824/docs/graph/tutorial-create-graph.md
git_commit_id: 3eb0d49369b063add32e1e25b888e1837ac7f824
site_name: Docs
depot_name: MSDN.fabric-docs
page_type: conceptual
toc_rel: ../iq/toc.json
pdf_url_template: https://learn.microsoft.com/pdfstore/en-us/MSDN.fabric-docs/{branchName}{pdfName}
word_count: 268
asset_id: graph/tutorial-create-graph
moniker_range_name: 
monikers: []
item_type: Content
source_path: docs/graph/tutorial-create-graph.md
cmProducts:
- https://microsoft-devrel.poolparty.biz/DevRelOfferingOntology/e7cd09c2-9e9a-4f0d-b160-c15783f45b1f
spProducts:
- https://microsoft-devrel.poolparty.biz/DevRelOfferingOntology/1d337399-0ca4-4b4c-acef-8df37820e018
platformId: 3e663c3c-0669-2d7c-9771-8eb0dcbeb402
---

# Tutorial: Create a graph model in Microsoft Fabric - Microsoft Fabric | Microsoft Learn

Note

This feature is currently in public preview. This preview is provided without a service-level agreement, and isn't recommended for production workloads. Certain features might not be supported or might have constrained capabilities. For more information, see [Supplemental Terms of Use for Microsoft Azure Previews](https://azure.microsoft.com/support/legal/preview-supplemental-terms/).

In this tutorial step, you create a graph model and load data from OneLake. A graph model is the foundation for building your graph and defines the structure of your nodes and edges.

This step assumes you already [loaded the sample data](tutorial-load-data) into a lakehouse within your workspace.

## Create a graph model

1. In [Microsoft Fabric](https://fabric.microsoft.com/), select the workspace where you want to create the graph model (for example, *My workspace*).
2. Select **+ New item**.
3. Select **Analyze and train data** &gt; **Graph model (preview)**.

    [![Screenshot showing the new item menu with the option to select Graph model (preview).](media/quickstart/new-item-graph-model.png)](media/quickstart/new-item-graph-model.png#lightbox)

    Tip

    Alternatively, enter "graph" in the search box and press **Enter** to search for graph items.
4. Enter a name for your graph model, such as `AdventureWorksGraph`, and select **Create**.

After creating the graph model, you're taken to the graph view where you can see **Save**, **Get data**, **Add node**, and **Add edge** buttons.

## Load data into the graph

To load data into your graph from OneLake, follow these steps:

1. In your graph model, select **Get data**.
2. In the **OneLake catalog** dialog, select your lakehouse (for example, *AdventureWorksLakehouse*), and then select **Add**.

    [![Screenshot showing the data selection menu in OneLake.](media/quickstart/graph-data-select.png)](media/quickstart/graph-data-select.png#lightbox)
3. In the **Choose data** pane, select your lakehouse (for example, *AdventureWorksLakehouse*) to automatically select all tables under it.
4. Select **Load**.

You should now see the eight tables from your lakehouse listed in the data pane, available for use in your graph.

[![Screenshot showing the data view in the graph model.](media/quickstart/graph-data-view.png)](media/quickstart/graph-data-view.png#lightbox)