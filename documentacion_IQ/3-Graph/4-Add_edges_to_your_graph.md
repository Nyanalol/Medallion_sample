---
layout: Conceptual
title: 'Tutorial: Add node types to your graph - Microsoft Fabric | Microsoft Learn'
canonicalUrl: https://learn.microsoft.com/en-us/fabric/graph/tutorial-model-nodes
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
description: Learn how to add node types to your graph model in Microsoft Fabric by mapping source tables and configuring node properties.
ms.topic: tutorial
ms.date: 2026-04-14T00:00:00.0000000Z
ms.reviewer: wangwilliam
ms.search.form: Tutorial - Add nodes to your graph
ai-usage: ai-assisted
locale: en-us
document_id: 6e0fc4e4-659d-fe6c-0b37-e26eb850fad6
document_version_independent_id: 6e0fc4e4-659d-fe6c-0b37-e26eb850fad6
updated_at: 2026-04-15T17:02:00.0000000Z
original_content_git_url: https://github.com/MicrosoftDocs/fabric-docs-pr/blob/live/docs/graph/tutorial-model-nodes.md
gitcommit: https://github.com/MicrosoftDocs/fabric-docs-pr/blob/3eb0d49369b063add32e1e25b888e1837ac7f824/docs/graph/tutorial-model-nodes.md
git_commit_id: 3eb0d49369b063add32e1e25b888e1837ac7f824
site_name: Docs
depot_name: MSDN.fabric-docs
page_type: conceptual
toc_rel: ../iq/toc.json
pdf_url_template: https://learn.microsoft.com/pdfstore/en-us/MSDN.fabric-docs/{branchName}{pdfName}
word_count: 430
asset_id: graph/tutorial-model-nodes
moniker_range_name: 
monikers: []
item_type: Content
source_path: docs/graph/tutorial-model-nodes.md
cmProducts:
- https://microsoft-devrel.poolparty.biz/DevRelOfferingOntology/e7cd09c2-9e9a-4f0d-b160-c15783f45b1f
- https://authoring-docs-microsoft.poolparty.biz/devrel/5287f575-02f0-405f-92b7-800456526b0c
- https://authoring-docs-microsoft.poolparty.biz/devrel/68ec7f3a-2bc6-459f-b959-19beb729907d
spProducts:
- https://microsoft-devrel.poolparty.biz/DevRelOfferingOntology/1d337399-0ca4-4b4c-acef-8df37820e018
- https://authoring-docs-microsoft.poolparty.biz/devrel/06e86142-34c2-4b94-ab9c-9477c21f7152
- https://authoring-docs-microsoft.poolparty.biz/devrel/90370425-aca4-4a39-9533-d52e5e002a5d
platformId: 1618117c-3b68-bf39-266c-0e1c73507631
---

# Tutorial: Add node types to your graph - Microsoft Fabric | Microsoft Learn

Note

This feature is currently in public preview. This preview is provided without a service-level agreement, and isn't recommended for production workloads. Certain features might not be supported or might have constrained capabilities. For more information, see [Supplemental Terms of Use for Microsoft Azure Previews](https://azure.microsoft.com/support/legal/preview-supplemental-terms/).

In this tutorial step, you add node types to your graph model. Node types represent entities in your data, such as customers, products, or orders. Later, you connect these node types with edge types to define relationships between them.

## Adventure Works node mappings

In the Adventure Works data model, create a node type for each entity. The following table shows the node mappings. Use this information to add node types to your graph:

| Node type label | Mapping table | ID of mapping column |
| --- | --- | --- |
| `Customer` | adventureworks\_customers | `CustomerID_K` |
| `Employee` | adventureworks\_employees | `EmployeeID_K` |
| `Order` | adventureworks\_orders | `SalesOrderDetailID_K` |
| `ProductCategory` | adventureworks\_productcategories | `CategoryID_K` |
| `Product` | adventureworks\_products | `ProductID_K` |
| `ProductSubcategory` | adventureworks\_productsubcategories | `SubcategoryID_K` |
| `VendorProduct` | adventureworks\_vendorproduct | `ProductID_FK` |
| `Vendor` | adventureworks\_vendors | `VendorID_K` |

## Add node types to the graph

To add node types to your graph, follow these steps:

1. In your graph model, select **Add node** to add a new node type to your graph.
2. In the **Add node to graph** dialog, enter a **Label** name and select the appropriate **Mapping table** and **ID** of the mapping column.

    [![Screenshot showing the Add node to graph dialog.](media/quickstart/node-add-customer.png)](media/quickstart/node-add-customer.png#lightbox)

    For example, for the first node, use these values:

    - **Label**: `Customer`
    - **Mapping table**: *adventureworks\_customers*
    - **ID** of the mapping column: `CustomerID_K`

    Tip

    You can set compound keys (IDs consisting of multiple columns). After you select a mapping table, choose one ID from the **ID** dropdown, then use the dropdown again to add another.
3. Select **Confirm** to add the node type to your graph.
4. Repeat the process for all remaining node types listed in the Adventure Works node mappings table.
5. You see all eight node types represented in your graph. Select **Save** to save your progress.

    [![Screenshot showing all of the nodes added to the graph.](media/tutorial/node-add-completed.png)](media/tutorial/node-add-completed.png#lightbox)

## Understand node properties

When you add a node type, every column in the mapping table automatically becomes a **property** on that node type. You don't need to add properties manually. To see the properties for a node type, double-click it in the graph model editor to open the **Edit node schema** dialog.

[![Screenshot showing the Edit node schema dialog for the Employee node type with all 10 properties listed, each with a delete icon.](media/tutorial/edit-node-schema-properties.png)](media/tutorial/edit-node-schema-properties.png#lightbox)

For this tutorial, keep all properties on every node type. In a later step, you extract a column into its own node type and remove redundant properties. For details, see [Model a node and edge from the same table](tutorial-model-node-edge-from-same-table). For general guidance on choosing which properties to keep or remove, see [Remove unnecessary properties](design-graph-schema#remove-unnecessary-properties).

After you add node types to your graph, add edge types to define the relationships between them.