---
layout: Conceptual
title: 'Tutorial: Query the graph with the query builder - Microsoft Fabric | Microsoft Learn'
canonicalUrl: https://learn.microsoft.com/en-us/fabric/graph/tutorial-query-builder
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
description: Learn how to query your graph using the visual query builder in Microsoft Fabric, including selecting nodes, edges, and filters.
ms.topic: tutorial
ms.date: 2026-03-24T00:00:00.0000000Z
ms.reviewer: wangwilliam
ms.search.form: Tutorial - Query the graph with the query builder
ai-usage: ai-assisted
locale: en-us
document_id: cd947747-a171-c916-3663-bfbba902833f
document_version_independent_id: cd947747-a171-c916-3663-bfbba902833f
updated_at: 2026-03-29T11:05:00.0000000Z
original_content_git_url: https://github.com/MicrosoftDocs/fabric-docs-pr/blob/live/docs/graph/tutorial-query-builder.md
gitcommit: https://github.com/MicrosoftDocs/fabric-docs-pr/blob/ce8378d4053c45a19fd761caf9797b909fdd0aae/docs/graph/tutorial-query-builder.md
git_commit_id: ce8378d4053c45a19fd761caf9797b909fdd0aae
site_name: Docs
depot_name: MSDN.fabric-docs
page_type: conceptual
toc_rel: ../iq/toc.json
pdf_url_template: https://learn.microsoft.com/pdfstore/en-us/MSDN.fabric-docs/{branchName}{pdfName}
word_count: 637
asset_id: graph/tutorial-query-builder
moniker_range_name: 
monikers: []
item_type: Content
source_path: docs/graph/tutorial-query-builder.md
cmProducts:
- https://authoring-docs-microsoft.poolparty.biz/devrel/5287f575-02f0-405f-92b7-800456526b0c
- https://microsoft-devrel.poolparty.biz/DevRelOfferingOntology/e7cd09c2-9e9a-4f0d-b160-c15783f45b1f
- https://authoring-docs-microsoft.poolparty.biz/devrel/68ec7f3a-2bc6-459f-b959-19beb729907d
spProducts:
- https://authoring-docs-microsoft.poolparty.biz/devrel/06e86142-34c2-4b94-ab9c-9477c21f7152
- https://microsoft-devrel.poolparty.biz/DevRelOfferingOntology/1d337399-0ca4-4b4c-acef-8df37820e018
- https://authoring-docs-microsoft.poolparty.biz/devrel/90370425-aca4-4a39-9533-d52e5e002a5d
platformId: fecb0f29-0557-a0ab-0a12-9615671d1ec6
---

# Tutorial: Query the graph with the query builder - Microsoft Fabric | Microsoft Learn

Note

This feature is currently in public preview. This preview is provided without a service-level agreement, and isn't recommended for production workloads. Certain features might not be supported or might have constrained capabilities. For more information, see [Supplemental Terms of Use for Microsoft Azure Previews](https://azure.microsoft.com/support/legal/preview-supplemental-terms/).

In this tutorial step, you query your graph by using the visual query builder. The query builder provides an interactive way to explore your graph by selecting nodes and relationships.

You can also query your graph by using GQL, the graph query language. The [next tutorial step](tutorial-query-code-editor) shows you how.

## Switch to query builder mode

Follow these steps to switch to query builder and start querying your graph interactively:

- Select **Modes** &gt; **Query** from your graph's home page.

    Tip

    From this view, you can also create a read-only queryset. This queryset has the same functionalities and it allows you to share your query results.

