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

<!-- Topicref types: -->
<!ENTITY % page "page" >
<!--ENTITY % pageset "pageset" -->

<!-- title types: -->
<!ENTITY % websitetitle  "websitetitle" >


<!-- ============================================================= -->
<!--                    COMMON ATTLIST SETS                        -->
<!-- ============================================================= -->

<!-- Currently: same as topicref, sets collection-type to 'sequence' -->

<!ENTITY % web-topicref-atts 
             "collection-type 
                        (choice | 
                         family | 
                         sequence | 
                         unordered |
                         -dita-use-conref-target) 
                                 'sequence'
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




<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->




<!--                    LONG NAME: Front Matter                    -->

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


<!-- page -->
<!ENTITY % page.content
                       "EMPTY"
>
<!ENTITY % page.attributes
             "             "
>
<!ELEMENT page    %page.content;>
<!ATTLIST page    %page.attributes;>

<!-- pageset -->
<!--ENTITY % pageset.content
 	"((%topicref;)* |
	   (%pageset;)* |
      (%page;)*
    )"
-->

<!--ENTITY % pageset.attributes
            "%id-atts;
              %localization-atts;
              base 
                        CDATA 
                                  #IMPLIED
              %base-attribute-extensions;
              outputclass
                        CDATA 
                                  #IMPLIED"
-->

<!--ELEMENT pageset    %pageset.content;-->
<!--ATTLIST pageset    %pageset.attributes;-->

<!ATTLIST page          %global-atts; class CDATA "+ map/topicref webmap-d/page ">
<!--ATTLIST pageset          %global-atts; class CDATA "+ map/topicref webmap-d/pageset "-->
<!ATTLIST websitetitle      %global-atts; class CDATA "+ topic/title webmap-d/websitetitle ">



<!-- ================== End web map domain ============================= -->