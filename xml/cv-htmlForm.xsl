<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" version="5.0" encoding="UTF-8" omit-xml-declaration="yes" indent="yes" />

    <xsl:template match="cv">

        <h3>Personal</h3>
        <table>
            <xsl:for-each select="personal">
                <tr><th>First name</th><td><xsl:value-of select="firstName" /></td></tr>
                <tr><th>Middle name</th><td><xsl:value-of select="middleName" /></td></tr>
                <tr><th>Last name</th><td><xsl:value-of select="lastName" /></td></tr>
                <tr><th>Date of birth</th><td><xsl:value-of select="dateofbirth" /></td></tr>
                <tr><th>Gender</th><td><xsl:value-of select="gender" /></td></tr>
                <tr><th>Nationality</th><td><xsl:value-of select="gender" /></td></tr>
            </xsl:for-each>
        </table>

        <h3>Address</h3>
        <table>
            <xsl:for-each select="address">
                <tr><th>Street</th><td><xsl:value-of select="street" /></td></tr>
                <tr><th>City</th><td><xsl:value-of select="city" /></td></tr>
                <tr><th>Zip</th><td><xsl:value-of select="zip" /></td></tr>
                <tr><th>State</th><td><xsl:value-of select="state" /></td></tr>
                <tr><th>Description</th><td><xsl:value-of select="description" /></td></tr>
            </xsl:for-each>
        </table>


        <h3>Contacts</h3>
        <table>
            <xsl:for-each select="contacts/*">
                <tr>
                    <td><xsl:number value="position()" format="1. " /></td>
                    <xsl:choose>
                        <xsl:when test="local-name()='phone'">
                            <th>Phone (<xsl:value-of select="@type" />)</th><td><xsl:value-of select="." /></td>
                        </xsl:when>
                        <xsl:when test="local-name()='email'">
                            <th>Email</th><td><xsl:value-of select="." /></td>
                        </xsl:when>
                        <xsl:when test="local-name()='website'">
                            <th>Website</th><td><xsl:value-of select="." /></td>
                        </xsl:when>
                    </xsl:choose>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>


</xsl:stylesheet>
