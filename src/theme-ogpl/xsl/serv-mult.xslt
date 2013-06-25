<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
	wet-boew.github.io/wet-boew/License-eng.txt / wet-boew.github.io/wet-boew/Licence-fra.txt -->

	<xsl:import href="../../base/xsl/base.xslt"/>
	<xsl:output method="text" encoding="utf-8"/>
	<xsl:variable name="root" select="'serv-mult'"/>
	
	<xsl:template match="value" mode="output">
		<xsl:param name="path_correction"/>
		<xsl:param name="wet_fallback_language"/>
		<xsl:param name="menu_language"/>
		<xsl:param name="interword-space"/>
		<xsl:param name="hyphen"/>
		<xsl:param name="tmpl-sample-text"/>
		<xsl:param name="tmpl-section"/>
		<xsl:param name="lang2">
			<xsl:choose>
				<xsl:when test="lang('en')">fr</xsl:when>
				<xsl:otherwise>en</xsl:otherwise>
			</xsl:choose>
		</xsl:param>
		<xsl:param name="lang2-file">
			<xsl:choose>
				<xsl:when test="lang('en')">cont-fra.html</xsl:when>
				<xsl:otherwise>cont-eng.html</xsl:otherwise>
			</xsl:choose>
		</xsl:param>
		<xsl:param name="interword-space-lang2">
			<xsl:if test="/strings/string[@id='%interword-space']/value[lang($lang2)] = '&amp;#32;'"><xsl:text> </xsl:text></xsl:if>
		</xsl:param>
		<xsl:param name="tmpl-sample-text-lang2" select="/strings/string[@id='%tmpl-sample-text']/value[lang($lang2)]"/>
		<xsl:param name="lang3">
			<xsl:choose>
				<xsl:when test="lang('de')">fr</xsl:when>
				<xsl:otherwise>de</xsl:otherwise>
			</xsl:choose>
		</xsl:param>
		<xsl:param name="lang3-file">
			<xsl:choose>
				<xsl:when test="lang('de')">cont-fra.html</xsl:when>
				<xsl:otherwise>de/cont-de.html</xsl:otherwise>
			</xsl:choose>
		</xsl:param>
		<xsl:param name="interword-space-lang3">
			<xsl:if test="/strings/string[@id='%interword-space']/value[lang($lang3)] = '&amp;#32;'"><xsl:text> </xsl:text></xsl:if>
		</xsl:param>
		<xsl:param name="tmpl-sample-text-lang3" select="/strings/string[@id='%tmpl-sample-text']/value[lang($lang3)]"/>
		<xsl:param name="lang4">
			<xsl:choose>
				<xsl:when test="lang('es')">fr</xsl:when>
				<xsl:otherwise>es</xsl:otherwise>
			</xsl:choose>
		</xsl:param>
		<xsl:param name="lang4-file">
			<xsl:choose>
				<xsl:when test="lang('es')">cont-fra.html</xsl:when>
				<xsl:otherwise>es/cont-es.html</xsl:otherwise>
			</xsl:choose>
		</xsl:param>
		<xsl:param name="interword-space-lang4">
			<xsl:if test="/strings/string[@id='%interword-space']/value[lang($lang4)] = '&amp;#32;'"><xsl:text> </xsl:text></xsl:if>
		</xsl:param>
		<xsl:param name="tmpl-sample-text-lang4" select="/strings/string[@id='%tmpl-sample-text']/value[lang($lang4)]"/>
		<xsl:param name="lang5">
			<xsl:choose>
				<xsl:when test="lang('it')">fr</xsl:when>
				<xsl:otherwise>it</xsl:otherwise>
			</xsl:choose>
		</xsl:param>
		<xsl:param name="lang5-file">
			<xsl:choose>
				<xsl:when test="lang('it')">cont-fra.html</xsl:when>
				<xsl:otherwise>it/cont-it.html</xsl:otherwise>
			</xsl:choose>
		</xsl:param>
		<xsl:param name="interword-space-lang5">
			<xsl:if test="/strings/string[@id='%interword-space']/value[lang($lang5)] = '&amp;#32;'"><xsl:text> </xsl:text></xsl:if>
		</xsl:param>
		<xsl:param name="tmpl-sample-text-lang5" select="/strings/string[@id='%tmpl-sample-text']/value[lang($lang5)]"/>
		<xsl:param name="lang6">
			<xsl:choose>
				<xsl:when test="lang('pt')">fr</xsl:when>
				<xsl:otherwise>pt</xsl:otherwise>
			</xsl:choose>
		</xsl:param>
		<xsl:param name="lang6-file">
			<xsl:choose>
				<xsl:when test="lang('pt')">cont-fra.html</xsl:when>
				<xsl:otherwise>pt/cont-pt.html</xsl:otherwise>
			</xsl:choose>
		</xsl:param>
		<xsl:param name="interword-space-lang6">
			<xsl:if test="/strings/string[@id='%interword-space']/value[lang($lang6)] = '&amp;#32;'"><xsl:text> </xsl:text></xsl:if>
		</xsl:param>
		<xsl:param name="tmpl-sample-text-lang6" select="/strings/string[@id='%tmpl-sample-text']/value[lang($lang6)]"/>
		<xsl:param name="lang7">
			<xsl:choose>
				<xsl:when test="lang('ru')">fr</xsl:when>
				<xsl:otherwise>ru</xsl:otherwise>
			</xsl:choose>
		</xsl:param>
		<xsl:param name="lang7-file">
			<xsl:choose>
				<xsl:when test="lang('ru')">cont-fra.html</xsl:when>
				<xsl:otherwise>ru/cont-ru.html</xsl:otherwise>
			</xsl:choose>
		</xsl:param>
		<xsl:param name="interword-space-lang7">
			<xsl:if test="/strings/string[@id='%interword-space']/value[lang($lang7)] = '&amp;#32;'"><xsl:text> </xsl:text></xsl:if>
		</xsl:param>
		<xsl:param name="tmpl-sample-text-lang7" select="/strings/string[@id='%tmpl-sample-text']/value[lang($lang7)]"/>
		<xsl:param name="tmpl-item"/>&lt;!DOCTYPE html&gt;
