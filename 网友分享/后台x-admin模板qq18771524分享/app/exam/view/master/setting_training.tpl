{x2;globaltpl:ad_header}<body><div class="container-fluid">	<div class="row-fluid">		<div class="pep">			<div id="datacontent">				<div class="settingbar">					<a href="index.php?exam-master-setting" class="btn btn-default">基本设置</a>					<a href="index.php?exam-master-setting-training" class="btn btn-primary">培训类型</a>					<a href="index.php?exam-master-setting-questype" class="btn btn-default">题型设置</a>				</div>				<div class="panel panel-default">					<div class="panel-heading">						培训列表						<a href="index.php?exam-master-setting-addtraining" class="pull-right">增加</a>					</div>					<div class="panel-body">						<form action="index.php?exam-master-setting-deltrainings" method="post">							<table class="table table-hover table-bordered">								<thead>								<tr class="info">									<th width="30"><input type="checkbox" class="checkall" target="delids"/></th>									<th>培训名称</th>									<th width="100">操作</th>								</tr>								</thead>								<tbody>                                {x2;tree:$trainings['data'],training,tid}								<tr>									<td>                                        <input type="checkbox" name="delids[{x2;v:training['trid']}]" value="1">									</td>									<td>{x2;v:training['trname']}</td>									<td>										<ul class="list-unstyled list-inline">											<li><a href="index.php?exam-master-setting-modifytraining&trid={x2;v:training['trid']}&page={x2;$page}{x2;$u}">修改</a></li>                                            <li><a msg="删除后不可恢复，您确定要进行此操作吗？" class="confirm" href="index.php?exam-master-setting-deltraining&trid={x2;v:training['trid']}&page={x2;$page}{x2;$u}">删除</a></li>                                        </ul>									</td>								</tr>                                {x2;endtree}								</tbody>							</table>							<div class="form-group">								<div class="controls">									<input type="hidden" name="action" value="delete"/>									<button class="btn btn-primary" type="submit">删除</button>								</div>							</div>						</form>						{x2;if:$trainings['pages']}						<ul class="pagination pull-right">                            {x2;$trainings['pages']}						</ul>						{x2;endif}					</div>				</div>			</div>		</div>	</div></div></body></html>