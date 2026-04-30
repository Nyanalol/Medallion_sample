---
layout: Conceptual
title: 'Tutorial: Query the graph with GQL - Microsoft Fabric | Microsoft Learn'
canonicalUrl: https://learn.microsoft.com/en-us/fabric/graph/tutorial-query-code-editor
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
description: Learn how to query your graph using GQL (Graph Query Language) in the code editor, including pattern matching and filtering examples.
ms.topic: tutorial
ms.date: 2026-03-24T00:00:00.0000000Z
ms.reviewer: wangwilliam
ms.search.form: Tutorial - Query the graph with GQL
ai-usage: ai-assisted
locale: en-us
document_id: 3dbe3b2e-2fd2-2ce4-8bcb-3f787ff25f63
document_version_independent_id: 3dbe3b2e-2fd2-2ce4-8bcb-3f787ff25f63
updated_at: 2026-03-29T11:05:00.0000000Z
original_content_git_url: https://github.com/MicrosoftDocs/fabric-docs-pr/blob/live/docs/graph/tutorial-query-code-editor.md
gitcommit: https://github.com/MicrosoftDocs/fabric-docs-pr/blob/ce8378d4053c45a19fd761caf9797b909fdd0aae/docs/graph/tutorial-query-code-editor.md
git_commit_id: ce8378d4053c45a19fd761caf9797b909fdd0aae
site_name: Docs
depot_name: MSDN.fabric-docs
page_type: conceptual
toc_rel: ../iq/toc.json
pdf_url_template: https://learn.microsoft.com/pdfstore/en-us/MSDN.fabric-docs/{branchName}{pdfName}
word_count: 447
asset_id: graph/tutorial-query-code-editor
moniker_range_name: 
monikers: []
item_type: Content
source_path: docs/graph/tutorial-query-code-editor.md
cmProducts:
- https://microsoft-devrel.poolparty.biz/DevRelOfferingOntology/c6f99e62-1cf6-4b71-af9b-649b05f80cce
- https://microsoft-devrel.poolparty.biz/DevRelOfferingOntology/e7cd09c2-9e9a-4f0d-b160-c15783f45b1f
- https://authoring-docs-microsoft.poolparty.biz/devrel/68ec7f3a-2bc6-459f-b959-19beb729907d
spProducts:
- https://microsoft-devrel.poolparty.biz/DevRelOfferingOntology/3f56b378-07a9-4fa1-afe8-9889fdc77628
- https://microsoft-devrel.poolparty.biz/DevRelOfferingOntology/1d337399-0ca4-4b4c-acef-8df37820e018
- https://authoring-docs-microsoft.poolparty.biz/devrel/90370425-aca4-4a39-9533-d52e5e002a5d
platformId: 832aaed5-489a-d140-9611-f28df68e124c
---

# Tutorial: Query the graph with GQL - Microsoft Fabric | Microsoft Learn

Note

This feature is currently in public preview. This preview is provided without a service-level agreement, and isn't recommended for production workloads. Certain features might not be supported or might have constrained capabilities. For more information, see [Supplemental Terms of Use for Microsoft Azure Previews](https://azure.microsoft.com/support/legal/preview-supplemental-terms/).

In this tutorial step, you query your graph by using GQL (Graph Query Language) in the code editor. GQL provides powerful querying capabilities for complex graph patterns and analysis.

## Switch to code editor mode

Follow these steps to switch to the code editor and start querying your graph by using GQL:

1. Go to your graph's home page.
2. Select **Code editor** from the top menu.

    [![Screenshot showing result of selecting Code editor.](media/tutorial/select-code-editor.png)](media/tutorial/select-code-editor.png#lightbox)

## Run a basic query

1. Enter a GQL query into the input field. For example, count all orders:

    ```gql
    MATCH (n:`Order`) RETURN count(n) AS num_orders
    ```
2. Select **Run query** to execute the query.

This query finds all nodes with the `Order` label, counts them, and returns the total as `num_orders`. It's a simple way to confirm your graph has data and that the count matches the number of order rows you loaded. The following image shows the result of the query:

[![Screenshot showing the result of running a GQL query to count all orders.](media/tutorial/code-editor-query-results-1.png)](media/tutorial/code-editor-query-results-1.png#lightbox)

## Recreate the query builder query in GQL

In the [previous tutorial step](tutorial-query-builder), you used the query builder to find what products a specific customer purchased. Here's the same query written in GQL:

```gql
MATCH (c:Customer)-[:purchases]->(o:`Order`)-[:`contains`]->(p:`Product`)
FILTER c.fullName = 'Carla Adams'
RETURN c.fullName, o, p.productName
```

This query:

1. **Matches** the pattern `Customer` → `purchases` → `Order` → `contains` → `Product`
2. **Filters** for the customer named "Carla Adams"
3. **Returns** the customer's full name, order details, and product names

The following image shows the result of the query (only a portion of the returned data is shown).

[![Screenshot showing the result of running a GQL query to find products purchased by Carla Adams.](media/tutorial/code-editor-query-results-2.png)](media/tutorial/code-editor-query-results-2.png#lightbox)

## Run a complex query

You can run more complex queries that combine matching graph patterns, filtering, aggregation, sorting, and limiting:

```gql
MATCH (v:Vendor)-[:produces]->(p:`Product`)->(sc:`ProductSubcategory`)->(c:`ProductCategory`), 
      (o:`Order`)-[:`contains`]->(p)
FILTER c.categoryName = 'Clothing'
LET vendorName = v.vendorName, subCategoryName = sc.subCategoryName
RETURN vendorName, subCategoryName, count(DISTINCT p) AS num_products, count(o) AS num_orders
GROUP BY vendorName, subCategoryName
ORDER BY num_orders DESC
LIMIT 5
```

This query:

1. **Matches** a pattern that connects vendors to products through the supply chain, and orders to products.
2. **Filters** for products in the `Clothing` category.
3. **Defines** variables for vendor and subcategory names.
4. **Returns** the vendor name, subcategory name, distinct product count, and order count.
5. **Groups** results by vendor and subcategory.
6. **Orders** results by order count in descending order.
7. **Limits** results to the top 5.

In summary, it shows the top five vendors supplying products in the `Clothing` category, along with how many products they supply and how many orders those products have.

[![Screenshot showing the result of running a GQL query to find the top five vendors supplying products in the Clothing category.](media/tutorial/code-editor-query-results-3.png)](media/tutorial/code-editor-query-results-3.png#lightbox)