&lt;!--[if IE 7]&gt;&lt;html <xsl:if test="not(/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)] = 'ltr')"><xsl:if test="not(/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)] = 'ltr')">dir="<xsl:value-of select="/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)]"/>" </xsl:if></xsl:if>lang="<xsl:value-of select="./@xml:lang"/>" class="no-js ie7"&gt;&lt;![endif]--&gt;
&lt;!--[if IE 8]&gt;&lt;html <xsl:if test="not(/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)] = 'ltr')">dir="<xsl:value-of select="/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)]"/>" </xsl:if>lang="<xsl:value-of select="./@xml:lang"/>" class="no-js ie8"&gt;&lt;![endif]--&gt;
&lt;!--[if gt IE 8]&gt;&lt;!--&gt;
&lt;html <xsl:if test="not(/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)] = 'ltr')">dir="<xsl:value-of select="/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)]"/>" </xsl:if>lang="<xsl:value-of select="./@xml:lang"/>" class="no-js"&gt;
&lt;!--&lt;![endif]--&gt;
&lt;head&gt;
&lt;meta charset="utf-8" /&gt;
&lt;!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
wet-boew.github.io/wet-boew/License-eng.txt / wet-boew.github.io/wet-boew/Licence-fra.txt --&gt;
&lt;title&gt;<xsl:value-of select="/strings/string[@id='%tmpl-serv-page']/value[lang(current()/@xml:lang)]"/><xsl:value-of select="$hyphen"/><xsl:value-of select="/strings/string[@id='%tmpl-multilingual']/value[lang(current()/@xml:lang)]"/><xsl:value-of select="$hyphen"/><xsl:value-of select="/strings/string[@id='%tmpl-ogpl-theme']/value[lang(current()/@xml:lang)]"/><xsl:value-of select="$hyphen"/><xsl:value-of select="/strings/string[@id='%tmpl-work-examples']/value[lang(current()/@xml:lang)]"/><xsl:value-of select="$hyphen"/><xsl:value-of select="/strings/string[@id='%tmpl-wet']/value[lang(current()/@xml:lang)]"/>&lt;/title&gt;

&lt;link rel="shortcut icon" href="<xsl:value-of select="$path_correction"/>../../dist/theme-ogpl/images/favicon.ico" /&gt;
&lt;meta name="robots" content="noindex, nofollow, noarchive" /&gt;
&lt;meta name="viewport" content="width=device-width, initial-scale=1" /&gt;

