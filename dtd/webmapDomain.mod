<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!--  MODULE:    DITA webmap  Domain                               -->
<!--  VERSION:   1.2                                               -->
<!--  DATE:      February 2013                                     -->
<!--                                                               -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->


<!-- ============================================================= -->
<!-- SYSTEM:     Darwin Information Typing Architecture (DITA)     -->
<!--                                                               -->
<!-- PURPOSE:    Define elements and specialization attributes     -->
<!--             for use in maps that represent web-focused      -->
<!--             weblications.                                     -->
<!--                                                               -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                   ARCHITECTURE ENTITIES                       -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!-- topicref types - topicgroup -->
<!ENTITY % widget "widget" >
<!ENTITY % websitetitle  "websitetitle" >
<!ENTITY % webpagetitle  "webpagetitle" >
<!ENTITY % layout  "layout" >
<!ENTITY % columns  "columns" >
<!ENTITY % column  "column" >
<!ENTITY % article  "article" >
<!ENTITY % aside  "aside" >
<!ENTITY % nav  "nav" >
<!ENTITY % section  "section" >
<!ENTITY % main  "main" >

<!-- topicref  -->
<!ENTITY % webpageref  "webpageref" >

<!-- topicref types - extractor -->
<!ENTITY % topic-extract-title  "topic-extract-title" >
<!ENTITY % render-topicref  "render-topicref" >
<!ENTITY % topic-extract-short-desc  "topic-extract-short-desc" >

<!-- ============================================================= -->
<!--                    COMMON ATTLIST SETS                        -->
<!-- ============================================================= -->

<!-- all webmap topicref -->
<!ENTITY % webmap.topicref.content
    "
     (((%topicref;) | (render-topicref)))
    "
>


<!-- Currently: same as topicref, sets collection-type to 'sequence' -->

<!ENTITY % web-topicref-atts 
             "collection-type 
                        (choice | 
                         family | 
                         sequence | 
                         unordered |
                         -dita-use-conref-target) 
                                 #IMPLIED
              type 
                        CDATA 
                                  #IMPLIED
              processing-role
                        (normal |
                         resource-only |
                         -dita-use-conref-target)
                                  #IMPLIED
              scope 
                        (external | 
                         local | 
                         peer | 
                         -dita-use-conref-target) 
                                  #IMPLIED
              locktitle 
                        (no | 
                         yes | 
                         -dita-use-conref-target) 
                                  #IMPLIED
              format 
                        CDATA 
                                  #IMPLIED
              linking 
                        (none | 
                         normal | 
                         sourceonly | 
                         targetonly |
                         -dita-use-conref-target) 
                                  #IMPLIED
              toc 
                        (no | 
                         yes | 
                         -dita-use-conref-target) 
                                  #IMPLIED
              print 
                        (no | 
                         printonly | 
                         yes | 
                         -dita-use-conref-target) 
                                  #IMPLIED
              search 
                        (no | 
                         yes | 
                         -dita-use-conref-target) 
                                  #IMPLIED
              chunk 
                        CDATA 
                                  #IMPLIED
  "
>

<!ENTITY % sectioning-atts "%web-topicref-atts;">


<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->


<!-- sectioning elements -->
<!-- webpagetitle -->
<!ENTITY % sectioning.content "((%topicmeta;)?, 
                         (%anchor; | 
                          %data.elements.incl; | 
                          %navref; | 
                          %layout; |
                          %widget; |
                          %topicref;)* )"
>



<!--                    LONG NAME: web Title                      -->
<!ENTITY % websitetitle.content
                       "(#PCDATA | %basic.ph.noxref;)*"
>
<!ENTITY % websitetitle.attributes
             "%id-atts;
              %localization-atts;
              base 
                        CDATA 
                                  #IMPLIED
              %base-attribute-extensions;
              outputclass
                        CDATA 
                                  #IMPLIED"
>
<!ELEMENT websitetitle    %websitetitle.content;>
<!ATTLIST websitetitle    %websitetitle.attributes;>

<!-- webpagetitle -->
<!ENTITY % webpagetitle.content
                       "((%topicmeta;)?, 
                         (%anchor; | 
                          %data.elements.incl; | 
                          %navref; | 
                          %topicref;)* )"
>


<!ENTITY % webpagetitle.attributes
             "%id-atts;
              %localization-atts;
              %topicref-atts;
              base 
                        CDATA 
                                  #IMPLIED
              %base-attribute-extensions;
              outputclass
                        CDATA 
                                  #IMPLIED"
>
<!ELEMENT webpagetitle    %webpagetitle.content;>
<!ATTLIST webpagetitle    %webpagetitle.attributes;>


