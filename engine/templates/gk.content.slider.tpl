<script>
$('.sliderImages').cycle({ 
    fx:     'turnDown', 
    speed:  'fast', 
    timeout: 0, 
    pager:  '.sliderNav', 
    pagerAnchorBuilder: function(idx, slide) { 
        // return selector string for existing anchor 
        return '.sliderNav li:eq(' + idx + ') a'; 
    } 
});
</script>
					
<div class="GK sliderBlock">

	<ul class="sliderNav">
		<li><a href="#">
			<div class="Arrow"></div>
			<div class="Tit">ВОПЛОТИ МЕЧТУ!</div>
			<div class="Text">Ежегодно на участие в лотерее заявки подают миллионы людей со всего мира!</div>
		</a></li>
		<li><a href="#">
			<div class="Arrow"></div>
			<div class="Tit">ПРОВЕРЬ СЕБЯ!</div>
			<div class="Text">В этом году лотерея Green Crad будет проходить последний раз!</div>
		</a></li>
		<li><a href="#">
			<div class="Arrow"></div>
			<div class="Tit">УЧАСТВУЙ!</div>
			<div class="Text">В этом году  последний шанс воплотить свою американскую мечту!</div>
		</a></li>
		<li><a href="#">
			<div class="Arrow"></div>
			<div class="Tit">МЫ ПОМОЖЕМ!</div>
			<div class="Text">МЫ - сильный, сплочённый коллектив профессионалов!</div>
		</a></li>
	</ul>

	<div class="sliderImages">
		<div>
			<div class="BlockContent">
				<div style="padding:20px;">
					<div class="Tit">До 45% всех заявлений прошлых лет было ошибочно и поэтому дисквалифицировано</div>
					<div class="Text"><span class="highlight">Это означает:</span> почти половина заявителей,  упускают свой шанс на участие в лотерее из-за подчас минимальных ошибок.</div>
					<ul>
						<li>На сегодняшний день мы проложили путь к гринкарте для <span style="color:#e30613; text-transform: uppercase; font-weight:bold;">более чем 10,000 человек.</span></li>
						<li><span class="highlight">Мы одна из самых больших и известных компаний в этой области в Европе и  теперь нам доверяют все континенты!</span></li>
					</ul>
				</div>
			</div>
			<div class="SliderBtnPlaceholder">
				<a href="{$cms->sections[57]['url_full']}" class="btn btn-lg btn-caps btn-orange">Заполнить анкету!</a>
			</div>
			<img src="{$PATH_IMAGES}gk/gk_slide_1.jpg">
		</div>
		<div>
			<div class="BlockContent">
				<div style="padding:20px;">
					<div class="Tit">В этом году лотерея Green Card будет проходить последний раз!</div>
					<div class="Text"><span style="color:#e30613; font-weight:bold;">Лотерея Грин карт</span> – это шанс для сотен тысяч людей, мечтающих жить в Соединенных Штатах Америки.</div>
					<ul>
						<li>Принять участие в лотерее Green Card может практически каждый.</li>
						<li>Что бы убедится, что и Вы входите в число тех счастливчиков, <span class="highlight">нужно просто заполнить анкету!</span></li>
					</ul>
					<div style="font-size: 20px; color:#e30613; text-transform: uppercase; font-weight:bold; padding-top: 10px;">Успехов!</div>
				</div>
			</div>
			<div class="SliderBtnPlaceholder">
				<a href="{$cms->sections[56]['url_full']}" class="btn btn-lg btn-caps btn-orange">Пройди тест!</a>
			</div>
			<img src="{$PATH_IMAGES}gk/gk_slide_2.jpg">
		</div>
		<div>
			<div class="BlockContent">
				<div style="padding:20px;">
					<div class="Tit">В этом году <span style="text-decoration:underline">последний шанс</span> воплотить свою американскую мечту!</div>
					<div class="Text"><p>На получение иммиграционной визы могут рассчитывать только лица, имеющие в США близких родственников; деятели науки и культуры, спортсмены, известные своими высокими достижениями в этих областях; либо граждане, способные инвестировать значительные средства в различные отрасли американской экономики.</p>

					<p style="padding-top: 10px"><span class="highlight">Остальным может помочь только лотерея Грин кард.</span></p></div>
					<div style="color:#e30613; font-weight:bold; font-size:20px; padding-top: 10px; text-transform: uppercase;">Не упусти свой шанс!</div>
				</div>
			</div>
			<div class="SliderBtnPlaceholder">
				<a href="{$cms->sections[57]['url_full']}" class="btn btn-lg btn-caps btn-orange">Заполнить анкету!</a>
			</div>
			<img src="{$PATH_IMAGES}gk/gk_slide_3.jpg">
		</div>
		<div>
			<div class="BlockContent">
				<div style="padding:20px;">
					<div class="Tit">МЫ - сильный, сплочённый коллектив профессионалов!</div>
					<ul>
						<li>Мы работаем  в соответствии со всеми законами о защите эмигрантов.</li>
						<li><span class="highlight">Наша цель:</span> обеспечить профессиональную и надежную помощь всем желающим получить возможность жить, учиться и трудиться <span class="highlight">в США.</span></li>
					</ul>
					<div style="color:#e30613; font-weight:bold; font-size:20px; padding-top: 10px; text-transform: uppercase;">Доверьтесь нам, и мы обеспечим гарантированное участие в лотерее DV-2017</div>
				</div>
			</div>
			<div class="SliderBtnPlaceholder">
				<a href="{$cms->sections[57]['url_full']}" class="btn btn-lg btn-caps btn-orange">Заполнить анкету!</a>
			</div>
			<img src="{$PATH_IMAGES}gk/gk_slide_4.jpg">	
		</div>				
	</div>
						
	<div class="clear"></div>
	
</div>