[![Screenshot showing result of selecting Query mode.](media/tutorial/query-mode.png)](media/tutorial/query-mode.png#lightbox)

## Build a query

Build a query to answer the question: "What products did a specific customer purchase?" This query traverses the graph from `Customer` through `Order` to `Product`. For example, to query customer Carla Adams' purchases, follow these steps:

1. Select **Add a node** to see the available nodes for querying.

    [![Screenshot showing result of selecting Add a node.](media/tutorial/select-add-node.png)](media/tutorial/select-add-node.png#lightbox)
2. Select the **Customer** node to add it to your query.

    [![Screenshot showing result of selecting the Customer node.](media/tutorial/query-select-customer-node.png)](media/tutorial/query-select-customer-node.png#lightbox)
3. Select the `purchases` edge while the `Customer` node is selected. The query builder automatically adds the connected `Order` node.
4. Select the `contains` edge while the `Order` node is selected. The query builder automatically adds the connected `Product` node.
5. You now have a query pattern: `Customer` → `purchases` → `Order` → `contains` → `Product`.

    [![Screenshot showing the query pattern with selected nodes and edges.](media/tutorial/query-nodes-and-edges-selected.png)](media/tutorial/query-nodes-and-edges-selected.png#lightbox)
6. Apply a filter to the `Customer` node to focus on a specific customer. For this tutorial, select the Customer node, and then select **Filter**.

    [![Screenshot showing how to select Filter on the Customer node.](media/tutorial/add-filter.png)](media/tutorial/add-filter.png#lightbox)
7. In the **Filter** popup, configure the filter as follows:

    - **For**: `Customer`
    - **Where**: `fullName = Carla Adams`

    [![Screenshot showing completed Add filter popup on the Customer node.](media/tutorial/query-add-filter.png)](media/tutorial/query-add-filter.png#lightbox)
8. Select **Apply** to add the filter to the `Customer` node.

The query is now set up to find all products purchased by Carla Adams.

## Run the query

1. Select **Run query** to run the query and see the results. The query might take a few moments to complete.

    [![Screenshot showing how to select Run query.](media/tutorial/run-query.png)](media/tutorial/run-query.png#lightbox)
2. When the query finishes, collapse the query builder pane to get a better view of the results. You should see the products that Carla Adams purchased, displayed as a graph of connected Customer, Order, and Product nodes.

    [![Screenshot of the visualized query results.](media/tutorial/query-results.png)](media/tutorial/query-results.png#lightbox)

## Explore your data

The query builder helps you visually explore your graph:

- **Expand nodes**: Hover over a node to see its connected nodes and relationships.
- **View node properties**: Select a node to view its properties.
- **Interact with nodes**: Drag nodes to reposition them or select to highlight connections.
- **Filter results**: Apply filters to focus on specific data.
- **Select properties**: Choose which node and edge properties to include in your results.

You can view your query results in different ways:

- **Diagram view**: Visualize the graph structure and relationships. This view is the default.
- **Card view**: View detailed information about each node in a card format.
- **Table view**: See the results in a tabular format for easier analysis.

[![Screenshot showing the different view modes: Diagram, Card, and Table.](media/tutorial/query-view-modes.png)](media/tutorial/query-view-modes.png#lightbox)

## Save the query

You can save your query by creating a queryset in your workspace. You can create a queryset in several ways in Fabric. This tutorial uses the interface in **Query** mode.

To create a queryset, follow these steps:

1. In **Query** mode, select **Create queryset**.

    [![Screenshot showing the Create queryset option.](media/tutorial/query-create-queryset.png)](media/tutorial/query-create-queryset.png#lightbox)
2. In the **New graph queryset** dialog, enter a name for your queryset (for example, "GraphQuerySet\_1") and set **Location** to your workspace. Then select **Create**.

    [![Screenshot showing the New graph queryset dialog.](media/tutorial/query-create-queryset-dialog.png)](media/tutorial/query-create-queryset-dialog.png#lightbox)
3. A new queryset item is created in your workspace, and the current query is saved in it. Select the triple ellipsis (...) next to the queryset name and select **Rename** to give it a meaningful name, such as "CarlaAdams\_Purchases".

    [![Screenshot showing the created queryset item in the workspace.](media/tutorial/queryset-item-created.png)](media/tutorial/queryset-item-created.png#lightbox)

Querysets let you:

- Rerun queries without recreating them
- Share queries with teammates who have workspace access
- Organize related queries together