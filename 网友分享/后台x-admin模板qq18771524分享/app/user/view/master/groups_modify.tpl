{x2;globaltpl:ad_header}<body><div class="container-fluid">	<div class="row-fluid">		<div class="pep">			<div id="datacontent">				<ol class="breadcrumb">					<li><a href="index.php?{x2;$_route['app']}-master-groups">用户组</a></li>					<li class="active">修改用户组</li>				</ol>				<div class="panel panel-default">					<div class="panel-heading">修改用户组</div>					<div class="panel-body">						<form action="index.php?user-master-groups-modify" method="post" class="form-horizontal">							<fieldset>								<div class="form-group">									<label for="groupname" class="control-label col-sm-2">组名：</label>									<div class="col-sm-3">										<input type="text" class="form-control" value="{x2;$group['groupname']}" size="40" name="args[groupname]" needle="needle" id="groupname" msg="您必须填写用户组名"/>									</div>								</div>								<div class="form-group">									<label for="groupcode" class="control-label col-sm-2">代码：</label>									<div class="col-sm-3">										<span class="help-block">{x2;$group['groupcode']}</span>									</div>								</div>								<div class="form-group">									<label for="groupmodel" class="control-label col-sm-2">模型：</label>									<div class="col-sm-3">										<select class="form-control combox" name="args[groupmodel]" id="groupmodel">											{x2;tree:$models,model,mid}											<option value="{x2;v:model['modelcode']}"{x2;if:$group['groupmodel'] == v:model['modelcode']} selected{x2;endif}>{x2;v:model['modelname']}</option>											{x2;endtree}										</select>									</div>								</div>								<div class="form-group">									<label for="groupintro" class="control-label col-sm-2">备注：</label>									<div class="col-sm-9">										<textarea class="form-control" rows="7" cols="4" name="args[groupintro]" id="groupintro">{x2;$group['groupintro']}</textarea>									</div>								</div>								<div class="form-group">									<label for="fielddescribe" class="control-label col-sm-2"></label>									<div class="col-sm-9">										<button class="btn btn-primary" type="submit">提交</button>										<input type="hidden" name="modifygroup" value="1"/>										<input type="hidden" name="groupid" value="{x2;$group['groupid']}"/>									</div>								</div>							</fieldset>						</form>					</div>				</div>			</div>		</div>	</div></div></body></html>