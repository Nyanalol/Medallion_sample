Table of contents 
			
			
				
				Exit editor mode
			
		

	

			
				
					
		
			
				
		
			
				
					
				
			
			

		

		
	 
		
			
		
			
				
			
		
		
			
				
			
			Ask Learn
		
		
			
				
			
			Ask Learn
		
	 

			
				
					
						
					
				
				
					
		
			
				
			
			Reading mode
		
	 
		
			
			Table of contents
		
	 
		
			
				
			
			Read in English
		
	
					
		
			
				
			
			Add
		
	 
		
			
				
			
			Add to plan
		
	 
					
		
			
				
			
			Edit
		
	  
		
		
				
					
						
						
						
					
					Copy Markdown
				
		   
				
					
						
					
					Print
				
		  
	
				

			
		

	
			

		

	  
		
		
			
			
				
					
						
						Note
					

					
						Access to this page requires authorization. You can try signing in or changing directories.
					

					
						Access to this page requires authorization. You can try changing directories.
					

				

			

		

	
					
# GQL schema example: Social network

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					
Note

This feature is currently in public preview. This preview is provided without a service-level agreement, and isn't recommended for production workloads. Certain features might not be supported or might have constrained capabilities. For more information, see Supplemental Terms of Use for Microsoft Azure Previews.

This article provides the complete technical specification for the social network graph type used throughout the GQL documentation. This schema demonstrates many common features of complex graphs and serves as the foundation for all query examples in the GQL language documentation.

Note

The social network example is derived from the LDBC SNB (LDBC Social Network Benchmark) published by the GDC (Graph Data Council).