<!-- article aside section -->
<!-- nav to be added later -->
<!ENTITY % article.content    "((%sectioning.content;)*)" >
<!ENTITY % article.attributes  "%sectioning-atts;" >

<!ELEMENT article    %article.content;>
<!ATTLIST article    %article.attributes;>

<!ENTITY % aside.content    "((%sectioning.content;)*)" >
<!ENTITY % aside.attributes  "%sectioning-atts;" >

<!ELEMENT aside    %aside.content;>
<!ATTLIST aside    %aside.attributes;>

<!ENTITY % section.content    "((%sectioning.content;)*)" >
<!ENTITY % section.attributes  "%sectioning-atts;" >

<!ELEMENT section    %section.content;>
<!ATTLIST section    %section.attributes;>

<!ENTITY % main.content    "((%sectioning.content;)*)" >
<!ENTITY % main.attributes  "%sectioning-atts;" >

<!ELEMENT main    %main.content;>
<!ATTLIST main    %main.attributes;>

<!-- html5 sectioning elements -->
<!ENTITY % sectioning.elements "article | aside | section | main?">

<!-- widget content -->
<!ENTITY % widget.content
    "
     ((%webmap.topicref.content;)*)
    "
>
<!ENTITY % widget.attributes
             "%id-atts;
              %localization-atts;
              %topicref-atts;
              base 
                        CDATA 
                                  #IMPLIED
              %base-attribute-extensions;
              outputclass
                        CDATA 
                                  #IMPLIED"
>
<!ELEMENT widget    %widget.content;>
<!ATTLIST widget    %widget.attributes;>


<!-- layout content -->
<!ENTITY % layout.content
    "
     (
     (%columns;)*
     )
    "
>
<!ELEMENT layout    %layout.content;>
<!ATTLIST layout    %widget.attributes;>


<!-- columns content -->
<!ENTITY % columns.content
    "
     (column*)
    "
>
<!ENTITY % columns.attributes
             "%id-atts;
              %localization-atts;
              %topicref-atts;              
              base  CDATA  #IMPLIED
              %base-attribute-extensions;
              outputclass CDATA #IMPLIED
              size CDATA #IMPLIED
              prepend CDATA #IMPLIED
              append CDATA #IMPLIED"
>
<!ELEMENT columns    %columns.content;>
<!ATTLIST columns    %columns.attributes;>

<!ENTITY % column.content
     "
     ((%webmap.topicref.content;)*)
    "
>

<!ELEMENT column  %column.content;>
<!ATTLIST column  %columns.attributes;>

<!-- render-topicref -->



<!ENTITY % render-topicref.content
    "
     ((%webmap.topicref.content;)*)
    "
>
<!ENTITY % render-topicref.attributes
             "%web-topicref-atts;
             keyref CDATA #IMPLIED
             href CDATA #IMPLIED
             as CDATA  #IMPLIED"
>
<!ELEMENT render-topicref    %render-topicref.content;>
<!ATTLIST render-topicref    %render-topicref.attributes;>


<!ATTLIST websitetitle      %global-atts; class CDATA "+ topic/title webmap-d/websitetitle ">
<!ATTLIST webpagetitle      %global-atts; class CDATA "+ topic/title webmap-d/webpagetitle ">

<!ATTLIST layout       %global-atts; class CDATA "+ map/topicref mapgroup-d/topicset webmap-d/layout ">
<!ATTLIST columns      %global-atts; class CDATA "+ map/topicref mapgroup-d/topicset webmap-d/l-column ">
<!ATTLIST column       %global-atts; class CDATA "+ map/topicref mapgroup-d/topicset webmap-d/column ">

<!ATTLIST article      %global-atts; class CDATA "+ map/topicref mapgroup-d/topicset webmap-d/sectioning webmap-d/article ">
<!ATTLIST section      %global-atts; class CDATA "+ map/topicref mapgroup-d/topicset webmap-d/sectioning webmap-d/section ">
<!ATTLIST aside        %global-atts; class CDATA "+ map/topicref mapgroup-d/topicset webmap-d/sectioning webmap-d/aside ">
<!ATTLIST main         %global-atts; class CDATA "+ map/topicref mapgroup-d/topicset webmap-d/sectioning webmap-d/main ">

<!ATTLIST widget       %global-atts; class CDATA "+ map/topicref mapgroup-d/topicset webmap-d/widget ">

<!ATTLIST render-topicref   %global-atts; class CDATA "+ map/topicref webmap-d/extractor webmap-d/render ">


<!-- ================== End web map domain ============================= -->