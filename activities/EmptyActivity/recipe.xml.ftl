<?xml version="1.0"?>
<recipe>
<#if modularization>
	<#include "../modularization/recipe_manifest.xml.ftl" />
</#if>
<#if !modularization>
    <#include "../common/recipe_manifest.xml.ftl" />
</#if>

<#if modularization>
	<mkdir at="${escapeXmlAttribute(projectOut)}/src/main/debug" />
    <mkdir at="${escapeXmlAttribute(projectOut)}/src/main/release" />
    <mkdir at="${escapeXmlAttribute(projectOut)}/src/main/java/debug" />
</#if>

<#if generateLayout>
    <#include "../common/recipe_simple.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

    <instantiate from="root/src/app_package/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
</recipe>
