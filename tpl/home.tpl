<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
    [{block name="admin_home_head"}]
        <title>[{oxmultilang ident="MAIN_TITLE"}]</title>
        <link rel="stylesheet" href="[{$oViewConf->getResourceUrl()}]main.css">
        <link rel="stylesheet" href="[{$oViewConf->getResourceUrl()}]colors_[{$oViewConf->getEdition()|lower}].css">
        <meta http-equiv="Content-Type" content="text/html; charset=[{$charset}]">
    [{/block}]
</head>
<body>

<script type="text/javascript">
    parent.sShopTitle = "[{$actshop|oxaddslashes}]";
    parent.setTitle();
</script>

<h1>[{oxmultilang ident="NAVIGATION_HOME"}]</h1>
<p class="desc">
    <b>[{oxmultilang ident="HOME_DESC"}]</b>
</p>
<hr>

[{if $aMessage}]
    <div class="messagebox">
        [{oxmultilang ident="MAIN_INFO"}]:<br>
        [{foreach from=$aMessage item=sMessage key=class}]
            <p class="[{$class}]">[{$sMessage}]</p>
        [{/foreach}]
    </div>
    <hr>
[{/if}]

[{block name="admin_home_navigation_items"}]

    <table width="100%" height="84%">
    [{assign var="shMen" value=1}]

    [{foreach from=$menustructure item=menuholder}]
    [{if $shMen && $menuholder->nodeType == XML_ELEMENT_NODE && $menuholder->childNodes->length}]

        [{assign var="nrCol" value=1}]
        [{assign var="ttCol" value=1}]
        [{assign var="mxCol" value=3}]
        [{assign var="inCol" value=$menuholder->childNodes->length/$mxCol|round}]
        [{assign var="shMen" value=0}]
        [{assign var="mn" value=1}]
            <tr>
            <td valign="top" width="30%">
            [{foreach from=$menuholder->childNodes item=menuitem}]
            [{if $menuitem->nodeType == XML_ELEMENT_NODE && $menuitem->childNodes->length}]
                [{assign var="sb" value=1}]
                <dl [{if $nrCol == 1}]class="first"[{/if}]>
                    <dt>[{oxmultilang ident=$menuitem->getAttribute('name')|default:$menuitem->getAttribute('id')}]</dt>
                    <dd>
                        <ul>
                        [{strip}]
                        [{foreach from=$menuitem->childNodes item=submenuitem}]
                        [{if $submenuitem->nodeType == XML_ELEMENT_NODE}]
                            <li>
                                <a href="[{$submenuitem->getAttribute('link')}]" onclick="_homeExpAct('nav-1-[{$mn}]','nav-1-[{$mn}]-[{$sb}]');" target="basefrm"><b>[{oxmultilang ident=$submenuitem->getAttribute('name')|default:$submenuitem->getAttribute('id')}]</b></a>
                            </li>
                            [{assign var="sb" value=$sb+1}]
                        [{/if}]
                        [{/foreach}]
                        [{/strip}]
                        </ul>
                    </dd>
                </dl>
                [{assign var="mn" value=$mn+1}]
                [{if $nrCol == $inCol && $ttCol<$mxCol}]
                    </td><td width="5%"></td><td valign="top" width="30%">
                    [{assign var="nrCol" value=1}]
                    [{assign var="ttCol" value=$ttCol+1}]
                [{else}]
                    [{assign var="nrCol" value=$nrCol+1}]
                [{/if}]

            [{/if}]
            [{/foreach}]
            </td>
            </tr>
    [{/if}]
    [{/foreach}]
[{/block}]
</table>
<script type="text/javascript">
    <!--
    function _homeExpAct(mnid,sbid){
        top.frames['navigation'].adminnav._navExtExpAct(mnid,sbid);
    }
    //-->
    </script>
</body>
</html>