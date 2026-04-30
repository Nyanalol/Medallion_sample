---
layout: Conceptual
title: 'Tutorial part 1: Create an ontology - Microsoft Fabric | Microsoft Learn'
canonicalUrl: https://learn.microsoft.com/en-us/fabric/iq/ontology/tutorial-1-create-ontology
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
description: Create an ontology (preview) item with data from a semantic model or OneLake. Part 1 of the ontology (preview) tutorial.
ms.date: 2025-12-19T00:00:00.0000000Z
ms.topic: tutorial
zone_pivot_group_filename: iq/ontology/zone-pivot-groups.json
zone_pivot_groups: create-ontology-scenario
locale: en-us
document_id: e2115e89-ad98-f51d-2cbb-907a07a55dc9
document_version_independent_id: e2115e89-ad98-f51d-2cbb-907a07a55dc9
updated_at: 2026-04-08T05:02:00.0000000Z
original_content_git_url: https://github.com/MicrosoftDocs/fabric-docs-pr/blob/live/docs/iq/ontology/tutorial-1-create-ontology.md
gitcommit: https://github.com/MicrosoftDocs/fabric-docs-pr/blob/9d1d3431cbe7de5801874a54b223499faaf27e8d/docs/iq/ontology/tutorial-1-create-ontology.md
git_commit_id: 9d1d3431cbe7de5801874a54b223499faaf27e8d
site_name: Docs
depot_name: MSDN.fabric-docs
page_type: conceptual
toc_rel: ../toc.json
pdf_url_template: https://learn.microsoft.com/pdfstore/en-us/MSDN.fabric-docs/{branchName}{pdfName}
word_count: 2127
asset_id: iq/ontology/tutorial-1-create-ontology
moniker_range_name: 
monikers: []
item_type: Content
source_path: docs/iq/ontology/tutorial-1-create-ontology.md
cmProducts:
- https://authoring-docs-microsoft.poolparty.biz/devrel/d3197845-b4ce-44c6-a237-cd4be160e76c
- https://microsoft-devrel.poolparty.biz/DevRelOfferingOntology/e7cd09c2-9e9a-4f0d-b160-c15783f45b1f
- https://authoring-docs-microsoft.poolparty.biz/devrel/97159432-14a9-4307-a469-d2f2c75f0e33
spProducts:
- https://authoring-docs-microsoft.poolparty.biz/devrel/aea905fb-0a9d-4d46-b30f-e9cbaf772d1b
- https://microsoft-devrel.poolparty.biz/DevRelOfferingOntology/1d337399-0ca4-4b4c-acef-8df37820e018
- https://authoring-docs-microsoft.poolparty.biz/devrel/50565c62-5f6b-4687-be38-323113c72c2e
platformId: 463edbf7-be1b-08d6-cd3e-ed4076768735
---

# Tutorial part 1: Create an ontology - Microsoft Fabric | Microsoft Learn

In this step of the tutorial, you generate a new ontology (preview) item that represents the Lakeshore Retail scenario.

Important

This feature is in [preview](../../fundamentals/preview).

## Choose ontology creation method

This tutorial contains two options for setting up the ontology (preview) item. Choose from one of the following methods:

- [**Generate from semantic model**](?pivots=semantic-model): With these instructions, you use an existing semantic model to automatically generate an ontology that you can build upon and extend. Choose this option to see how to work with ontology when you already have a well-structured Power BI semantic model that represents your business domain.
- [**Build directly from OneLake**](?pivots=onelake): With these instructions, you create the ontology manually by binding properties directly from OneLake. Choose this option to see how to build an ontology when you don't have a semantic model, or want full control over ontology design from the start.

Choose your preferred scenario by using the links above (will reload the page) or the selector at the beginning of the article.

::: zone pivot="semantic-model"

## Generating an ontology from a semantic model

A [semantic model](../../data-warehouse/semantic-models) in Fabric is a logical description of a domain, like a business. Semantic models hold information about your data and the relationships among that data. You can create semantic models from lakehouse tables. When your data is represented in a semantic model, you can generate an ontology directly from that semantic model. For more information, see [Generating an ontology (preview) from a semantic model](concepts-generate).