For more information, see the article "The LDBC Social Network Benchmark".
For information on how to obtain a copy of the derived dataset, see social network example graph dataset.

 { id :: UINT64 NOT NULL, name :: STRING, url :: STRING }),

    TagClass [
      fillcolor=orange, 
      label=name :: STRINGurl :: STRING}>];
    

    //// (:TagClass)-[:isSubclassOf]->(:TagClass),  
 
    TagClass -> TagClass [xlabel=:isSubclassOf>];
 

    //// (:Tag => { id :: UINT64 NOT NULL, name :: STRING, url :: STRING }),

    Tag [
      fillcolor=yellow, 
      label=name :: STRINGurl :: STRING}>];

    //// (:Tag)-[:hasType]->(:TagClass),

    Tag -> TagClass [label=:hasType>];

    //// ABSTRACT 
    //// (:Place => { id :: UINT64 NOT NULL, name :: STRING, url :: STRING }),

    Place [
      fillcolor=lightblue, 
      label=name :: STRINGurl :: STRING}>];

    
    //// (:City => :Place),
    //// (:Country => :Place),
    //// (:Continent => :Place),

    City [fillcolor=lightblue, label=];
    Country [fillcolor=lightblue, label=];
    Continent [fillcolor=lightblue, label=];

    City -> Place[style=dashed fontcolor=grey arrowhead=empty label==>>];
    Country -> Place[style=dashed color=grey fontcolor=grey arrowhead=empty label==>>];
    Continent -> Place[style=dashed color=grey fontcolor=grey arrowhead=empty label==>>];

  
    ///// (:City)-[:isPartOf]->(:Country),
    ///// (:Country)-[:isPartOf]->(:Continent),

    City -> Country [label=-[:isPartOf]->>];
    Country -> Continent [label=-[:isPartOf]->>];

    //// ABSTRACT
    //// (:Organization => { id :: UINT64 NOT NULL, name :: STRING, url :: STRING }),

    Organization [
      fillcolor=lightgreen, 
      label=name :: STRINGurl :: STRING}>]

    //// (:University => :Organization),
    //// (:Company => :Organization),

    University [fillcolor=lightgreen, label=];
    Company [fillcolor=lightgreen, label=];

    University -> Organization[style=dashed fontcolor=grey arrowhead=empty label==>>];
    Company -> Organization[style=dashed fontcolor=grey arrowhead=empty label==>>];

    //// (:Person => {
    ////   id :: UINT64 NOT NULL,
    ////   creationDate :: ZONED DATETIME,
    ////   firstName :: STRING,
    ////   lastName :: STRING,
    ////   gender :: STRING,
    ////   birthday :: UINT64,
    ////   browserUsed :: STRING,
    ////   locationIP :: STRING
    //// }),

    Person [
      fillcolor=pink, 
      label=creationDate :: ZONED DATETIMEfirstName :: STRINGlastName :: STRINGgender :: STRINGbirthday :: UINT64email :: LIST<STRING NOT NULL>speaks :: LIST<STRING NOT NULL>browserUsed :: STRINGlocationIP :: STRING}>];

    //// (:Person)-[:hasInterest]->(:Tag),
    //// (:Person)-[:studyAt { classYear :: UINT64 }]->(:University),
    //// (:Person)-[:workAt { workFrom :: UINT64 }]->(:Company),
    //// (:Person)-[:knows { creationDate :: ZONED DATETIME }]->(:Person),

    Person -> Tag [label=-[:hasInterest]->>];
    Person -> University [label=-[:studyAt {classYear :: UINT64}]->>];
    Person -> Company [label=-[:workAt {workFrom :: UINT64}]->>];
    Person -> Person [label=-[:knows {creationDate :: ZONED DATETIME}]->>];

    //// (:Forum => {
    ////   id :: UINT64 NOT NULL,
    ////   creationDate :: ZONED DATETIME,
    ////   title :: STRING
    //// }),

    Forum [
      fillcolor=lightcyan, 
      label=creationDate :: ZONED DATETIMEtitle :: STRING}>];

    //// (:Forum)-[:hasMember { creationDate :: ZONED DATETIME, joinDate :: UINT64 }]->(:Person),
    //// (:Forum)-[:hasModerator]->(:Person),

    Forum -> Person [label=-[:hasMember
{creationDate :: ZONED DATETIME, joinDate :: ZONED DATETIME]->>];
    Forum -> Person [label=-[:hasModerator]->>];

    //// ABSTRACT 
    //// (:Message => {
    ////    id :: UINT64 NOT NULL,
    ////    creationDate :: ZONED DATETIME,
    ////    browserUsed :: STRING,
    ////    locationIP :: STRING,
    ////    content :: STRING,
    ////    length :: UINT64
    //// }),

    Message [
      fillcolor=lightyellow, 
      label=creationDate :: ZONED DATETIMEbrowserUser :: STRINGlocationIP :: STRINGcontent :: STRINGlength :: INT}>];

    //// (:Post => :Message += {
    ////   language :: STRING,
    ////   imageFile :: STRING
    //// }),

    Post [fillcolor=lightyellow, label=language :: STRINGimageFile :: STRING
    }>];

    Post -> Message[style=dashed fontcolor=grey arrowhead=empty label==>>];

    ////  (:Comment => :Message)

    Comment [fillcolor=lightyellow, label=];

    Comment -> Message[style=dashed fontcolor=grey arrowhead=empty label==>>];

    //// (:Forum)-[:hasTag]->(:Tag),  
    //// ((:Tag)
    
    Forum -> Tag [label=-[:hasTag]->>];
    Message -> Tag [label=-[:hasTag]->>, style="bold", ltail="cluster_messages"];

 
    ///// (:Forum)-[:containerOf]->(:Post),

    Forum -> Post [label=-[:containerOf]->>];

    //// (:Comment)-[:replyOf]->( Message[label=-[:replyOf]->>, lhead="cluser_messages"];

    ////  (:Person)-[:likes { creationDate :: ZONED DATETIME }]->( Message [label=-[:likes
{creationDate :: ZONED DATETIME}]->>, style="bold", lhead="cluster_messages"];

    //// ((:Person),
    Message -> Person [label=-[:hasCreator]->>, style="bold", ltail="messages_cluster"];
    

    //// (:University)-[:isLocatedIn]->(:City),
    //// (:Company)-[:isLocatedIn]->(:Country),
    //// (:Person)-[:isLocatedIn]->(:City),
    //// ((:Country),

    University -> City [label=-[:isLocatedIn]->>];
    Company -> Country [label=-[:isLocatedIn]->>];
    Person -> City [label=-[:isLocatedIn]->>];
    Message -> Country [label=-[:isLocatedIn]->>, style="bold", ltail="cluster_messages"];

    //// Subgraphs for better organization

    subgraph cluster_places {
        label=Places>;
        style=filled;
        color=lightblue;
        fillcolor=aliceblue;
        Place; City; Country; Continent;
    }
    
    subgraph cluster_organizations {
        label=Organizations>;
        style=filled;
        color=lightgreen;
        fillcolor=honeydew;
        Organization; University; Company;
    }
    
    subgraph cluster_messages {
        label=Messages>;
        style=filled;
        color=yellow;
        fillcolor=lightyellow;
        Message; Post; Comment;
    }
    
    subgraph cluster_tags {
        label=Tags>;
        style=filled;
        color=orange;
        fillcolor=papayawhip;
        TagClass; Tag;
    }
}
-->

