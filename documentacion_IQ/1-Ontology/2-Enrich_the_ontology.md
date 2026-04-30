---
layout: Conceptual
title: 'Tutorial part 2: Enrich the ontology with additional data - Microsoft Fabric | Microsoft Learn'
canonicalUrl: https://learn.microsoft.com/en-us/fabric/iq/ontology/tutorial-2-enrich-ontology
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
description: Enrich the ontology by creating a new entity and binding time series data. Part 2 of the ontology (preview) tutorial.
ms.date: 2025-12-19T00:00:00.0000000Z
ms.topic: tutorial
locale: en-us
document_id: 771066b7-a7f8-aa55-614d-82223ae75048
document_version_independent_id: 771066b7-a7f8-aa55-614d-82223ae75048
updated_at: 2026-04-02T22:10:00.0000000Z
original_content_git_url: https://github.com/MicrosoftDocs/fabric-docs-pr/blob/live/docs/iq/ontology/tutorial-2-enrich-ontology.md
gitcommit: https://github.com/MicrosoftDocs/fabric-docs-pr/blob/1bcec94567e0cdd60f44fdc564c9d66a39f1612a/docs/iq/ontology/tutorial-2-enrich-ontology.md
git_commit_id: 1bcec94567e0cdd60f44fdc564c9d66a39f1612a
site_name: Docs
depot_name: MSDN.fabric-docs
page_type: conceptual
toc_rel: ../toc.json
pdf_url_template: https://learn.microsoft.com/pdfstore/en-us/MSDN.fabric-docs/{branchName}{pdfName}
word_count: 821
asset_id: iq/ontology/tutorial-2-enrich-ontology
moniker_range_name: 
monikers: []
item_type: Content
source_path: docs/iq/ontology/tutorial-2-enrich-ontology.md
cmProducts:
- https://microsoft-devrel.poolparty.biz/DevRelOfferingOntology/e7cd09c2-9e9a-4f0d-b160-c15783f45b1f
spProducts:
- https://microsoft-devrel.poolparty.biz/DevRelOfferingOntology/1d337399-0ca4-4b4c-acef-8df37820e018
platformId: bead43de-0942-7ef8-c5d8-bde867da6703
---

# Tutorial part 2: Enrich the ontology with additional data - Microsoft Fabric | Microsoft Learn

In this tutorial step, you enrich your ontology by adding a new *Freezer* entity type. This entity type adds more domain context and introduces properties for time series data, which reflects live operational information.

Important

This feature is in [preview](../../fundamentals/preview).

First, you create the new entity type and define properties without binding them to specific data. Then, you bind the static data to those properties in a separate step. Later, you add time series data to the entity type by creating new properties and binding time series data to them in a single data binding operation.

Note

For both static and time series data, you can create properties without binding data and bind data later, or create properties and bind data to them in a single step. This article demonstrates both approaches.

After you complete data binding for the freezer entity, you create a new relationship type to represent the connection between a store and its freezers.

## Create Freezer entity type and add properties

Follow these steps to create the *Freezer* entity type and add properties to it. The properties aren't bound to data yet.

1. Select **Add entity type** from the top ribbon. Enter *Freezer* for the name of your entity type and select **Add Entity Type**.
2. In the **Entity type configuration** pane, go to the **Properties** tab. Select **Add properties**.

    ![Screenshot of adding properties to the Freezer entity type.](media/tutorial-2-enrich-ontology/freezer-properties-1.png)
3. Add the following properties and select **Save**.

    | Name | Value type | Property type |
    | --- | --- | --- |
    | `FreezerId` | String | Static |
    | `Model` | String | Static |
    | `minSafeTempC` | Double | Static |
    | `StoreId` | String | Static |

    Note

    Property names must be unique across all entity types.

    Here's what it looks like before saving:

    ![Screenshot of the properties for the Freezer entity type.](media/tutorial-2-enrich-ontology/freezer-properties-2.png)
4. Select **Add entity type key**.

    ![Screenshot of adding an entity type key.](media/tutorial-2-enrich-ontology/freezer-entity-type-key.png)

    Select `FreezerId` as the key value.

