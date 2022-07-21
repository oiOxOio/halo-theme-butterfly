<#--js-->
<#macro script  type is_search>
    <script src="${BASE_RES_URL!}/source/lib/lazysizes/lazysizes.min.js"></script>

<#--加载-->
<#--    <script src="${BASE_RES_URL!}/source/lib/pace/pace.min.js"></script>-->
<#--背景-->
    <#if settings.enable_background_strip>
    <!-- 背景的动态条生成 -->
    <script src="${BASE_RES_URL!}/source/lib/effect/backdrop/balloon.js"></script>
    </#if>
    <#if type == 'index' && (!is_search && settings.enable_top_background_img &&   settings.enable_top_index_background_img)>
        <script src="${BASE_RES_URL!}/source/lib/typed/typed.min.js"></script>
    </#if>

    <#if type == 'post' || type == 'journals'>
<#--        <script src="${BASE_RES_URL!}/source/lib/prism/prism.min.js"></script>-->
        <script src="${BASE_RES_URL!}/source/lib/clipboard/clipboard.min.js"></script>
        <script src="${BASE_RES_URL!}/source/lib/qmsg/qmsg.js"></script>
        <script src="${BASE_RES_URL!}/source/lib/fancybox/jquery.fancybox.min.js"></script>
        <script src="${BASE_RES_URL!}/source/lib/jquery-qrcode/jquery.qrcode.min.js"></script>
        <script src="${BASE_RES_URL!}/source/lib/tocbot/tocbot.min.js"></script>
    </#if>

    <#if  type == 'categories'>
        <script src="${BASE_RES_URL!}/source/lib/echarts/echarts.min.js"></script>
    </#if>

    <#--  评论模块  -->
    <#if type == 'post' || type == 'sheet' || type == 'journals'>
        <script src="${BASE_RES_URL!}/source/lib/vue@2.6.10/vue.min.js"></script>
        <script src="${BASE_RES_URL!}/source/lib/halo-comment/halo-comment.min.js"></script>
    </#if>

<#-- 线上  -->
    <#if  mode == 'production'>
        <script src="${BASE_RES_URL!}/source/js/min/by.utils.min.js"></script>
        <script src="${BASE_RES_URL!}/source/js/min/by.common.min.js"></script>
        <script src="${BASE_RES_URL!}/source/js/min/by.search.min.js"></script>
        <#if  type !='sheet'>
            <script src="${BASE_RES_URL!}/source/js/min/by.${type}.min.js"></script>
        </#if>
    </#if>

    <#if type == 'post' || type == 'journals'>
        <script src="${BASE_RES_URL!}/source/lib/prism/prism.min.js"></script>
    </#if>



</#macro>

