<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<xsl:variable name="builddate" select="/rss/channel/lastBuildDate" />
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
	<channel>
		<title>NCSC Beveilingsadviezen (alleen nieuwe entries)</title>
		<link>https://thuis.zoetekouw.net/ncsc_new.rss</link>
		<atom:link rel="self" type="application/rss+xml" href="https://thuis.zoetekouw.net/ncsc_new.rss" />
		<description>
			Kopie van https://advisories.ncsc.nl/rss/advisories, maar gefiltered op alleen de entries met versie=1.00.
			Beveiligingsadviezen van het NCSC aan organisaties in de vitale sector
		</description>
		<language>nl-NL</language>
		<copyright>Copyright 2022 - NCSC-NL</copyright>
		<xsl:copy-of select="/rss/channel/lastBuildDat"/>
		<webMaster>bas@zoetekouw.net (Bas Zoetekouw)</webMaster>
		<xsl:copy-of select="/rss/channel/item[./title[contains(.,'1.00')]]"/>
	</channel>
</rss>
</xsl:template>
</xsl:stylesheet>