## Bind static data to properties

Next, bind static data to the properties you created on the *Freezer* entity type.

1. In the **Entity type configuration** pane, go to the **Bindings** tab. Select **Add data to entity type**.

    ![Screenshot of adding data to Freezer.](media/tutorial-2-enrich-ontology/freezer-binding-1.png)
2. For your data source, select the *OntologyDataLH* lakehouse and the *freezer* table. Select **Next**.
3. Configure a static data binding for the properties.

    1. For **Binding type**, use the default selection of **Static**.
    2. Under **Bind your properties**, the properties you created populate automatically with links to matching columns from the *freezer* table.
    3. Select **Save**.

    [![Screenshot of static data for Freezer.](media/tutorial-2-enrich-ontology/freezer-binding-2.png)](media/tutorial-2-enrich-ontology/freezer-binding-2.png#lightbox)

Now the *Freezer* entity has static data bound to it.

## Bind time series data to additional properties

Next, add time series data on the *Freezer* entity, by creating new properties and binding time series data to them in a single data binding operation.

1. In the **Entity type configuration** pane's **Bindings** tab, select **Add data to entity type**.
2. For your data source, select the *TelemetryDataEH* eventhouse and the *FreezerTelemetry* table. Select **Next**.
3. Configure a time series data binding.

    1. For **Binding type**, keep the default selection of **Timeseries** (time series). For **Source data timestamp column**, select `timestamp`.
    2. Under **Bind your properties &gt; Static**, two source data columns populate that match static properties already defined on the entity. Keep them as they are.

        [![Screenshot of the default static properties.](media/tutorial-2-enrich-ontology/freezer-binding-3-a.png)](media/tutorial-2-enrich-ontology/freezer-binding-3-a.png#lightbox)
    3. Under **Bind your properties &gt; Timeseries** (time series), the time series columns from the *FreezerTelemetry* table populate automatically with matching property names for the *Freezer* entity type. Keep the default selections.
    4. Select **Save**.

    [![Screenshot of time series data for Freezer.](media/tutorial-2-enrich-ontology/freezer-binding-3-b.png)](media/tutorial-2-enrich-ontology/freezer-binding-3-b.png#lightbox)

Now the *Freezer* entity has two data bindings: one with static data from the *freezer* lakehouse table and one with streaming data from the *FreezerTelemetry* eventhouse table.

[![Screenshot of both data bindings for Freezer.](media/tutorial-2-enrich-ontology/freezer-binding-4.png)](media/tutorial-2-enrich-ontology/freezer-binding-4.png#lightbox)

## Add relationship type

Finally, create a new relationship type to represent the connection between a store and its freezers.

### Create Store operates Freezer

1. Select **Add relationship** from the menu ribbon.
2. Enter the following relationship type details and select **Add relationship type**.

    1. **Relationship type name**: *operates*
    2. **Source entity type**: *Store*
    3. **Target entity type**: *Freezer*
3. The **Relationship configuration** pane opens, where you can configure additional information. Enter the following details (some fields become visible based on other selections) and select **Create**.

    1. **Source data**: Select your tutorial workspace, the *OntologyDataLH* lakehouse, and the *freezer* table. This table in the source data can link *Store* and *Freezer* entities together, because it contains identifying information for both entity types. Each row in this table references a store and a freezer by ID.
    2. **Source entity type &gt; Source column**: Select `StoreId`. This setting specifies the column in the relationship source data table (*freezer &gt;*`StoreId`) whose values match the key property defined on the *Store* entity (*dimstore &gt;*`StoreId`). In the tutorial data, the column name is the same in both tables.
    3. **Target entity type &gt; Source column**: Select `FreezerId`. This setting specifies the column in the relationship source data table whose values match the key property defined on the *Freezer* entity. In this case, the relationship data source and the entity data source both use the *freezer* table, so you're selecting the same column.

    Important

    Make sure to select the correct source columns that match the entity type key properties.

    Here's what the relationship configuration looks like:

    ![Screenshot of the Store operates Freezer relationship type.](media/tutorial-2-enrich-ontology/relationship.png)