&lt;!--[if lte IE 8]&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/jquery-ie.min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/polyfills/html5shiv-min.js"&gt;&lt;/script&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/grids/css/util-ie-min.css" /&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/js/css/pe-ap-ie-min.css" /&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/theme-ogpl/css/theme-serv-ie-min.css" /&gt;
&lt;noscript&gt;&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/theme-ogpl/css/theme-ns-ie-min.css" /&gt;&lt;/noscript&gt;
&lt;![endif]--&gt;
&lt;!--[if gt IE 8]&gt;&lt;!--&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/jquery.min.js"&gt;&lt;/script&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/grids/css/util-min.css" /&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/js/css/pe-ap-min.css" /&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/theme-ogpl/css/theme-serv-min.css" /&gt;
&lt;noscript&gt;&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/theme-ogpl/css/theme-ns-min.css" /&gt;&lt;/noscript&gt;
&lt;!--&lt;![endif]--&gt;

&lt;!-- CustomCSSStart --&gt;
&lt;!-- CustomCSSEnd --&gt;
&lt;/head&gt;

&lt;body&gt;&lt;div id="wb-body"&gt;
&lt;div id="wb-head"&gt;&lt;div id="wb-head-in"&gt;&lt;header&gt;
&lt;!-- HeaderStart --&gt;
&lt;div id="ogpl-fullhd"&gt;&lt;div id="ogpl-fullhd-in"&gt;
&lt;/div&gt;&lt;/div&gt;
&lt;div id="ogpl-bnr" role="banner"&gt;&lt;div id="ogpl-bnr-in"&gt;
&lt;div id="ogpl-title"&gt;&lt;p id="ogpl-title-in"&gt;&lt;img src="<xsl:value-of select="$path_correction"/>../../dist/theme-ogpl/images/theme103_logo.png" alt="" /&gt; &lt;span&gt;<xsl:value-of select="/strings/string[@id='%tmpl-ogpl']/value[lang(current()/@xml:lang)]"/>&lt;/span&gt;&lt;/p&gt;&lt;/div&gt;
&lt;/div&gt;&lt;/div&gt;
&lt;!-- HeaderEnd --&gt;
&lt;/header&gt;&lt;/div&gt;&lt;/div&gt;

&lt;div id="wb-core"&gt;&lt;div id="wb-core-in" class="equalize"&gt;
&lt;div id="wb-main" role="main"&gt;&lt;div id="wb-main-in"&gt;
&lt;!-- MainContentStart --&gt;
&lt;div class="span-4"&gt;&lt;h1 id="wb-cont"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-msg-title']/value[lang(current()/@xml:lang)]"/>&lt;/h1&gt;
&lt;p&gt;<xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/>&lt;/p&gt;
&lt;ul&gt;
<xsl:choose>
	<xsl:when test="lang('en') or lang('fr')">&lt;li&gt;&lt;a href="cont-<xsl:value-of select="/strings/string[@id='%lang-code-iso-639-2']/value[lang(current()/@xml:lang)]"/>.html"><xsl:value-of select="/strings/string[@id='%tmpl-home']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;</xsl:when>
	<xsl:otherwise>&lt;li&gt;&lt;a href="cont-<xsl:value-of select="./@xml:lang"/>.html"><xsl:value-of select="/strings/string[@id='%tmpl-home']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;</xsl:otherwise>
</xsl:choose>
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-contact-us']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#" rel="license"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-terms']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;

