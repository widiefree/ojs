{**
 * step5.tpl
 *
 * Copyright (c) 2003-2004 The Public Knowledge Project
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Step 5 of journal setup.
 *
 * $Id$
 *}

{assign var="pageTitle" value="manager.setup.journalSetup"}
{assign var="currentUrl" value="$pageUrl/manager/setup"}
{include file="common/header.tpl"}

<div><a href="{$pageUrl}/manager/setup/4">&lt;&lt; {translate key="manager.setup.previousStep"}</a> | <span class="disabledText">{translate key="manager.setup.nextStep"} &gt;&gt;</span></div>

<br />

<div class="subTitle">{translate key="manager.setup.stepNumber" step=5}: {translate key="manager.setup.gettingDownTheDetails"}</div>

<br />

<form method="post" action="{$pageUrl}/manager/saveSetup/5" enctype="multipart/form-data">
{include file="common/formErrors.tpl"}

<div class="formSectionTitle">5.1 {translate key="manager.setup.journalHeader"}</div>
<div class="formSection">
<div class="formSubSectionTitle">{translate key="manager.setup.journalTitle"}</div>
<table class="form">
<tr>
	<td class="formFieldLeft"><input type="radio" name="headerTitleType" value="0"{if not $headerTitleType} checked="checked"{/if} /></td>
	<td class="formLabelRightPlain">{translate key="manager.setup.useTextTitle"}: <input type="text" name="journalHeaderTitle" value="{$journalHeaderTitle|escape}" size="30" maxlength="255" class="textField" /></td>
</tr>
<tr>
	<td class="formFieldLeft"><input type="radio" name="headerTitleType" value="1"{if $headerTitleType} checked="checked"{/if} /></td>
	<td class="formLabelRightPlain">{translate key="manager.setup.useImageTitle"}: <input type="file" name="journalHeaderTitleImage" class="textField" /></td>
</tr>
</table>

<br />

<table class="form">
<tr>
	<td></td>
	<td class="formField"><input type="submit" value="{translate key="common.save"}" class="formButton" /> <input type="button" value="{translate key="common.cancel"}" class="formButtonPlain" onclick="document.location.href='{$pageUrl}/manager/setup'" /></td>
</tr>
</table>

</form>

{include file="common/footer.tpl"}