<?xml version="1.0"?>
<recipe>

    <#include "activity_layout_recipe.xml.ftl" />

    <instantiate from="src/app_package/activity.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <instantiate from="src/app_package/api.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/request/api/${apiClass}.java" />

    <instantiate from="src/app_package/contract.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/request/contract/${contractClass}.java" />

    <instantiate from="src/app_package/presenter.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/request/presenter/${presenterClass}.java" />

    <instantiate from="src/app_package/tag.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/request/tag/${tagClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

</recipe>