## Domain specification

The social network domain models a comprehensive social platform with the following entities:

- **People** with demographic and behavioral properties

- **Organizations** including educational institutions (universities) and employers (companies)

- **Geographic hierarchy** from cities through countries/regions to continents

- **Content system** with forums, posts, and threaded comments

- **Taxonomy system** with tags and tag classifications

- **Social and professional relationships** between people and organizations

For a more detailed introduction to the entities of this domain, see GQL language guide.

## Schema features demonstrated

This graph type showcases advanced GQL capabilities:

- **Node type inheritance** using abstract base types (Message, Organization, Place)

- **Multiple inheritance patterns** with shared property definitions

- **Edge type families** where the same relationship label connects different node type combinations

- **Comprehensive constraint system** ensuring data integrity through key constraints

- **Mixed relationship patterns** including hierarchical containment, social connections, and content interactions

## Complete schema definition

The following graph type provides a complete schema definition in GQL syntax:

`
(:TagClass => { id :: UINT64 NOT NULL, name :: STRING, url :: STRING }),

CONSTRAINT tag_class_pk
FOR (n:TagClass) REQUIRE (n.id) IS KEY,

(:TagClass)-[:isSubclassOf]->(:TagClass),

(:Tag => { id :: UINT64 NOT NULL, name :: STRING, url :: STRING }),

(:Tag)-[:hasType]->(:TagClass),

CONSTRAINT tag_pk
FOR (n:Tag) REQUIRE (n.id) IS KEY,

ABSTRACT
(:Place => { id :: UINT64 NOT NULL, name :: STRING, url :: STRING }),

(:City => :Place),
(:Country => :Place),
(:Continent => :Place),

CONSTRAINT place_pk
FOR (n:Place) REQUIRE (n.id) IS KEY,

(:City)-[:isPartOf]->(:Country),
(:Country)-[:isPartOf]->(:Continent),

ABSTRACT
(:Organization => { id :: UINT64 NOT NULL, name :: STRING, url :: STRING }),

(:University => :Organization),
(:Company => :Organization),

CONSTRAINT organization_pk
FOR (n:Organization) REQUIRE (n.id) IS KEY,

(:University)-[:isLocatedIn]->(:City),
(:Company)-[:isLocatedIn]->(:Country),

(:Person => {
    id :: UINT64 NOT NULL,
    creationDate :: ZONED DATETIME,
    firstName :: STRING,
    lastName :: STRING,
    gender :: STRING,
    birthday :: UINT64,
    browserUsed :: STRING,
    locationIP :: STRING
}),

CONSTRAINT person_pk
FOR (n:Person) REQUIRE (n.id) IS KEY,

(:Person)-[:hasInterest]->(:Tag),
(:Person)-[:isLocatedIn]->(:City),
(:Person)-[:studyAt { classYear :: UINT64 }]->(:University),
(:Person)-[:workAt { workFrom :: UINT64 }]->(:Company),
(:Person)-[:knows { creationDate :: ZONED DATETIME }]->(:Person),

(:Forum => {
    id :: UINT64 NOT NULL,
    creationDate :: ZONED DATETIME,
    title :: STRING
}),

CONSTRAINT forum_pk
FOR (n:Forum) REQUIRE (n.id) IS KEY,

(:Forum)-[:hasTag]->(:Tag),
(:Forum)-[:hasMember { creationDate :: ZONED DATETIME, joinDate :: UINT64 }]->(:Person),
(:Forum)-[:hasModerator]->(:Person),

ABSTRACT (:Message => {
    id :: UINT64 NOT NULL,
    creationDate :: ZONED DATETIME,
    browserUsed :: STRING,
    locationIP :: STRING,
    content :: STRING,
    length :: UINT64
}),

CONSTRAINT message_pk
FOR (n:Message) REQUIRE (n.id) IS KEY,

(:Post => :Message += {
    language :: STRING,
    imageFile :: STRING
}),

(:Person)-[:likes { creationDate :: ZONED DATETIME }]->(:Post),
(:Post)-[:hasCreator]->(:Person),
(:Post)-[:isLocatedIn]->(:Country),
(:Forum)-[:containerOf]->(:Post),

(:Comment => :Message),

(:Person)-[:likes { creationDate :: ZONED DATETIME }]->(:Comment),
(:Comment)-[:hasCreator]->(:Person),
(:Comment)-[:isLocatedIn]->(:Country),

(:Comment)-[:replyOf]->(<:Message),
(:Person)-[:likes { creationDate :: ZONED DATETIME }]->(<:Message),
(<:Message)-[:hasCreator]->(:Person),
(<:Message)-[:isLocatedIn]->(:Country),
(<:Message)-[:hasTag]->(:Tag)

`

