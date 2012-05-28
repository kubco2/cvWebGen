<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" version="5.0" encoding="UTF-8" omit-xml-declaration="yes" indent="yes" />

    <xsl:template match="cv">

        <section id="cv-form-personal">
            <header><h3>Personal</h3></header>
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
        </section>

        <section id="cv-form-address">
            <header><h3>Address</h3></header>
            <table>
                <xsl:for-each select="address">
                    <tr><th>Street</th><td><xsl:value-of select="street" /></td></tr>
                    <tr><th>City</th><td><xsl:value-of select="city" /></td></tr>
                    <tr><th>Zip</th><td><xsl:value-of select="zip" /></td></tr>
                    <tr><th>State</th><td><xsl:value-of select="state" /></td></tr>
                    <tr><th>Description</th><td><xsl:value-of select="description" /></td></tr>
                </xsl:for-each>
            </table>
        </section>

        <section id="cv-form-contacts">
            <header><h3>Contacts</h3></header>
            <table>
                <xsl:for-each select="contacts/*">
                    <tr>
                        <th><xsl:number value="position()" format="1." /></th>
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
        </section>

        <section id="cv-form-works">
            <header><h3>Works</h3></header>
            <xsl:for-each select="works/work">
                <table>
                    <tr><th colspan="2"><xsl:number value="position()" format="1." /></th></tr>
                    <tr><th>Period</th><td><xsl:apply-templates select="period"/></td></tr>
                    <tr><th>Employer</th><td><xsl:value-of select="employer" /></td></tr>
                    <tr><th>Position</th><td><xsl:value-of select="position" /></td></tr>
                    <tr><th>Activities</th><td><xsl:value-of select="activities" /></td></tr>
                    <tr><th>Sector</th><td><xsl:value-of select="sector" /></td></tr>
                </table>
            </xsl:for-each>
        </section>

        <section id="cv-form-educations">
            <header><h3>Educations</h3></header>
            <xsl:for-each select="educations/education">
                <table>
                    <tr><th colspan="2"><xsl:number value="position()" format="1." /></th></tr>
                    <tr><th>Period</th><td><xsl:apply-templates select="period"/></td></tr>
                    <tr><th>Organisation</th><td><xsl:value-of select="organisation" /></td></tr>
                    <tr><th>Description</th><td><xsl:value-of select="description" /></td></tr>
                </table>
            </xsl:for-each>
        </section>

        <section id="cv-form-skills">
            <header><h3>Skills</h3></header>
            <table>
            <xsl:for-each select="skills/skill">
                <tr>
                    <th><xsl:number value="position()" format="1." /></th>
                    <th><xsl:value-of select="@name" /></th>
                    <td><xsl:value-of select="." /></td>
                </tr>
            </xsl:for-each>
            </table>
        </section>

        <section id="cv-form-languages">
            <header><h3>Skills</h3></header>
            <table>
                <xsl:for-each select="languages/language">
                    <tr>
                        <th><xsl:number value="position()" format="1." /></th>
                        <th>
                            <xsl:choose>
                                <xsl:when test="@level='novice'">Novice</xsl:when>
                                <xsl:when test="@level='beginner'">Beginner</xsl:when>
                                <xsl:when test="@level='intermediate'">Intermediate</xsl:when>
                                <xsl:when test="@level='advanced'">Advanced</xsl:when>
                            </xsl:choose>
                        </th>
                        <td><xsl:value-of select="." /></td>
                    </tr>
                </xsl:for-each>
            </table>
        </section>

    </xsl:template>


    <xsl:template match="//period">
        <xsl:value-of select="from/year" /> to <xsl:value-of select="to/year" />
    </xsl:template>

</xsl:stylesheet>
