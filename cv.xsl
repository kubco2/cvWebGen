<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" encoding="utf-8"/>

<xsl:template match="cv">

\documentclass[helvetica,openbib,totpages,slovak]{europecv}
\usepackage[T1]{fontenc}
\usepackage{graphicx}
\usepackage[a4paper,top=1.27cm,left=1cm,right=1cm,bottom=2cm]{geometry}
\usepackage[czech]{babel}
\usepackage{bibentry}
\usepackage{url}

\renewcommand{\ttdefault}{phv} % Uses Helvetica instead of fixed width font

<xsl:apply-templates select="personal"/>
<xsl:apply-templates select="address"/>
<xsl:apply-templates select="contacts/phone" />
<xsl:apply-templates select="contacts/email" />


\ecvfootnote{For more information go to \url{http://europass.cedefop.eu.int}\\
\textcopyright~European Communities, 2003.}

\begin{document}
\selectlanguage{english}


\begin{europecv}
\ecvpersonalinfo[5pt]

<!-- -->
<xsl:apply-templates select="works"/>
<xsl:apply-templates select="educations"/>
<xsl:apply-templates select="languages"/>
<xsl:apply-templates select="skills"/>

\end{europecv}

\end{document}       
   
</xsl:template>





<xsl:template match="personal">
\ecvname{<xsl:value-of select="firstName"/><xsl:text> </xsl:text><xsl:value-of select="lastName"/>}
\ecvfootername{<xsl:value-of select="firstName"/><xsl:text> </xsl:text><xsl:value-of select="lastName"/>}
\ecvnationality{<xsl:value-of select="nationality"/>}
\ecvdateofbirth{<xsl:value-of select="dateofbirth"/>}
\ecvgender{<xsl:value-of select="gender"/>}
%\ecvpicture[width=2cm]{mypicture}
</xsl:template>

<xsl:template match="contacts/phone">
\ecvtelephone{<xsl:value-of select="." />}
</xsl:template>

<xsl:template match="contacts/email">
\ecvemail{<xsl:value-of select="."/>}
</xsl:template>





<xsl:template match="works">
    \ecvsection{Prax}
    <xsl:apply-templates />
</xsl:template>


<xsl:template match="work">
    \ecvitem{Od - do}{<xsl:value-of select="period/from/year"/><xsl:text> - </xsl:text><xsl:value-of select="period/to/year"/>}
    \ecvitem{Pozícia}{<xsl:value-of select="position"/>}
    \ecvitem{Zamestnávateľ}{<xsl:value-of select="employer"/>}
    \ecvitem{Náplň práce}{<xsl:value-of select="activities"/>}
    \ecvitem[15pt]{Obor}{<xsl:value-of select="sector"/>}
</xsl:template>




<xsl:template match="educations">
    \ecvsection{Vzdelanie a školenia}    
    <xsl:apply-templates />
</xsl:template>

<xsl:template match="education">
\ecvitem{Od - do}{<xsl:value-of select="period/from/year"/><xsl:text> - </xsl:text><xsl:value-of select="period/to/year"/>}
\ecvitem{Názov}{<xsl:value-of select="organisation"/>}
\ecvitem[15pt]{Popis}{<xsl:value-of select="description"/>}
</xsl:template>


<xsl:template match="languages">
\ecvsection{Jazyky}    
    <xsl:apply-templates />
</xsl:template>

<xsl:template match="language">
    \ecvitem{<xsl:value-of select="."/>}{<xsl:value-of select="@level"/>}
</xsl:template>

<xsl:template match="skills">
\ecvsection{Schopnosti}    
    <xsl:apply-templates />
</xsl:template>

<xsl:template match="skill">
    \ecvitem{<xsl:value-of select="@name"/>}{<xsl:value-of select="."/>}
</xsl:template>



<xsl:template match="address">
\ecvaddress{<xsl:value-of select="street"/>,
            <xsl:value-of select="zip"/>,
            <xsl:value-of select="city"/>,
            <xsl:value-of select="state"/>}
</xsl:template>

</xsl:stylesheet>
