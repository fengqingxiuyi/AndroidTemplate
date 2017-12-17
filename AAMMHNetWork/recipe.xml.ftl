<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

    <instantiate from="src/app_package/activity.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <instantiate from="src/app_package/bean.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/bean/${beanClass}.java" />

    <instantiate from="src/app_package/api.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/api/${apiClass}.java" />

    <instantiate from="src/app_package/contract.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/contract/${contractClass}.java" />

    <instantiate from="src/app_package/presenter.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/presenter/${presenterClass}.java" />

    <instantiate from="src/app_package/tag.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/tag/${tagClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

</recipe>
