<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output  doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" indent="yes" encoding="UTF-8"/>


<!-- method="text" -->

<xsl:template match="ecv">

<html xmlns='http://www.w3.org/1999/xhtml' xml:lang='sk'>
    <head>
        <meta http-equiv="Content-Type"     content="application/xhtml+xml; charset=utf-8" />
        <meta http-equiv="Content-Language" content="sk" />
        <meta http-equiv="Cache-Control"    content="no-cache, must-revalidate" />
        <meta http-equiv="Expires"          content="-1" />
        <meta http-equiv="Pragma"           content="no-cache" />
        
        <title>Peter Greň - životopis</title>
        
        <meta name="copyright"   content="Peter Gren - All rights reserved" />
        <meta name="robots"      content="noindex, nofollow, noarchive" />
                                                                       
        <link rel="stylesheet"    href="style/style.css" type="text/css" media="all" />

	<style>
	<![CDATA[
	    table {
		margin-top: 20px;
		margin-bottom: 20px;
	    }
	    th, td {
		padding: 4px;
	    }
            th {
		text-align: right;
		width: 15em;
            }
	    h1 {
		margin-left: 8em;
            }
	    h2 {
	        margin-left: 10.7em;
	    }
	]]>	
	</style>	
	
    </head>
    <body>
	<h1>Peter Greň - životopis</h1>
        <h2>Osobné údaje</h2>

<table>
<xsl:for-each select="personal">
<tr><th>Meno:</th><td><xsl:value-of select="name"/></td></tr>
<tr><th>Adresa:</th><td><xsl:value-of select="adress" /></td></tr>
<tr><th>Telefón:</th><td><xsl:value-of select="phone" /></td></tr>
<tr><th>E-mail:</th><td><xsl:value-of select="email"/></td></tr>
<tr><th>Národnosť:</th><td><xsl:value-of select="nationality"/></td></tr>
<tr><th>Dátum narodenia:</th><td><xsl:value-of select="dateofbirth"/></td></tr>
<tr><th>Pohlavie:</th><td><xsl:value-of select="gender"/></td></tr>
</xsl:for-each>
</table>


<h2>Prax</h2>


<xsl:for-each select="work">
<table>
<tr><th>Od - do</th><td><xsl:value-of select="dates"/></td></tr>
<tr><th>Pozícia</th><td><xsl:value-of select="position"/></td></tr>
<tr><th>Zamestnávateľ</th><td><xsl:value-of select="employer"/></td></tr>
<tr><th>Náplň práce</th><td><xsl:value-of select="activities"/></td></tr>
<tr><th>Obor</th><td><xsl:value-of select="sector"/></td></tr>
</table>
</xsl:for-each>

<h2>Vzdelanie a školenia</h2>

<xsl:for-each select="education">
<table>
<tr><th>Od - do</th><td><xsl:value-of select="dates"/></td></tr>
<tr><th>Názov</th><td><xsl:value-of select="organisation"/></td></tr>
<tr><th>Odbor</th><td><xsl:value-of select="field"/></td></tr>
</table>
</xsl:for-each>


<h2>Osobná spôsobilosť</h2>
<table>
<tr><th>Materinský jazyk</th><td><xsl:value-of select="skills/tongue"/></td></tr>
<xsl:for-each select="skills/language">
<tr><th><xsl:if test="position()=1">Ďalšie jazyky</xsl:if></th><td><xsl:value-of select="." /> - <xsl:value-of select="@level"/></td></tr></xsl:for-each>
</table>

<table>
<xsl:for-each select="skills/computer">
<tr><th><xsl:if test="position()=1">Počítačové znalosti</xsl:if></th><td><xsl:value-of select="." /></td></tr></xsl:for-each>
</table>

<table>
<tr><th>Vodičský preukaz</th><td><xsl:value-of select="skills/driving"/></td></tr>
</table>

<table>
<xsl:for-each select="skills/other">
<tr><th><xsl:if test="position()=1">Ďalšie schopnosti</xsl:if></th><td><xsl:value-of select="." /></td></tr></xsl:for-each>
</table>

<table>
<xsl:for-each select="skills/interests">
<tr><th><xsl:if test="position()=1">Osobné záujmy</xsl:if></th><td><xsl:value-of select="." /></td></tr></xsl:for-each>
</table>

<table>
<xsl:for-each select="skills/strenghts">
<tr><th><xsl:if test="position()=1">Silné stránky</xsl:if></th><td><xsl:value-of select="." /></td></tr></xsl:for-each>
</table>

</body>
</html>       
    
</xsl:template>

</xsl:stylesheet>
