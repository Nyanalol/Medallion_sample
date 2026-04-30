---
layout: Conceptual
title: 'Tutorial part 3: Preview the ontology - Microsoft Fabric | Microsoft Learn'
canonicalUrl: https://learn.microsoft.com/en-us/fabric/iq/ontology/tutorial-3-preview-ontology
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
description: Preview the ontology by observing its entity instances and relationship graphs. Part 3 of the ontology (preview) tutorial.
ms.date: 2025-12-03T00:00:00.0000000Z
ms.topic: tutorial
locale: en-us
document_id: fe6454e8-dc0b-64e5-8d83-c56826897580
document_version_independent_id: fe6454e8-dc0b-64e5-8d83-c56826897580
updated_at: 2026-04-08T05:02:00.0000000Z
original_content_git_url: https://github.com/MicrosoftDocs/fabric-docs-pr/blob/live/docs/iq/ontology/tutorial-3-preview-ontology.md
gitcommit: https://github.com/MicrosoftDocs/fabric-docs-pr/blob/acad1022a9d323e6ced9e5a4da16515c9c26cb42/docs/iq/ontology/tutorial-3-preview-ontology.md
git_commit_id: acad1022a9d323e6ced9e5a4da16515c9c26cb42
site_name: Docs
depot_name: MSDN.fabric-docs
page_type: conceptual
toc_rel: ../toc.json
pdf_url_template: https://learn.microsoft.com/pdfstore/en-us/MSDN.fabric-docs/{branchName}{pdfName}
word_count: 718
asset_id: iq/ontology/tutorial-3-preview-ontology
moniker_range_name: 
monikers: []
item_type: Content
source_path: docs/iq/ontology/tutorial-3-preview-ontology.md
cmProducts:
- https://microsoft-devrel.poolparty.biz/DevRelOfferingOntology/e7cd09c2-9e9a-4f0d-b160-c15783f45b1f
- https://authoring-docs-microsoft.poolparty.biz/devrel/2d774b87-7dcb-40bf-a0b9-5a7a9efff0d1
- https://authoring-docs-microsoft.poolparty.biz/devrel/5287f575-02f0-405f-92b7-800456526b0c
spProducts:
- https://microsoft-devrel.poolparty.biz/DevRelOfferingOntology/1d337399-0ca4-4b4c-acef-8df37820e018
- https://authoring-docs-microsoft.poolparty.biz/devrel/89dc5f37-0e4e-4b05-ad87-5fcd2b941a8a
- https://authoring-docs-microsoft.poolparty.biz/devrel/06e86142-34c2-4b94-ab9c-9477c21f7152
platformId: 719f4f01-18d9-859a-108f-6d50b761f86c
---

# Tutorial part 3: Preview the ontology - Microsoft Fabric | Microsoft Learn

In this tutorial step, explore your ontology by using the preview experience included in ontology (preview). Inspect entity instances that instantiate your entity types with data, and explore relationship graphs that provide context across sales and device streaming data.

Important

This feature is in [preview](../../fundamentals/preview).

## Preview entity instances

When you bound data to your entity types in previous tutorial steps, ontology automatically created instances of those entities that are tied to the source data rows. In this section, you use the preview experience to view those entity instances.

1. Select the *SaleEvent* entity type, and select **Entity type overview** from the top ribbon.

    ![Screenshot of opening the preview experience.](media/tutorial-3-preview-ontology/open-preview.png)

    It might take a few minutes for the ontology overview to load the first time.
