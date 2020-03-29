<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:gmd="http://www.isotc211.org/2005/gmd"
                xmlns:gcoold="http://www.isotc211.org/2005/gco"
                xmlns:gmi="http://www.isotc211.org/2005/gmi"
                xmlns:gmx="http://www.isotc211.org/2005/gmx"
                xmlns:gsr="http://www.isotc211.org/2005/gsr"
                xmlns:gss="http://www.isotc211.org/2005/gss"
                xmlns:gts="http://www.isotc211.org/2005/gts"
                xmlns:srvold="http://www.isotc211.org/2005/srv"
                xmlns:gml30="http://www.opengis.net/gml"
                xmlns:cat="http://standards.iso.org/iso/19115/-3/cat/1.0"
                xmlns:cit="http://standards.iso.org/iso/19115/-3/cit/2.0"
                xmlns:gcx="http://standards.iso.org/iso/19115/-3/gcx/1.0"
                xmlns:gex="http://standards.iso.org/iso/19115/-3/gex/1.0"
                xmlns:lan="http://standards.iso.org/iso/19115/-3/lan/1.0"
                xmlns:srv="http://standards.iso.org/iso/19115/-3/srv/2.0"
                xmlns:mac="http://standards.iso.org/iso/19115/-3/mac/2.0"
                xmlns:mas="http://standards.iso.org/iso/19115/-3/mas/1.0"
                xmlns:mcc="http://standards.iso.org/iso/19115/-3/mcc/1.0"
                xmlns:mco="http://standards.iso.org/iso/19115/-3/mco/1.0"
                xmlns:mda="http://standards.iso.org/iso/19115/-3/mda/1.0"
                xmlns:mdb="http://standards.iso.org/iso/19115/-3/mdb/2.0"
                xmlns:mdt="http://standards.iso.org/iso/19115/-3/mdt/1.0"
                xmlns:mex="http://standards.iso.org/iso/19115/-3/mex/1.0"
                xmlns:mic="http://standards.iso.org/iso/19115/-3/mic/1.0"
                xmlns:mil="http://standards.iso.org/iso/19115/-3/mil/1.0"
                xmlns:mrl="http://standards.iso.org/iso/19115/-3/mrl/2.0"
                xmlns:mds="http://standards.iso.org/iso/19115/-3/mds/1.0"
                xmlns:mmi="http://standards.iso.org/iso/19115/-3/mmi/1.0"
                xmlns:mpc="http://standards.iso.org/iso/19115/-3/mpc/1.0"
                xmlns:mrc="http://standards.iso.org/iso/19115/-3/mrc/1.0"
                xmlns:mrd="http://standards.iso.org/iso/19115/-3/mrd/1.0"
                xmlns:mri="http://standards.iso.org/iso/19115/-3/mri/1.0"
                xmlns:mrs="http://standards.iso.org/iso/19115/-3/mrs/1.0"
                xmlns:msr="http://standards.iso.org/iso/19115/-3/msr/2.0"
                xmlns:mai="http://standards.iso.org/iso/19115/-3/mai/1.0"
                xmlns:mdq="http://standards.iso.org/iso/19157/-2/mdq/1.0"
                xmlns:gco="http://standards.iso.org/iso/19115/-3/gco/1.0"
                xmlns:gml="http://www.opengis.net/gml/3.2"
                xmlns:mcpold="http://schemas.aodn.org.au/mcp-2.0"
                xmlns:xlink="http://www.w3.org/1999/xlink"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                exclude-result-prefixes="#all">

  <xsl:template match="gmd:resourceConstraints" mode="mcpcommons">
    <mri:resourceConstraints>
      <xsl:apply-templates select="." mode="legalConstraints"/>
    </mri:resourceConstraints>
  </xsl:template>

  <xsl:template match="gmd:metadataConstraints" mode="mcpcommons">
    <mdb:metadataConstraints>
      <xsl:apply-templates select="." mode="legalConstraints"/>
    </mdb:metadataConstraints>
  </xsl:template>

  <xsl:template match="gmd:resourceConstraints | gmd:metadataConstraints" mode="legalConstraints">
    <mco:MD_LegalConstraints>
      <mco:graphic>
        <mcc:MD_BrowseGraphic>
          <mcc:fileName gco:nilReason="inapplicable" />
          <mcc:linkage>
            <cit:CI_OnlineResource>
              <cit:linkage>
                <gco:CharacterString><xsl:value-of select="*//mcpold:imageLink/gmd:URL"/></gco:CharacterString>
              </cit:linkage>
              <cit:protocol>
                <gco:CharacterString>WWW:LINK-1.0-http--related</gco:CharacterString>
              </cit:protocol>
              <cit:description>
                <gco:CharacterString>License Graphic</gco:CharacterString>
              </cit:description>
            </cit:CI_OnlineResource>
          </mcc:linkage>
        </mcc:MD_BrowseGraphic>
      </mco:graphic>
      <mco:reference>
        <cit:CI_Citation>
          <cit:title>
            <gco:CharacterString><xsl:value-of select="*//mcpold:licenseName/gcoold:CharacterString"/></gco:CharacterString>
          </cit:title>
          <cit:citedResponsibleParty>
            <cit:CI_Responsibility>
              <cit:role>
                <cit:CI_RoleCode codeList="http://standards.iso.org/iso/19139/resources/gmxCodelists.xml#CI_RoleCode"
                                 codeListValue=""/>
              </cit:role>
              <cit:party>
                <cit:CI_Organisation>
                  <cit:name gco:nilReason="missing">
                    <gco:CharacterString/>
                  </cit:name>
                  <cit:contactInfo>
                    <cit:CI_Contact>
                      <cit:address>
                        <cit:CI_Address>
                          <cit:electronicMailAddress gco:nilReason="missing">
                            <gco:CharacterString/>
                          </cit:electronicMailAddress>
                        </cit:CI_Address>
                      </cit:address>
                      <cit:onlineResource>
                        <cit:CI_OnlineResource>
                          <cit:linkage>
                            <gco:CharacterString><xsl:value-of select="*//mcpold:jurisdictionLink/gmd:URL"/></gco:CharacterString>
                          </cit:linkage>
                          <cit:protocol>
                            <gco:CharacterString>WWW:LINK-1.0-http--related</gco:CharacterString>
                          </cit:protocol>
                          <cit:name gco:nilReason="missing">
                            <gco:CharacterString/>
                          </cit:name>
                          <cit:description gco:nilReason="missing">
                            <gco:CharacterString/>
                          </cit:description>
                        </cit:CI_OnlineResource>
                      </cit:onlineResource>
                    </cit:CI_Contact>
                  </cit:contactInfo>
                </cit:CI_Organisation>
              </cit:party>
            </cit:CI_Responsibility>
          </cit:citedResponsibleParty>
          <cit:onlineResource>
            <cit:CI_OnlineResource>
              <cit:linkage>
                <gco:CharacterString><xsl:value-of select="*//mcpold:licenseLink/gmd:URL"/></gco:CharacterString>
              </cit:linkage>
              <cit:protocol>
                <gco:CharacterString>WWW:LINK-1.0-http--related</gco:CharacterString>
              </cit:protocol>
              <cit:description>
                <gco:CharacterString>License Text</gco:CharacterString>
              </cit:description>
            </cit:CI_OnlineResource>
          </cit:onlineResource>
        </cit:CI_Citation>
      </mco:reference>
      <xsl:if test="*//mcpold:attributionConstraints">
        <mco:otherConstraints>
          <gco:CharacterString><xsl:value-of select="*//mcpold:attributionConstraints/gcoold:CharacterString"/></gco:CharacterString>
        </mco:otherConstraints>
      </xsl:if>
      <xsl:if test="*//mcpold:otherConstraints">
        <mco:otherConstraints>
          <gco:CharacterString><xsl:value-of select="*//mcpold:otherConstraints/gcoold:CharacterString"/></gco:CharacterString>
        </mco:otherConstraints>
      </xsl:if>
    </mco:MD_LegalConstraints>
  </xsl:template>

</xsl:stylesheet>
