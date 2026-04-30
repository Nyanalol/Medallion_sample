---
layout: Conceptual
title: 'Tutorial: Load Sample Data for graph in Microsoft Fabric - Microsoft Fabric | Microsoft Learn'
canonicalUrl: https://learn.microsoft.com/en-us/fabric/graph/tutorial-load-data
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
description: Learn how to load the Adventure Works sample data into a lakehouse for use with graph in Microsoft Fabric, including uploading CSV files and verifying data.
ms.topic: tutorial
ms.date: 2026-04-14T00:00:00.0000000Z
ms.reviewer: wangwilliam
ms.search.form: Tutorial - Load sample data
ai-usage: ai-assisted
locale: en-us
document_id: 09a47d40-3168-a4d0-3b72-a96cf4ffc2cc
document_version_independent_id: 09a47d40-3168-a4d0-3b72-a96cf4ffc2cc
updated_at: 2026-04-15T17:02:00.0000000Z
original_content_git_url: https://github.com/MicrosoftDocs/fabric-docs-pr/blob/live/docs/graph/tutorial-load-data.md
gitcommit: https://github.com/MicrosoftDocs/fabric-docs-pr/blob/3eb0d49369b063add32e1e25b888e1837ac7f824/docs/graph/tutorial-load-data.md
git_commit_id: 3eb0d49369b063add32e1e25b888e1837ac7f824
site_name: Docs
depot_name: MSDN.fabric-docs
page_type: conceptual
toc_rel: ../iq/toc.json
pdf_url_template: https://learn.microsoft.com/pdfstore/en-us/MSDN.fabric-docs/{branchName}{pdfName}
word_count: 549
asset_id: graph/tutorial-load-data
moniker_range_name: 
monikers: []
item_type: Content
source_path: docs/graph/tutorial-load-data.md
cmProducts:
- https://microsoft-devrel.poolparty.biz/DevRelOfferingOntology/e7cd09c2-9e9a-4f0d-b160-c15783f45b1f
- https://authoring-docs-microsoft.poolparty.biz/devrel/9bdc1705-9b40-49d6-8377-caa0b71fda66
spProducts:
- https://microsoft-devrel.poolparty.biz/DevRelOfferingOntology/1d337399-0ca4-4b4c-acef-8df37820e018
- https://authoring-docs-microsoft.poolparty.biz/devrel/686ed158-d915-41e9-9760-efa46ba88f6d
platformId: 14eb03ba-32b4-085a-de47-60f79eba7b18
---

# Tutorial: Load Sample Data for graph in Microsoft Fabric - Microsoft Fabric | Microsoft Learn

Note

This feature is currently in public preview. This preview is provided without a service-level agreement, and isn't recommended for production workloads. Certain features might not be supported or might have constrained capabilities. For more information, see [Supplemental Terms of Use for Microsoft Azure Previews](https://azure.microsoft.com/support/legal/preview-supplemental-terms/).

In this tutorial step, you download the Adventure Works sample data from GitHub and load it into a lakehouse. If you already have a lakehouse with data (for example, from your own organization), you can skip this step.

The dataset contains tables in Parquet format. The tables represent various entities in the fictional bicycle manufacturing company, such as customers, products, orders, and vendors. In later tutorial steps, you use this data to build and query a graph that reveals how these entities connect. For example, you can discover which customers purchased which products, or which vendors supply specific product categories.

## Download the sample data

1. Go to the [graph in Microsoft Fabric GQL example datasets](https://github.com/microsoft/fabric-samples/tree/main/docs-samples/graph) on GitHub.
2. Select the *adventureworks\_docs\_sample.zip* file and download it to your local machine.

    Tip

    To download a file from GitHub, select the file, and then select the **Download raw file** icon.
3. Extract the downloaded *adventureworks\_docs\_sample.zip* file to a folder on your local machine.

    Tip

    In File Explorer, right-click the zip file and select **Extract All**. Then choose a destination folder such as `c:\Downloads\AdventureWorks_Data`.

## Create a lakehouse

If you don't already have a lakehouse, create one to store the sample data:

1. In [Microsoft Fabric](https://fabric.microsoft.com/), select the workspace where you want to create the lakehouse.
2. Select **+ New item**.
3. Select **Store data** &gt; **Lakehouse**.
4. Enter a name for your lakehouse (for example, "AdventureWorksLakehouse"), clear the **Lakehouse schemas** option, and then select **Create**.

    Important

    Make sure you clear the lakehouse schema option. Graph doesn't currently support lakehouses with [lakehouse schemas enabled](../data-engineering/lakehouse-schemas).

For more detailed instructions, see [Create a lakehouse with OneLake](../onelake/create-lakehouse-onelake).

## Upload the sample data to the lakehouse

1. In your lakehouse Explorer, hover over **Files**. Select the triple ellipsis (...) that appears, and then select **Upload** &gt; **Upload folder**.

    Note

    You can't upload a folder by using **Upload files**.

    [![Screenshot showing Lakehouse Explorer interface with Upload-&gt;Upload folder selected after hovering over File's triple ellipsis (not shown after Upload is selected).](media/tutorial/upload-lakehouse-data.png)](media/tutorial/upload-lakehouse-data.png#lightbox)
2. In the **Upload folder** dialog, browse to where you extracted the folder and select it. Then select **Upload**. A pop-up window might appear asking you to confirm the number of files to upload: select **Upload** in that pop-up, and then select **Upload** in the **Upload folder** dialog.

    Your lakehouse should now contain the uploaded *AdventureWorks\_Data* folder with the data files.

    [![Screenshot showing the uploaded AdventureWorks_Data folder in Microsoft Fabric.](media/tutorial/lakehouse-with-files.png)](media/tutorial/lakehouse-with-files.png#lightbox)

## Load the data into tables

After you upload the files, load them into tables. Tables are the source data from a lakehouse that you use to create node types and edge types in your graph model.

For each subfolder in the uploaded *AdventureWorks\_Data* folder, follow these steps to load the data into tables:

1. Drag and drop the subfolder (for example, *adventureworks\_customers*) from the **Files** section to the **Tables** section in the lakehouse Explorer.
2. In the **Load folder to new table** dialog, enter a table name (the default is the folder name), set the file type to Parquet, and then select **Load**.

After you load all the tables, your Lakehouse Explorer shows eight tables. The lakehouse in your workspace is now ready with the Adventure Works sample data. In the next step, you create a graph model that uses this data.

[![Screenshot showing the loaded tables in the lakehouse Explorer.](media/tutorial/lakehouse-with-tables.png)](media/tutorial/lakehouse-with-tables.png#lightbox)