2. Scroll down to the **Entity instances** section. Verify that it shows entity instances, with unit counts and revenue populated from the *factsales* lakehouse table.

    [![Screenshot of the entity instances.](media/tutorial-3-preview-ontology/entity-instances.png)](media/tutorial-3-preview-ontology/entity-instances.png#lightbox)

    Tip

    If data bindings don't load, confirm that the source data tables exist with matching column names, and that your Fabric identity has data access.
3. Open the *Freezer* entity type in the preview experience, by selecting it in the **Entity Types** pane and selecting **Entity type overview** from the top ribbon.
4. Update the time range from the default of *Last 30 minutes* to a custom date range that begins on *Fri Aug 01 2025 at 12:00 AM*, ends on *Mon Aug 04 2025 at 12:00 AM*, and has a **Time granularity** of *1 minute*.

    [![Screenshot of the time selector.](media/tutorial-3-preview-ontology/freezer-telemetry-edit-time.png)](media/tutorial-3-preview-ontology/freezer-telemetry-edit-time.png#lightbox)
5. Observe the time series data that's visible from different *Freezer* entity instances.

    [![Screenshot of the time series tiles.](media/tutorial-3-preview-ontology/freezer-telemetry.png)](media/tutorial-3-preview-ontology/freezer-telemetry.png#lightbox)

## Preview ontology graph

The preview experience also contains a **Relationship graph**, which you use to visualize your ontology in a graph of nodes and edges.

1. Use the tabs across the top of the preview experience to reopen the *SaleEvent* entity type. In the **Relationship graph** tile, select **Expand**.

    ![Screenshot of expanding the relationship graph.](media/tutorial-3-preview-ontology/relationship-graph.png)
2. In the graph, observe the details of the relationships to the *SaleEvent* entity type from *Store* and *Products*.

    [![Screenshot of data in the expanded relationship graph.](media/tutorial-3-preview-ontology/relationship-graph-expanded.png)](media/tutorial-3-preview-ontology/relationship-graph-expanded.png#lightbox)
3. Open the preview experience for the *Store* entity type, and **Expand** its relationship graph.
4. In the graph, observe the relationship between *Store* and *SaleEvent*, and the relationship between *Store* and *Freezer*. Then, select **Run query** in the query builder ribbon to run the default query and see a graph of entity instances and their connections.

    [![Screenshot of the Store relationship graph and instances.](media/tutorial-3-preview-ontology/relationship-default-query.png)](media/tutorial-3-preview-ontology/relationship-default-query.png#lightbox)

Tip

If the graph looks sparse, check the entity type keys in the data bindings and verify that they match the keys defined in [Create entity types and data bindings](tutorial-1-create-ontology#create-entity-types-and-data-bindings). For example, the key for the *SaleEvent* entity type is `SaleId`.

## Query graph instances

In the relationship graph view, you can query your ontology for entity instances that meet certain criteria. Use the **Query builder** filters in the top ribbon to craft queries.

![Screenshot of selecting the query builder.](media/tutorial-3-preview-ontology/query-builder.png)

First, craft this query: *Show all freezers that are operated in the Paris store.*

1. In the *Store* entity's relationship graph, select **Add filter &gt; Store &gt; StoreId** from the query builder ribbon. Set the filter for `StoreId = S-PAR-01`. This value is the store ID for the Paris store.

    [![Screenshot of filtering by Store ID.](media/tutorial-3-preview-ontology/add-filter-store.png)](media/tutorial-3-preview-ontology/add-filter-store.png#lightbox)
2. In the **Components** pane, uncheck *SaleEvent* so that the only checked fields are **Nodes &gt; Store**, **Nodes &gt; Freezer**, and **Edges &gt; operates**.

    [![Screenshot of filtering the components.](media/tutorial-3-preview-ontology/components.png)](media/tutorial-3-preview-ontology/components.png#lightbox)
3. Select **Run query** and verify that the instance graph shows two freezers connected to the *Paris* store.

    [![Screenshot of the freezers that are connected to the filtered store.](media/tutorial-3-preview-ontology/store-freezers.png)](media/tutorial-3-preview-ontology/store-freezers.png#lightbox)
4. Select **Clear query** to clear the query results, and use the **Remove filter** options to remove the store filter.

    [![Screenshot of clearing the query and filter.](media/tutorial-3-preview-ontology/clear-query.png)](media/tutorial-3-preview-ontology/clear-query.png#lightbox)

Next, craft this query: *Show all stores that have made a sale with a revenue greater than 150.*

1. Select **Add a node** and add a node for *SaleEvent*.

    ![Screenshot of adding nodes to a new query.](media/tutorial-3-preview-ontology/add-node.png)
2. In the **Components** pane, check the boxes next to **Nodes &gt; Store** and **Edges &gt; from** to add them to the graph.
3. From the query builder ribbon, select **Add filter &gt; SaleEvent &gt; RevenueUSD**. Set the filter for `RevenueUSD > 150`.

    ![Screenshot of filtering by sale revenue.](media/tutorial-3-preview-ontology/add-filter-sale.png)
4. Select **Run query** and verify that the instance graph shows two stores that meet the filter for their connected sale events. You can also select the nodes in the graph to get details of the specific sale events.

    [![Screenshot of the stores that meet the filter for their connected sale events.](media/tutorial-3-preview-ontology/sale-event-stores.png)](media/tutorial-3-preview-ontology/sale-event-stores.png#lightbox)

This process allows you to inspect the paths that connect operational issues (like rising freezer temperature at certain stores) to business outcomes (sales).