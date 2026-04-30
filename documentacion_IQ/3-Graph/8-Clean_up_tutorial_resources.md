---
layout: Conceptual
title: 'Tutorial: Clean up graph tutorial resources - Microsoft Fabric | Microsoft Learn'
canonicalUrl: https://learn.microsoft.com/en-us/fabric/graph/tutorial-clean-up
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
description: Learn how to clean up the lakehouse, graph model, and workspace resources created during the graph in Microsoft Fabric tutorial series.
ms.topic: tutorial
ms.date: 2026-03-24T00:00:00.0000000Z
ms.reviewer: wangwilliam
ms.search.form: Tutorial - Clean up graph tutorial resources
ai-usage: ai-assisted
locale: en-us
document_id: 90b452b6-1099-27c9-37bd-e262cc6f5bcb
document_version_independent_id: 90b452b6-1099-27c9-37bd-e262cc6f5bcb
updated_at: 2026-03-29T11:05:00.0000000Z
original_content_git_url: https://github.com/MicrosoftDocs/fabric-docs-pr/blob/live/docs/graph/tutorial-clean-up.md
gitcommit: https://github.com/MicrosoftDocs/fabric-docs-pr/blob/ce8378d4053c45a19fd761caf9797b909fdd0aae/docs/graph/tutorial-clean-up.md
git_commit_id: ce8378d4053c45a19fd761caf9797b909fdd0aae
site_name: Docs
depot_name: MSDN.fabric-docs
page_type: conceptual
toc_rel: ../iq/toc.json
pdf_url_template: https://learn.microsoft.com/pdfstore/en-us/MSDN.fabric-docs/{branchName}{pdfName}
word_count: 322
asset_id: graph/tutorial-clean-up
moniker_range_name: 
monikers: []
item_type: Content
source_path: docs/graph/tutorial-clean-up.md
cmProducts:
- https://microsoft-devrel.poolparty.biz/DevRelOfferingOntology/e7cd09c2-9e9a-4f0d-b160-c15783f45b1f
spProducts:
- https://microsoft-devrel.poolparty.biz/DevRelOfferingOntology/1d337399-0ca4-4b4c-acef-8df37820e018
platformId: af73da4d-ec0e-cc76-cd19-0c3279c77a74
---

# Tutorial: Clean up graph tutorial resources - Microsoft Fabric | Microsoft Learn

Note

This feature is currently in public preview. This preview is provided without a service-level agreement, and isn't recommended for production workloads. Certain features might not be supported or might have constrained capabilities. For more information, see [Supplemental Terms of Use for Microsoft Azure Previews](https://azure.microsoft.com/support/legal/preview-supplemental-terms/).

As a final step, you can optionally clean up the resources you created during the tutorial. Cleaning up resources helps you avoid unnecessary charges and keeps your workspace organized.

## Delete the graph model

To delete the graph model you created:

1. Go to your [Microsoft Fabric workspace](https://fabric.microsoft.com/).
2. Find the graph model you created (for example, "AdventureWorksGraph").
3. Select the **More options** (...) menu next to the graph model.
4. Select **Delete**.
5. Confirm the deletion.

## Delete other tutorial items

If you want to keep your workspace but remove items created during the tutorial, repeat the deletion steps for:

- The lakehouse (for example, "AdventureWorksLakehouse")
- Any querysets you saved (for example, "CarlaAdams\_Purchases")

## Delete the workspace

If you created a new workspace specifically for this tutorial and you no longer need it, delete the entire workspace:

1. Go to **Workspaces** from the left navigation pane.
2. Select the workspace you want to delete.
3. Select **Workspace settings** (gear icon).
4. Select **Remove this workspace** under **Delete workspace**.
5. Confirm the deletion.

Warning

Deleting a workspace permanently removes all items in the workspace, including lakehouses, graphs, reports, and other artifacts. You can't undo this action.

## Tutorial complete

Congratulations! You completed the graph in Microsoft Fabric tutorial. You learned how to:

- Load sample data into a lakehouse
- Create a graph model
- Connect your graph to data in OneLake
- Add nodes to represent entities in your data
- Add edges to define relationships between nodes
- Query the graph using the visual query builder
- Save queries as querysets for reuse and sharing
- Query the graph using GQL in the code editor