In this tutorial step, you generate an ontology from the sample semantic model that you set up in the [previous step](tutorial-0-introduction?pivots=semantic-model#prepare-the-power-bi-semantic-model). Then, you verify and complete the ontology.

## Generate ontology

1. Go to the *RetailSalesModel* semantic model in Fabric. From the top ribbon, select **Generate Ontology**.

    [![Screenshot of Generate ontology button in the ribbon.](media/tutorial-1-create-ontology/semantic-model/generate-ontology.png)](media/tutorial-1-create-ontology/semantic-model/generate-ontology.png#lightbox)
2. Select your **Workspace** and enter *RetailSalesOntology* for the **Name**. Select **Create**.

    ![Screenshot of Generate ontology details.](media/tutorial-1-create-ontology/semantic-model/generate-ontology-2.png)

    Tip

    Ontology names can include numbers, letters, and underscores. Don't use spaces or dashes.

The ontology (preview) item opens when it's ready.

![Screenshot of new ontology.](media/tutorial-1-create-ontology/semantic-model/ontology-start.png)

Note

If you see an error that Fabric is unable to create the ontology (preview) item, make sure that all the required settings are enabled for your tenant, as described in the [Tutorial prerequisites](tutorial-0-introduction#prerequisites).

Next, review the entity types, data bindings, and relationships that the semantic model generates. In the following sections, you make a few edits to complete the ontology configuration, and verify that generated items are correct.

## Verify entity types

Entity types represent types of objects in a business. The **Entity Types** pane lists all three entity types in the ontology, named after the data tables:

- *factsales*
- *dimstore*
- *dimproducts*

Tip

If you don't see any entities in the ontology, make sure your semantic model is published, the tables in the semantic model are visible (not hidden), and relationships are defined. To revisit the setup steps for the semantic model, see [Prepare the Power BI Semantic Model](tutorial-0-introduction#prepare-the-power-bi-semantic-model).

### Rename entity types

Follow these steps to rename each entity type to a friendlier name.

1. Select the entity type.
2. In the **Entity type configuration** pane, select the edit icon next to the **Entity type name**.

    ![Screenshot of renaming an entity type.](media/tutorial-1-create-ontology/semantic-model/rename-entity-types.png)

    Enter the new name from the following table.

    | Old name | New name |
    | --- | --- |
    | *factsales* | *SaleEvent* |
    | *dimstore* | *Store* |
    | *dimproducts* | *Products*Note: Make sure to use the plural form *Products*, to avoid conflict with the [GQL reserved word](../../graph/gql-reference-reserved-terms#p)`PRODUCT`. |

When you finish renaming all the entity types, they look like this (they might be listed in a different order).

![Screenshot of the renamed entity types.](media/tutorial-1-create-ontology/semantic-model/all-entity-types.png)

## Verify properties

To view the properties of an entity type, select it from the **Entity types** pane. This action opens the **Entity type configuration** pane, where the entity type's properties are listed on the **Properties** tab.

Verify that each entity type has the properties described in the following table.

| Entity type | Key | Properties |
| --- | --- | --- |
| *SaleEvent* |  | `ProductId`, `RevenueUSD`, `SaleDate`, `SaleId`, `StoreId`, `Units` |
| *Store* | `StoreId` | `City`, `Region`, `Latitude`, `Longitude`, `StoreId`, `StoreName` |
| *Products* | `ProductId` | `Brand`, `Category`, `ProductId`, `ProductName`, `Subcategory` |

Here's an example of what entity type properties look like.

[![Screenshot of the Products entity type and its properties.](media/tutorial-1-create-ontology/semantic-model/verify-properties.png)](media/tutorial-1-create-ontology/semantic-model/verify-properties.png#lightbox)

### Add SaleEvent key

Each entity type has an entity type key that represents a unique identifier for each record of ingested data. You can select string and integer columns from your source data as the entity type key. Together, the columns you select uniquely identify a record.

The *SaleEvent* entity type doesn't have a key that was imported from the source data, so you need to add it manually.

1. Open the *SaleEvent* entity type.
2. In the **Entity type configuration** pane, select **Add entity type key**.

    ![Screenshot of adding entity type key.](media/tutorial-1-create-ontology/semantic-model/add-key.png)
3. Select `SaleId`.
4. When you save the key, it looks like this:

    ![Screenshot of the sale event key.](media/tutorial-1-create-ontology/semantic-model/sale-event-key.png)

## Verify bindings

To view data bindings for an entity type, look in the **Entity type configuration** pane and switch to the **Bindings** tab. Data bindings connect an entity type to a data source so that you can create instances of the entity type and populate them with data.

Verify that each entity type is successfully bound to the data sources described in the following table.

| Entity type | Source table |
| --- | --- |
| *SaleEvent* | *factsales* |
| *Store* | *dimstore* |
| *Products* | *dimproducts* |

Here's an example of what the bindings look like.

![Screenshot of the Sale Event entity type and its data bindings.](media/tutorial-1-create-ontology/semantic-model/verify-bindings.png)

## Verify and configure relationship types

Finally, verify the relationship types between entity types. Relationship types represent how entity types are related to each other in a business context. The relationship types that the import process brings in from the semantic model are defined, but not fully configured and bound to data.

Select the *SaleEvent* entity type to display it and its relationship types on the configuration canvas.

[![Screenshot of the sale event entity type and its relationships.](media/tutorial-1-create-ontology/semantic-model/sale-event-relationships.png)](media/tutorial-1-create-ontology/semantic-model/sale-event-relationships.png#lightbox)

Select each of the relationship types and update its details to match the following table.

| Old name | New name | Source data table | Source entity type | Target entity type |
| --- | --- | --- | --- | --- |
| *factsales\_has\_dimproducts* | *sold* | Tutorial workspace &gt; *OntologyDataLH* &gt; *factsales*This table in the source data can link *Products* and *SaleEvent* entities together, because it contains identifying information for both entity types. Each row in this table references a product and a sale event by ID. | *SaleEvent*For **Source column**, select `SaleId`. This setting specifies the column in the relationship source data table whose values match the key property defined on the *SaleEvent* entity. In this case, the relationship data source and the entity data source both use the *factsales* table, so you're selecting the same column. | *Products*For **Source column**, select `ProductId`. This setting specifies the column in the relationship source data table (*factsales &gt;*`ProductId`) whose values match the key property defined on the *Products* entity (*dimproducts &gt;*`ProductId`). In the tutorial data, the column name is the same in both tables. |
| *factsales\_has\_dimstore* | *from* | Tutorial workspace &gt; *OntologyDataLH* &gt; *factsales*This table in the source data can link *Store* and *SaleEvent* entities together, because it contains identifying information for both entity types. Each row in this table references a store and a sale event by ID. | *SaleEvent*For **Source column**, select `SaleId`. This setting specifies the column in the relationship source data table whose values match the key property defined on the *SaleEvent* entity. In this case, the relationship data source and the entity data source both use the *factsales* table, so you're selecting the same column. | *Store*For **Source column**, select `StoreId`. This setting specifies the column in the relationship source data table (*factsales &gt;*`StoreId`) whose values match the key property defined on the *Store* entity (*dimstore &gt;*`StoreId`). In the tutorial data, the column name is the same in both tables. |

Here's an example of what an updated relationship type looks like.

[![Screenshot of a relationship on SaleEvent.](media/tutorial-1-create-ontology/semantic-model/verify-relationship-types.png)](media/tutorial-1-create-ontology/semantic-model/verify-relationship-types.png#lightbox)

::: zone-end

::: zone pivot="onelake"

## Building an ontology from OneLake

When your data is stored in OneLake, you can build an ontology from the OneLake data tables.

The manual process involves these steps:

- Create an **ontology item**
- Create **entity types**
- Create **data bindings**for the entity types
    - Select **entity type keys**
- Create **relationship types** between entity types, and bind them to source data

In this tutorial step, you build an ontology from the sample OneLake data that you set up in the [previous step](tutorial-0-introduction).

## Create ontology (preview) item

1. In your Fabric workspace, select **+ New item**. Search for and select the **Ontology (preview)** item.

    [![Screenshot of the ontology (preview) item.](media/tutorial-1-create-ontology/onelake/new-ontology.png)](media/tutorial-1-create-ontology/onelake/new-ontology.png#lightbox)
2. Enter *RetailSalesOntology* for the **Name** of your ontology and select **Create**.

    Tip

    Ontology names can include numbers, letters, and underscores. Don't use spaces or dashes.

The ontology opens when it's ready.

![Screenshot of empty ontology.](media/tutorial-1-create-ontology/onelake/ontology-blank.png)

Note

If you see an error that Fabric is unable to create the ontology (preview) item, make sure that all the required settings are enabled for your tenant, as described in the [Tutorial prerequisites](tutorial-0-introduction#prerequisites).

Next, create entity types, data bindings, and relationships based on data from your lakehouse tables.

## Create entity types and data bindings

First, create entity types. Entity types represent types of objects in a business. This step has three entity types: *Store*, *Products*, and *SaleEvent*. After you create the entity types, create their properties by binding source data columns from the *OntologyDataLH* lakehouse tables.

### Add first entity type (Store)

1. From the top ribbon or the center of the configuration canvas, select **Add entity type**.

    ![Screenshot of adding entity type.](media/tutorial-1-create-ontology/onelake/add-entity-type.png)
2. Enter *Store* for the name of your entity type and select **Add Entity Type**.
3. The *Store* entity type is added to the configuration canvas, and the **Entity type configuration** pane is visible.

    ![Screenshot of the Entity type configuration pane.](media/tutorial-1-create-ontology/onelake/entity-type-configuration.png)
4. To create entities from existing source data, switch to the **Bindings** tab. Select **Add data to entity type**.

    ![Screenshot of the Bindings tab.](media/tutorial-1-create-ontology/onelake/binding-1.png)
5. Next, choose your data source.

    1. Select the *OntologyDataLH* lakehouse and select **Connect**.
    2. Select the *dimstore* table and select **Next**.

    ![Screenshot of the data source selection.](media/tutorial-1-create-ontology/onelake/binding-2.png)
6. Configure a static data binding for the following properties.

    1. For **Binding type**, don't change the default selection of **Static**.
    2. Under **Bind your properties**, the columns from the *dimstore* table populate automatically. The **Source column** side lists their names in the source data, and the **Property name** side lists their corresponding property names on the *Store* entity type within ontology. Don't change the default property names, which match the source column names.
    3. Select **Save**.

    [![Screenshot of saving the data binding.](media/tutorial-1-create-ontology/onelake/binding-3.png)](media/tutorial-1-create-ontology/onelake/binding-3.png#lightbox)
7. Back in the **Entity type configuration** pane, the data binding is visible. Next, select **Add entity type key**.

    ![Screenshot of adding entity type key.](media/tutorial-1-create-ontology/onelake/entity-type-key-1.png)
8. Select **StoreId** as the key property and select **Save**.

    ![Screenshot of selecting the entity type key.](media/tutorial-1-create-ontology/onelake/entity-type-key-2.png)

Now the *Store* entity type is ready. Continue to the next section to create the remaining entity types.

### Add other entity types (Products, SaleEvent)

Follow the same steps that you used for the *Store* entity type to create the entity types described in the following table. Each entity has a static data binding with the default columns from its source table.

| Entity type name | Source table in*OntologyDataLH* | Entity type key |
| --- | --- | --- |
| *Products*Note: Use the plural form *Products* to avoid conflict with the [GQL reserved word](../../graph/gql-reference-reserved-terms#p)`PRODUCT`. | *dimproducts* | `ProductId` |
| *SaleEvent* | *factsales* | `SaleId` |

When you're done, you see these entity types listed in the **Entity Types** pane.

![Screenshot of the scenario entity types.](media/tutorial-1-create-ontology/onelake/all-entity-types.png)

## Create relationship types

Next, create relationship types between the entity types to represent contextual connections in your data.

### SaleEvent from Store

1. Select **Add relationship** from the menu ribbon.

    ![Screenshot of adding a relationship type.](media/tutorial-1-create-ontology/onelake/relationship-type-1.png)
2. Enter the following relationship type details and select **Add relationship type**.

    1. **Relationship type name**: *from*
    2. **Source entity type**: *SaleEvent*
    3. **Target entity type**: *Store*

    ![Screenshot of entering relationship type details.](media/tutorial-1-create-ontology/onelake/relationship-type-2.png)
3. The **Relationship configuration** pane opens, where you can configure additional information. Enter the following details (some fields become visible based on other selections) and select **Create**.

    1. **Source data**: Select your tutorial workspace, the *OntologyDataLH* lakehouse, and the *factsales* table. This table in the source data can link *Store* and *SaleEvent* entities together, because it contains identifying information for both entity types. Each row in this table references a store and a sale event by ID.
    2. **Source entity type &gt; Source column**: Select `SaleId`. This setting specifies the column in the relationship source data table whose values match the key property defined on the *SaleEvent* entity. In this case, the relationship data source and the entity data source both use the *factsales* table, so you're selecting the same column.
    3. **Target entity type &gt; Source column**: Select `StoreId`. This setting specifies the column in the relationship source data table (*factsales &gt;*`StoreId`) whose values match the key property defined on the *Store* entity (*dimstore &gt;*`StoreId`). In the tutorial data, the column name is the same in both tables.

    [![Screenshot of the relationship type configuration.](media/tutorial-1-create-ontology/onelake/relationship-type-3.png)](media/tutorial-1-create-ontology/onelake/relationship-type-3.png#lightbox)

Now the first relationship is created, and bound to data in your source table. Continue to the next section to create another relationship type.

### SaleEvent sold Products

Follow the same steps that you used for the first relationship type to create the relationship type described in the following table.

| Relationship type name | Source data table | Source entity type | Target entity type |
| --- | --- | --- | --- |
| *sold* | Tutorial workspace &gt; *OntologyDataLH &gt; factsales* | *SaleEvent*For **Source column**, select `SaleId`. | *Products*For **Source column**, select `ProductId`. |

When you're done, you have two relationships from the *SaleEvent* entity type. To see the relationships, select the **SaleEvent** entity type from the **Entity Types** pane. You see its relationships on the configuration canvas.

[![Screenshot of the scenario relationship types.](media/tutorial-1-create-ontology/onelake/all-relationship-types.png)](media/tutorial-1-create-ontology/onelake/all-relationship-types.png#lightbox)

::: zone-end