&lt;div class="span-4" lang="<xsl:value-of select="$lang2"/>"&gt;&lt;h1&gt;<xsl:value-of select="/strings/string[@id='%tmpl-msg-title']/value[lang($lang2)]"/>&lt;/h1&gt;
&lt;p&gt;<xsl:value-of select="$tmpl-sample-text-lang2"/><xsl:value-of select="$interword-space-lang2"/><xsl:value-of select="$tmpl-sample-text-lang2"/><xsl:value-of select="$interword-space-lang2"/><xsl:value-of select="$tmpl-sample-text-lang2"/><xsl:value-of select="$interword-space-lang2"/><xsl:value-of select="$tmpl-sample-text-lang2"/><xsl:value-of select="$interword-space-lang2"/><xsl:value-of select="$tmpl-sample-text-lang2"/><xsl:value-of select="$interword-space-lang2"/><xsl:value-of select="$tmpl-sample-text-lang2"/><xsl:value-of select="$interword-space-lang2"/><xsl:value-of select="$tmpl-sample-text-lang2"/><xsl:value-of select="$interword-space-lang2"/><xsl:value-of select="$tmpl-sample-text-lang2"/><xsl:value-of select="$interword-space-lang2"/><xsl:value-of select="$tmpl-sample-text-lang2"/><xsl:value-of select="$interword-space-lang2"/><xsl:value-of select="$tmpl-sample-text-lang2"/><xsl:value-of select="$interword-space-lang2"/><xsl:value-of select="$tmpl-sample-text-lang2"/><xsl:value-of select="$interword-space-lang2"/><xsl:value-of select="$tmpl-sample-text-lang2"/><xsl:value-of select="$interword-space-lang2"/><xsl:value-of select="$tmpl-sample-text-lang2"/><xsl:value-of select="$interword-space-lang2"/><xsl:value-of select="$tmpl-sample-text-lang2"/><xsl:value-of select="$interword-space-lang2"/><xsl:value-of select="$tmpl-sample-text-lang2"/><xsl:value-of select="$interword-space-lang2"/><xsl:value-of select="$tmpl-sample-text-lang2"/><xsl:value-of select="$interword-space-lang2"/><xsl:value-of select="$tmpl-sample-text-lang2"/><xsl:value-of select="$interword-space-lang2"/><xsl:value-of select="$tmpl-sample-text-lang2"/><xsl:value-of select="$interword-space-lang2"/><xsl:value-of select="$tmpl-sample-text-lang2"/><xsl:value-of select="$interword-space-lang2"/><xsl:value-of select="$tmpl-sample-text-lang2"/>&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="<xsl:value-of select="$path_correction"/><xsl:value-of select="$lang2-file"/>"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-home']/value[lang($lang2)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-contact-us']/value[lang($lang2)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#" rel="license"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-terms']/value[lang($lang2)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;
&lt;div class="clear"&gt;&lt;/div&gt;

&lt;div class="span-4" lang="<xsl:value-of select="$lang3"/>"&gt;&lt;h1&gt;<xsl:value-of select="/strings/string[@id='%tmpl-msg-title']/value[lang($lang3)]"/>&lt;/h1&gt;
&lt;p&gt;<xsl:value-of select="$tmpl-sample-text-lang3"/><xsl:value-of select="$interword-space-lang3"/><xsl:value-of select="$tmpl-sample-text-lang3"/><xsl:value-of select="$interword-space-lang3"/><xsl:value-of select="$tmpl-sample-text-lang3"/><xsl:value-of select="$interword-space-lang3"/><xsl:value-of select="$tmpl-sample-text-lang3"/><xsl:value-of select="$interword-space-lang3"/><xsl:value-of select="$tmpl-sample-text-lang3"/><xsl:value-of select="$interword-space-lang3"/><xsl:value-of select="$tmpl-sample-text-lang3"/><xsl:value-of select="$interword-space-lang3"/><xsl:value-of select="$tmpl-sample-text-lang3"/><xsl:value-of select="$interword-space-lang3"/><xsl:value-of select="$tmpl-sample-text-lang3"/><xsl:value-of select="$interword-space-lang3"/><xsl:value-of select="$tmpl-sample-text-lang3"/><xsl:value-of select="$interword-space-lang3"/><xsl:value-of select="$tmpl-sample-text-lang3"/><xsl:value-of select="$interword-space-lang3"/><xsl:value-of select="$tmpl-sample-text-lang3"/><xsl:value-of select="$interword-space-lang3"/><xsl:value-of select="$tmpl-sample-text-lang3"/><xsl:value-of select="$interword-space-lang3"/><xsl:value-of select="$tmpl-sample-text-lang3"/><xsl:value-of select="$interword-space-lang3"/><xsl:value-of select="$tmpl-sample-text-lang3"/><xsl:value-of select="$interword-space-lang3"/><xsl:value-of select="$tmpl-sample-text-lang3"/><xsl:value-of select="$interword-space-lang3"/><xsl:value-of select="$tmpl-sample-text-lang3"/><xsl:value-of select="$interword-space-lang3"/><xsl:value-of select="$tmpl-sample-text-lang3"/><xsl:value-of select="$interword-space-lang3"/><xsl:value-of select="$tmpl-sample-text-lang3"/><xsl:value-of select="$interword-space-lang3"/><xsl:value-of select="$tmpl-sample-text-lang3"/><xsl:value-of select="$interword-space-lang3"/><xsl:value-of select="$tmpl-sample-text-lang3"/>&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="<xsl:value-of select="$path_correction"/><xsl:value-of select="$lang3-file"/>"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-home']/value[lang($lang3)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-contact-us']/value[lang($lang3)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#" rel="license"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-terms']/value[lang($lang3)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;

&lt;div class="span-4" lang="<xsl:value-of select="$lang4"/>"&gt;&lt;h1&gt;<xsl:value-of select="/strings/string[@id='%tmpl-msg-title']/value[lang($lang4)]"/>&lt;/h1&gt;
&lt;p&gt;<xsl:value-of select="$tmpl-sample-text-lang4"/><xsl:value-of select="$interword-space-lang4"/><xsl:value-of select="$tmpl-sample-text-lang4"/><xsl:value-of select="$interword-space-lang4"/><xsl:value-of select="$tmpl-sample-text-lang4"/><xsl:value-of select="$interword-space-lang4"/><xsl:value-of select="$tmpl-sample-text-lang4"/><xsl:value-of select="$interword-space-lang4"/><xsl:value-of select="$tmpl-sample-text-lang4"/><xsl:value-of select="$interword-space-lang4"/><xsl:value-of select="$tmpl-sample-text-lang4"/><xsl:value-of select="$interword-space-lang4"/><xsl:value-of select="$tmpl-sample-text-lang4"/><xsl:value-of select="$interword-space-lang4"/><xsl:value-of select="$tmpl-sample-text-lang4"/><xsl:value-of select="$interword-space-lang4"/><xsl:value-of select="$tmpl-sample-text-lang4"/><xsl:value-of select="$interword-space-lang4"/><xsl:value-of select="$tmpl-sample-text-lang4"/><xsl:value-of select="$interword-space-lang4"/><xsl:value-of select="$tmpl-sample-text-lang4"/><xsl:value-of select="$interword-space-lang4"/><xsl:value-of select="$tmpl-sample-text-lang4"/><xsl:value-of select="$interword-space-lang4"/><xsl:value-of select="$tmpl-sample-text-lang4"/><xsl:value-of select="$interword-space-lang4"/><xsl:value-of select="$tmpl-sample-text-lang4"/><xsl:value-of select="$interword-space-lang4"/><xsl:value-of select="$tmpl-sample-text-lang4"/><xsl:value-of select="$interword-space-lang4"/><xsl:value-of select="$tmpl-sample-text-lang4"/><xsl:value-of select="$interword-space-lang4"/><xsl:value-of select="$tmpl-sample-text-lang4"/><xsl:value-of select="$interword-space-lang4"/><xsl:value-of select="$tmpl-sample-text-lang4"/><xsl:value-of select="$interword-space-lang4"/><xsl:value-of select="$tmpl-sample-text-lang4"/><xsl:value-of select="$interword-space-lang4"/><xsl:value-of select="$tmpl-sample-text-lang4"/>&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="<xsl:value-of select="$path_correction"/><xsl:value-of select="$lang4-file"/>"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-home']/value[lang($lang4)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-contact-us']/value[lang($lang4)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#" rel="license"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-terms']/value[lang($lang4)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;
&lt;div class="clear"&gt;&lt;/div&gt;

&lt;div class="span-4" lang="<xsl:value-of select="$lang5"/>"&gt;&lt;h1&gt;<xsl:value-of select="/strings/string[@id='%tmpl-msg-title']/value[lang($lang5)]"/>&lt;/h1&gt;
&lt;p&gt;<xsl:value-of select="$tmpl-sample-text-lang5"/><xsl:value-of select="$interword-space-lang5"/><xsl:value-of select="$tmpl-sample-text-lang5"/><xsl:value-of select="$interword-space-lang5"/><xsl:value-of select="$tmpl-sample-text-lang5"/><xsl:value-of select="$interword-space-lang5"/><xsl:value-of select="$tmpl-sample-text-lang5"/><xsl:value-of select="$interword-space-lang5"/><xsl:value-of select="$tmpl-sample-text-lang5"/><xsl:value-of select="$interword-space-lang5"/><xsl:value-of select="$tmpl-sample-text-lang5"/><xsl:value-of select="$interword-space-lang5"/><xsl:value-of select="$tmpl-sample-text-lang5"/><xsl:value-of select="$interword-space-lang5"/><xsl:value-of select="$tmpl-sample-text-lang5"/><xsl:value-of select="$interword-space-lang5"/><xsl:value-of select="$tmpl-sample-text-lang5"/><xsl:value-of select="$interword-space-lang5"/><xsl:value-of select="$tmpl-sample-text-lang5"/><xsl:value-of select="$interword-space-lang5"/><xsl:value-of select="$tmpl-sample-text-lang5"/><xsl:value-of select="$interword-space-lang5"/><xsl:value-of select="$tmpl-sample-text-lang5"/><xsl:value-of select="$interword-space-lang5"/><xsl:value-of select="$tmpl-sample-text-lang5"/><xsl:value-of select="$interword-space-lang5"/><xsl:value-of select="$tmpl-sample-text-lang5"/><xsl:value-of select="$interword-space-lang5"/><xsl:value-of select="$tmpl-sample-text-lang5"/><xsl:value-of select="$interword-space-lang5"/><xsl:value-of select="$tmpl-sample-text-lang5"/><xsl:value-of select="$interword-space-lang5"/><xsl:value-of select="$tmpl-sample-text-lang5"/><xsl:value-of select="$interword-space-lang5"/><xsl:value-of select="$tmpl-sample-text-lang5"/><xsl:value-of select="$interword-space-lang5"/><xsl:value-of select="$tmpl-sample-text-lang5"/><xsl:value-of select="$interword-space-lang5"/><xsl:value-of select="$tmpl-sample-text-lang5"/>&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="<xsl:value-of select="$path_correction"/><xsl:value-of select="$lang5-file"/>"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-home']/value[lang($lang5)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-contact-us']/value[lang($lang5)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#" rel="license"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-terms']/value[lang($lang5)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;

&lt;div class="span-4" lang="<xsl:value-of select="$lang6"/>"&gt;&lt;h1&gt;<xsl:value-of select="/strings/string[@id='%tmpl-msg-title']/value[lang($lang6)]"/>&lt;/h1&gt;
&lt;p&gt;<xsl:value-of select="$tmpl-sample-text-lang6"/><xsl:value-of select="$interword-space-lang6"/><xsl:value-of select="$tmpl-sample-text-lang6"/><xsl:value-of select="$interword-space-lang6"/><xsl:value-of select="$tmpl-sample-text-lang6"/><xsl:value-of select="$interword-space-lang6"/><xsl:value-of select="$tmpl-sample-text-lang6"/><xsl:value-of select="$interword-space-lang6"/><xsl:value-of select="$tmpl-sample-text-lang6"/><xsl:value-of select="$interword-space-lang6"/><xsl:value-of select="$tmpl-sample-text-lang6"/><xsl:value-of select="$interword-space-lang6"/><xsl:value-of select="$tmpl-sample-text-lang6"/><xsl:value-of select="$interword-space-lang6"/><xsl:value-of select="$tmpl-sample-text-lang6"/><xsl:value-of select="$interword-space-lang6"/><xsl:value-of select="$tmpl-sample-text-lang6"/><xsl:value-of select="$interword-space-lang6"/><xsl:value-of select="$tmpl-sample-text-lang6"/><xsl:value-of select="$interword-space-lang6"/><xsl:value-of select="$tmpl-sample-text-lang6"/><xsl:value-of select="$interword-space-lang6"/><xsl:value-of select="$tmpl-sample-text-lang6"/><xsl:value-of select="$interword-space-lang6"/><xsl:value-of select="$tmpl-sample-text-lang6"/><xsl:value-of select="$interword-space-lang6"/><xsl:value-of select="$tmpl-sample-text-lang6"/><xsl:value-of select="$interword-space-lang6"/><xsl:value-of select="$tmpl-sample-text-lang6"/><xsl:value-of select="$interword-space-lang6"/><xsl:value-of select="$tmpl-sample-text-lang6"/><xsl:value-of select="$interword-space-lang6"/><xsl:value-of select="$tmpl-sample-text-lang6"/><xsl:value-of select="$interword-space-lang6"/><xsl:value-of select="$tmpl-sample-text-lang6"/><xsl:value-of select="$interword-space-lang6"/><xsl:value-of select="$tmpl-sample-text-lang6"/><xsl:value-of select="$interword-space-lang6"/><xsl:value-of select="$tmpl-sample-text-lang6"/>&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="<xsl:value-of select="$path_correction"/><xsl:value-of select="$lang6-file"/>"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-home']/value[lang($lang6)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-contact-us']/value[lang($lang6)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#" rel="license"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-terms']/value[lang($lang6)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;
&lt;div class="clear"&gt;&lt;/div&gt;

&lt;div class="span-4" lang="<xsl:value-of select="$lang7"/>"&gt;&lt;h1&gt;<xsl:value-of select="/strings/string[@id='%tmpl-msg-title']/value[lang($lang7)]"/>&lt;/h1&gt;
&lt;p&gt;<xsl:value-of select="$tmpl-sample-text-lang7"/><xsl:value-of select="$interword-space-lang7"/><xsl:value-of select="$tmpl-sample-text-lang7"/><xsl:value-of select="$interword-space-lang7"/><xsl:value-of select="$tmpl-sample-text-lang7"/><xsl:value-of select="$interword-space-lang7"/><xsl:value-of select="$tmpl-sample-text-lang7"/><xsl:value-of select="$interword-space-lang7"/><xsl:value-of select="$tmpl-sample-text-lang7"/><xsl:value-of select="$interword-space-lang7"/><xsl:value-of select="$tmpl-sample-text-lang7"/><xsl:value-of select="$interword-space-lang7"/><xsl:value-of select="$tmpl-sample-text-lang7"/><xsl:value-of select="$interword-space-lang7"/><xsl:value-of select="$tmpl-sample-text-lang7"/><xsl:value-of select="$interword-space-lang7"/><xsl:value-of select="$tmpl-sample-text-lang7"/><xsl:value-of select="$interword-space-lang7"/><xsl:value-of select="$tmpl-sample-text-lang7"/><xsl:value-of select="$interword-space-lang7"/><xsl:value-of select="$tmpl-sample-text-lang7"/><xsl:value-of select="$interword-space-lang7"/><xsl:value-of select="$tmpl-sample-text-lang7"/><xsl:value-of select="$interword-space-lang7"/><xsl:value-of select="$tmpl-sample-text-lang7"/><xsl:value-of select="$interword-space-lang7"/><xsl:value-of select="$tmpl-sample-text-lang7"/><xsl:value-of select="$interword-space-lang7"/><xsl:value-of select="$tmpl-sample-text-lang7"/><xsl:value-of select="$interword-space-lang7"/><xsl:value-of select="$tmpl-sample-text-lang7"/><xsl:value-of select="$interword-space-lang7"/><xsl:value-of select="$tmpl-sample-text-lang7"/><xsl:value-of select="$interword-space-lang7"/><xsl:value-of select="$tmpl-sample-text-lang7"/><xsl:value-of select="$interword-space-lang7"/><xsl:value-of select="$tmpl-sample-text-lang7"/><xsl:value-of select="$interword-space-lang7"/><xsl:value-of select="$tmpl-sample-text-lang7"/>&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="<xsl:value-of select="$path_correction"/><xsl:value-of select="$lang7-file"/>"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-home']/value[lang($lang7)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-contact-us']/value[lang($lang7)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#" rel="license"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-terms']/value[lang($lang7)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;
&lt;div class="clear"&gt;&lt;/div&gt;
&lt;!-- MainContentEnd --&gt;
&lt;/div&gt;&lt;/div&gt;
&lt;/div&gt;&lt;/div&gt;
&lt;/div&gt;

&lt;!-- ScriptsStart --&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/settings.js"&gt;&lt;/script&gt;
&lt;!--[if lte IE 8]&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/theme-ogpl/js/theme-ie-min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/pe-ap-ie-min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/jquerymobile/jquery.mobile-ie.min.js"&gt;&lt;/script&gt;
&lt;![endif]--&gt;
&lt;!--[if gt IE 8]&gt;&lt;!--&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/theme-ogpl/js/theme-min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/pe-ap-min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/jquerymobile/jquery.mobile.min.js"&gt;&lt;/script&gt;
&lt;!--&lt;![endif]--&gt;
&lt;!-- ScriptsEnd --&gt;

&lt;!-- CustomScriptsStart --&gt;
&lt;!-- CustomScriptsEnd --&gt;
&lt;/body&gt;
&lt;/html&gt;</xsl:template>
	
</xsl:stylesheet>