<h2>{$cms->section['title']}</h2>
{$cms->section['text']}

<div id="form" style="padding-top: 20px;">
<div style="padding: 10px 20px; background: #a7d4d7; color:#346665; font-size:14px;">
{if $step=='confirm-ok' || $step=='confirm-error'}
	Шаг 1 (регистрация) -> Шаг 2 (загрузить фото) -> Шаг 3 (оплата) -> <b>Шаг 4 (подтверждение)</b>
{elseif $step=='payment'}
	Шаг 1 (регистрация) -> Шаг 2 (загрузить фото) -> <b>Шаг 3 (оплата)</b> -> Шаг 4 (подтверждение)
{elseif $step=='photo'}
	Шаг 1 (регистрация) -> <b>Шаг 2 (загрузить фото)</b>  -> Шаг 3 (оплата) -> Шаг 4 (подтверждение)
{else}
	<b>Шаг 1 (регистрация)</b> -> Шаг 2 (загрузить фото) -> Шаг 3 (оплата) -> Шаг 4 (подтверждение)
{/if}
</div></div>

{assign var="info" value=CMS::returnInfo(1)}
{if $info}<br><br><div class="SimpleInformation"><div>{$info}</div></div>{/if}

<br>

{if $step=='confirm-ok'}

	<div style="padding:20px 0;border-top:2px dashed #008000;border-bottom:2px dashed #008000;">
		<span style="color:#008000;font-size:16px"><i class="fa fa-exclamation-circle fa-lg"></i>&nbsp;<strong>Спасибо. Ваша оплата получена.</strong><br /> С Вами свяжутся.</span>
	</div>

{elseif $step=='confirm-error'}

<div style="padding:20px 0;border-top:2px dashed #FF0000;border-bottom:2px dashed #008000;">
	<span style="color:#FF0000;font-size:16px"><i class="fa fa-exclamation-circle fa-lg"></i>&nbsp;<strong>Ваша оплата не получена.</strong>
<br />Напишите пожалуйста на <a href="mailto:nasha.greencard@gmail.com">nasha.greencard@gmail.com</a></span>
</div>


{elseif $step=='payment'}

	<form action="#form" method="post">
	<div class="well">
		<div class="form-group">	
			<label>Выберите пакет</label>		
			<div class="radio"><label><input type="radio" name="item" value="individual" /> Индивидуальный (30$)</label></div>
			<div class="radio"><label><input type="radio" name="item" value="family" /> Супружеский (45$)</label></div>
		</div>	

		<div class="form-group">		
		<label>Оплата</label>
			<div class="radio"><label><input type="radio" name="payment" value="paypal" /> PayPal</label></div>
			<div class="radio"><label><input type="radio" name="payment" value="firstdata" /> Credit Cards (VISA, MasterCard, American Express)</label></div>
			<div class="radio"><label><input type="radio" name="payment" value="yandex_money" /> Яндекс деньги</label></div>
		</div>
		
		<input type="submit" value="Перейти к оплате" class="btn btn-gkdark">

	</div>
	<input type="hidden" name="action" value="payment">
	</form>
	
{elseif $step=='photo'}

	<form action="#form" method="post">
		<div class="well">
		<div class="form-group">	
			<label for "file">Выберите Ваше фото:</label>
			<input type="file" name="uploadPhoto" value="">
			<input type="hidden" name="action" value="send_photo">
		</div>
		<input type="submit" value="Сохранить и перейти к следующему шагу" class="btn btn-gkdark">
		</div>
	</form>

