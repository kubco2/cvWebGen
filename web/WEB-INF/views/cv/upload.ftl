<#include "/layout/head.ftl">
<#include "/layout/navigation.ftl">
<div class="container">
	<div class="span6 offset3">
		<section id="cv-upload">
			<header><h2>CV Upload</h2></header>
			<form id="fileuploadForm" action="/cv/upload" method="POST" enctype="multipart/form-data">
				<#if message??><p class="alert alert-success">${message}</p></#if>
				<div class="control-group">
					<label class="control-label" for="fileInput">Select xml file:</label>
					<div class="controls">
						<input class="input-file" id="fileInput" type="file" name="file">
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						<label class="radio">
							<dl>
								<dt><input type="radio" name="todo" value="public" checked="">Public</dt>
								<dd>Lorem ipsum.</dd>
							</dl>
						</label>
						<label class="radio">
							<dl>
								<dt><input type="radio" name="todo" value="private" checked="">Private</dt>
								<dd>Lorem ipsum.</dd>
							</dl>
						</label>
					</div>
				</div>
				<div class="form-actions">
					<button type="submit" class="btn btn-primary">Upload</button>
					<button class="btn">Cancel</button>
				</div>
			</form>
		</section>
	</div>
</div>
<#include "/layout/debug.ftl">
<#include "/layout/footer.ftl">
<#include "/layout/foot.ftl">