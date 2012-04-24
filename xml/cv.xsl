<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" encoding="utf-8"/>

<xsl:template match="ecv">

\documentclass[helvetica,openbib,totpages,slovak]{europecv}
\usepackage[T1]{fontenc}
\usepackage{graphicx}
\usepackage[a4paper,top=1.27cm,left=1cm,right=1cm,bottom=2cm]{geometry}
\usepackage[czech]{babel}
\usepackage{bibentry}
\usepackage{url}

\renewcommand{\ttdefault}{phv} % Uses Helvetica instead of fixed width font

<xsl:for-each select="personal">

\ecvname{<xsl:value-of select="name"/>}
\ecvfootername{<xsl:value-of select="name"/>}
\ecvaddress{15, Pri štepnici, 08501, Bardejov, Slovak Republic}
\ecvtelephone<xsl:for-each select="phone">{<xsl:value-of select="." /></xsl:for-each>
\ecvemail{<xsl:value-of select="email"/>}
\ecvnationality{<xsl:value-of select="nationality"/>}
\ecvdateofbirth{<xsl:value-of select="dateofbirth"/>}
\ecvgender{<xsl:value-of select="gender"/>}
%\ecvpicture[width=2cm]{mypicture}
</xsl:for-each>

\ecvfootnote{For more information go to \url{http://europass.cedefop.eu.int}\\
\textcopyright~European Communities, 2003.}

\begin{document}
\selectlanguage{english}


\begin{europecv}
\ecvpersonalinfo[5pt]


\ecvsection{Prax}

<xsl:for-each select="work">
\ecvitem{Od - do}{<xsl:value-of select="dates"/>}
\ecvitem{Pozícia}{<xsl:value-of select="position"/>}
\ecvitem{Zamestnávateľ}{<xsl:value-of select="employer"/>}
\ecvitem{Náplň práce}<xsl:value-of select="activities"/>}
\ecvitem[15pt]{Obor}{<xsl:value-of select="sector"/>}
</xsl:for-each>

\ecvsection{Vzdelanie a školenia}

<xsl:for-each select="education">
\ecvitem{Od - do}{<xsl:value-of select="dates"/>}
\ecvitem{Názov}{<xsl:value-of select="organisation"/>}
\ecvitem[15pt]{Odbor}{<xsl:value-of select="field"/>}
</xsl:for-each>

\pagebreak

\ecvsection{Osobná spôsobilosť}

<xsl:for-each select="skills/computer">
\ecvitem{<xsl:if test="position()=1">Počítačové znalosti</xsl:if>}{<xsl:value-of select="." />}</xsl:for-each>

\end{europecv}

\end{document}       
   
</xsl:template>

</xsl:stylesheet>