{else}

	<form action="#form" method="post">
    <div class="well">
	    <h1>Личные сведения заявителя</h1>
	    
	    <div class="form-group">
	        <label for="personal_info[title]">Обращение</label>
	        <select name="personal_info[title]" style="width:308px;" class="form-control input-sm"> 
				<option value=""></option>
				<option value="Mr.">Mr.</option>
				<option value="Ms.">Ms.</option>
				<option value="Dr.">Dr.</option>
			</select>
	    </div>
	    <div class="form-group">
	        <label for "personal_info[name]">Имя</label>
	        <input name="personal_info[name]" value="" maxlength="36" size="19"  type="text" style="width:300px;" class="form-control input-sm">
	    </div>
	    <div class="form-group">
	        <label for "personal_info[surname]">Фамилия</label>
	        <input name="personal_info[surname]" value="" maxlength="36" size="19"  type="text" style="width:300px;"  class="form-control input-sm">
	    </div>
	    <div class="form-group">
	        <label for "personal_info[email]">Эл. адрес</label>
	        <input name="personal_info[email]" value="" maxlength="50" size="19"  type="text" style="width:300px;" class="form-control input-sm">
	    </div>
	    <div class="form-group">
	        <label for "personal_info[phone]">Телефон</label>
	        <input name="personal_info[phone]" maxlength="25" size="19" type="text" style="width:300px;" class="form-control input-sm">
	    </div>
		<div class="form-group">
			<label for "personal_info[gender]">Пол</label>
			<select name="personal_info[gender]" style="width:308px;" class="form-control input-sm">
			<option value=""></option>
			<option value="M">мужской</option>
			<option value="F">женский</option>
			</select>
		</div>
		<div class="form-group">
			<label for "personal_info[education]">Образование</label>
			<select name="personal_info[education]" style="width:308px;" class="form-control input-sm">
			<option value=""></option>
			<option value="Primary school only">Только начальная школа</option>
			<option value="High school, no degree">Средняя школа, без диплома</option>
			<option value="High school degree">Диплом средней школы</option>
			<option value="Vocational school">Профессиональное училище</option>
			<option value="Some university courses">Обучение в университете</option>
			<option value="University degree">Диплом университета</option>
			<option value="Some graduate level courses">Обучение в аспирантуре</option>
			<option value="Master degree">Степень магистра</option>
			<option value="Some doctorate level courses">Обучение на докторскую степень</option>
			<option value="Doctorate degree">Докторская степень</option>
			</select>
		</div>
	</div>

	
	<div class="well">
	    <h1>Адресные данные</h1>
	    <div class="form-group"> 
	        <label for "address[main]">Улица и дом</label>
	        <input name="address[main]" maxlength="36" size="19"  type="text" style="width:300px;" class="form-control input-sm">
	    </div>
	    <div class="form-group">
	        <label for "address[postal]">Почтовый индекс, город</label>
	        <div class="form-inline">
		        <input name="address[postal]" maxlength="10" size="19" type="text" class="form-control input-sm">
		        <input name="address[city]" maxlength="30" size="19" type="text" class="form-control input-sm">
	        </div>
	    </div>
		<div class="form-group">
			<label for "address[country]">Страна</label>
			<select name="address[country]" style="width:308px;" class="form-control input-sm">
				<option value=""></option>
				{foreach $gk_CountriesList as $v}
					<option value="{$v['key']}">{$v['title_en']}</option>
				{/foreach}
			</select>
	    </div>
	</div>
	
	
	<div class="well">
	    <h1>Персональные данные</h1>
	    <div class="form-group">
		    <label for "personal_data[birthday][day]">День рождения</label>
		    <div class="form-inline">
		    <select name="personal_data[birthday][day]" class="form-control input-sm">
				<option value=""></option>
				{for $i=1;$i<=31;$i++}
				<option value="{$i}">{$i}</option>
				{/for}
			</select>
			<select name="personal_data[birthday][month]"  class="form-control input-sm">
				<option value=""></option>
				<option value="01">Январь</option>
				<option value="02">Февраль</option>
				<option value="03">Март</option>
				<option value="04">Апрель</option>
				<option value="05">Май</option>
				<option value="06">Июнь</option>
				<option value="07">Июль</option>
				<option value="08">Август</option>
				<option value="09">Сентябрь</option>
				<option value="10">Октябрь</option>
				<option value="11">Ноябрь</option>
				<option value="12">Декабрь</option>
			</select>
		    <input name="personal_data[birthday][year]" maxlength="4"  size="4" type="text"  class="form-control input-sm">
		    </div>             
	    </div>
	    <div class="form-group">
	        <label for "personal_data[birth_city]">Место рождения - город</label>
	        <input name="personal_data[birth_city]" maxlength="36" ize="19" type="text" style="width:300px;"  class="form-control input-sm">
	    </div>
	    <div class="form-group">
	        <label for "personal_data[birth_country]">Место рождения - страна</label>
	        <select name="personal_data[birth_country]" style="width:308px;"  class="form-control input-sm">
				<option value=""></option>
				{foreach $gk_CountriesList as $v}
					<option value="{$v['key']}">{$v['title_en']}</option>
				{/foreach}
			</select>
	    </div>
	    <div class="form-group">
	        <p style="font-size: 11px;" class="help-block"><em>Вы родились в стране, которая исключена! Если ваш супруг/супруга родился(ась) в стране, которая позволяет участвовать в лотерее, либо если Ваши родители только временно проживали в стране, в которой Вы родились, выберите здесь страну рождения своего супруга(ги) или родителей. <strong>В противном случае Вы не можете участвовать в лотерее!</strong></em></p>
	        <label for "personal_data[native_country]">Уроженец какой страны</label>
	        <select name="personal_data[native_country]" style="width:308px;" class="form-control input-sm">
			<option value=""></option>
			{foreach $gk_CountriesList as $v}
				<option value="{$v['key']}">{$v['title_en']}</option>
			{/foreach}
			</select>
	    </div>

	    <div class="form-group">
	        <label for "personal_data[marital_status]">Семейное положение</label>
	        <select name="personal_data[marital_status]" style="width: 308px;"  class="form-control input-sm">
				<option value=""></option>
				<option value="0">не состою в браке</option>
				<option value="1">состою в браке</option>
				<option value="S">разведен(а)</option>
				<option value="W">вдовец(ва)</option>
			</select>
	    </div>
	    <div class="form-group">
		    <p class="help-block"><em>Пожалуйста, укажите также всех детей Вашего/й супруга/и</em></p>
		    <label for "personal_data[childrens]">Дети, не состоящие в браке и родившиеся после 1-го окт. 1994 г.</label>
		    <select name="personal_data[childrens]" style="width: 308px;"  class="form-control input-sm">
				<option value=""></option>
				<option value="0">0</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
			</select>
	    </div>
    </div>
    
    
	<input type="hidden" name="action" value="send_main_data">
	<input type="submit" value="Перейти к следующему шагу" class="btn btn-gkdark">
	</form>

{/if}