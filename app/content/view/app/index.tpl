{x2;include:header}<body>{x2;include:nav}<div class="container-fluid">	<div class="row-fluid swiper-container">		<div class="swiper-wrapper">			<div class="swiper-slide">				<img src="public/static/images/b1.jpg" width="100%"/>			</div>			<div class="swiper-slide">				<img src="public/static/images/b2.jpg" width="100%"/>			</div>		</div>		<div class="swiper-pagination"></div>	</div></div><div class="container-fluid">	<div class="row-fluid panels bg">		<div class="pep panels bg">			<div class="col-xs-12">				<div class="pagebox">					<h2 class="title col-xs-12">						最新课程					</h2>					<div style="clear: both">                        {x2;tree:$lessons['data'],lesson,lid}						<div class="col-xs-3">							<a href="index.php?lesson-app-lesson&lessonid={x2;v:lesson['lessonid']}" class="thumbnail">								<img src="{x2;v:lesson['lessonthumb']}" alt="">							</a>							<p class="text-center">                                {x2;v:lesson['lessonname']}							</p>						</div>                        {x2;endif}					</div>				</div>			</div>		</div>	</div></div><div class="container-fluid">	<div class="row-fluid panels">		<div class="pep panels">			<div class="col-xs-12">				<div class="pagebox">					<h2 class="title col-xs-12">						最新考试					</h2>					<div style="clear: both">                        {x2;tree:$trainings,training,tid}						<div class="col-xs-3">							<a href="index.php?exam-app-index-training&trid={x2;v:training['trid']}" class="thumbnail">								<img src="{x2;v:training['trthumb']}" alt="">							</a>							<p class="text-center">                                {x2;v:training['trname']}							</p>						</div>                        {x2;endif}					</div>				</div>			</div>		</div>	</div></div><div class="container-fluid">	<div class="row-fluid panels bg">		<div class="pep panels bg">			<div class="pagebox">				<div class="col-xs-6">					<h2 class="title col-xs-12">						<a href="index.php?content-app-category&catid=2"> 考试公告</a>					</h2>					<div style="clear: both" class="panel-body">						<ul class="list-group">                            {x2;tree:$contents[2]['data'],content,cid}							<li class="list-group-item">								<a href="index.php?content-app-content&contentid={x2;v:content['contentid']}">                                    {x2;v:content['contenttitle']}								</a>							</li>                            {x2;endtree}						</ul>					</div>				</div>				<div class="col-xs-6">					<h2 class="title col-xs-12">						<a href="index.php?content-app-category&catid=3"> 报考指南</a>					</h2>					<div style="clear: both" class="panel-body">						<ul class="list-group">                            {x2;tree:$contents[3]['data'],content,cid}							<li class="list-group-item">								<a href="index.php?content-app-content&contentid={x2;v:content['contentid']}">                                    {x2;v:content['contenttitle']}								</a>							</li>                            {x2;endtree}						</ul>					</div>				</div>			</div>		</div>	</div></div><script>	$(function(){        var mySwiper = new Swiper('.swiper-container', {            "pagination":".swiper-pagination",            "loop":true,            "autoplay": 5000,            "observer":true,            "observeParents":true        });	});</script>{x2;include:footer}</body></html>