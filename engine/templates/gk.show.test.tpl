{if $cms->module['url'][0]=='ok'}

<h2>Отбор кандидатов на гринкарту</h2>

<br>

<div style="padding:20px 0;border-top:2px dashed #008000;border-bottom:2px dashed #008000;">
<span style="color:#008000;font-size:16px"><i class="fa fa-exclamation-circle fa-lg"></i>  <strong>Поздравляем!</strong> Вы отвечаете требованиям для участия в лотереи гринкарт.</span>
</div>
<br /><br />
<a class="btn btn-gkdark" href="{$cms->sections[57]['url_full']}">Далее на регистрацию</a>

{else}

<h2>{$cms->section['title']}</h2>
{$cms->section['text']}

<br><br>

<form id="form" method="post">
<div class="well">

<div class="form-group">
	<label>В какой стране Вы родились? Выбрать (на английском языке) <font color="red">*</font></label>
	<select name="country_id" style="width:308px;" class="form-control input-sm">
		<option value=""></option>
		{foreach $gk_CountriesList as $v}
			<option value="{$v['key']}"{if $smarty['post']['country_id']==$v['key']} selected="selected"{/if}>{$v['title_en']}</option>
		{/foreach}
	</select>
</div>

<div class="form-group">
	<label>Ваше образование: <font color="red">*</font></label>
	<select name="education" style="width:308px;" class="form-control input-sm">
		<option value=""></option>
		<option value="начальное образование"{if $smarty['post']['education']=='начальное образование'} selected="selected"{/if}>начальное образование</option>
		<option value="не законченное среднее образование"{if $smarty['post']['education']=='не законченное среднее образование'} selected="selected"{/if}>не законченное среднее образование</option>
		<option value="среднее школьное образование"{if $smarty['post']['education']=='среднее школьное образование'} selected="selected"{/if}>среднее школьное образование</option>
		<option value="профессиональное образование"{if $smarty['post']['education']=='профессиональное образование'} selected="selected"{/if}>профессиональное образование</option>
		<option value="не законченное высшее образование"{if $smarty['post']['education']=='не законченное высшее образование'} selected="selected"{/if}>не законченное высшее образование</option>
		<option value="высшее образование"{if $smarty['post']['education']=='высшее образование'} selected="selected"{/if}>высшее образование</option>
	</select>
</div>

<div class="form-group">
	<label>Проработали ли Вы 2 года в течение последних пяти лет по профессии, обучение которой заняло у Вас по меньшей мере два года? <font color="red">*</font></label>
	<select name="work" style="width:308px;" class="form-control input-sm">
		<option value=""></option>
		<option value="Yes"{if $smarty['post']['work']=='Yes'} selected="selected"{/if}>Да</option>
		<option value="No"{if $smarty['post']['work']=='No'} selected="selected"{/if}>Нет</option>
	</select>

</div>

<div class="form-group">
	<label>Вы замужем/ женаты? <font color="red">*</font></label>
	<select name="married" style="width:308px;" class="form-control input-sm">
		<option value=""></option>
		<option value="Yes"{if $smarty['post']['married']=='Yes'} selected="selected"{/if}>Да</option>
		<option value="No"{if $smarty['post']['married']=='No'} selected="selected"{/if}>Нет</option>
	</select>
</div>

<div class="form-group">
	<label>Эл-почта <font color="red">*</font></label>
	<input type="text" name="email" value="{$smarty['post']['email']}" style="width:300px;"  class="form-control input-sm"/>
</div>

<input type="hidden" name="action" value="check">
<input type="submit" value="Проверить" class="btn btn-gkdark" />
</div>
</form>

<div style="padding:10px;border:1px dashed #346665;border-radius:4px;">
<span style="color:#346665; font-size:14px">Ваши данные обрабатываются  строго конфиденциально и не раскрываются никаким третьим лицам, кроме американских властей.</span>
</div>
{/if}