## Schema analysis

### Node type hierarchy

The schema defines three inheritance hierarchies:

**Geographic hierarchy:**

- Place (abstract) â City, Country, Continent

**Organizational hierarchy:**

- Organization (abstract) â University, Company

**Content hierarchy:**

- Message (abstract) â Post, Comment

### Edge type families

Several edge labels form type families connecting different node combinations:

**Location relationships (isPartOf):**

- Cities belong to countries/regions: (:City)-[:isPartOf]->(:Country)

- Countries/regions belong to continents: (:Country)-[:isPartOf]->(:Continent)

**Content interactions (likes):**

- People like posts: (:Person)-[:likes]->(:Post)

- People like comments: (:Person)-[:likes]->(:Comment)

- People like messages: (:Person)-[:likes]->(<:Message)

**Geographic location (isLocatedIn):**

- People live in cities: (:Person)-[:isLocatedIn]->(:City)

- Universities located in cities: (:University)-[:isLocatedIn]->(:City)

- Companies located in countries/regions: (:Company)-[:isLocatedIn]->(:Country)

- Posts located in countries/regions: (:Post)-[:isLocatedIn]->(:Country)

- Comments located in countries/regions: (:Comment)-[:isLocatedIn]->(:Country)

### Key constraints

Every node type has a corresponding key constraint ensuring unique identification by id property:

- tag_class_pk, tag_pk, place_pk, organization_pk, person_pk, forum_pk, message_pk

## Related content

- GQL language guide

- GQL graph types

- Try Microsoft Fabric for free

					
		

	 
		

		

	
					
		
		
			
			
## Feedback

			
				
					Was this page helpful?
				

				
					
						
							
						
						Yes
					
					
						
							
						
						No
					
					
						
							
								
							
							No
						
						
							
								Need help with this topic?
							

							
								Want to try using Ask Learn to clarify or guide you through this topic?
							

							
		
			
		
			
				
			
		
		
			
				
			
			Ask Learn
		
		
			
				
			
			Ask Learn
		
	

			
				
					
				
				 Suggest a fix? 
			
		

	
						

					
				

			

		
		
	
				

				
		
			
			
				Additional resources
			
			 
		
	 
		
	
		

	 
		
			
			
				
			
				Last updated on 
		2026-03-12