<#macro fieldsetPersonal firstName="" middleName="" lastName="" dateofbirth="" gender="" nationality="">
	<fieldset>
		<div class="control-group" data-field="personal-firstName">
			<label class="control-label" for="personal-firstName">firstName</label>
			<div class="controls">
				<input type="text" class="input" name="personal-firstName" id="personal-firstName" value="${firstName}">
				<p class="help-block"></p>
			</div>
		</div>
		<div class="control-group" data-field="personal-middleName">
			<label class="control-label" for="personal-middleName">middleName</label>
			<div class="controls">
				<input type="text" class="input" name="personal-middleName" id="personal-middleName" value="${middleName}">
				<p class="help-block"></p>
			</div>
		</div>
		<div class="control-group" data-field="personal-lastName">
			<label class="control-label" for="personal-lastName">lastName</label>
			<div class="controls">
				<input type="text" class="input" name="personal-lastName" id="personal-lastName" value="${lastName}">
				<p class="help-block"></p>
			</div>
		</div>
		<div class="control-group" data-field="personal-dateofbirth">
			<label class="control-label" for="personal-dateofbirth">dateofbirth</label>
			<div class="controls">
				<input type="date" name="personal-dateofbirth" id="personal-dateofbirth" value="${dateofbirth}"/>
				<p class="help-block"></p>
			</div>
		</div>
		<div class="control-group" data-field="personal-gender">
			<label class="control-label" for="personal-gender">gender</label>
			<div class="controls">
				<select name="personal-gender" id="personal-gender"> <!-- Select default -->
					<option value="male">male</option>
					<option value="female">female</option>
				</select>
				<p class="help-block"></p>
			</div>
		</div>
		<div class="control-group" data-field="personal-nationality">
			<label class="control-label" for="personal-nationality">nationality</label>
			<div class="controls">
				<input type="text" class="input" name="personal-nationality" id="personal-nationality" value="${nationality}">
				<p class="help-block"></p>
			</div>
		</div>
	</fieldset>
</#macro>


<#macro fieldsetAddress street="" city="" zip="" state="" description="">
	<fieldset>
		<div class="control-group" data-field="address-street">
			<label class="control-label" for="address-street">street</label>
			<div class="controls">
				<input type="text" class="input" name="address-street" id="address-street" value="${street}">
				<p class="help-block"></p>
			</div>
		</div>
		<div class="control-group" data-field="address-city">
			<label class="control-label" for="address-city">city</label>
			<div class="controls">
				<input type="text" class="input" name="address-city" id="address-city" value="${city}">
				<p class="help-block"></p>
			</div>
		</div>
		<div class="control-group" data-field="address-zip">
			<label class="control-label" for="address-zip">zip</label>
			<div class="controls">
				<input type="text" class="input" name="address-zip" id="address-zip" value="${zip}">
				<p class="help-block"></p>
			</div>
		</div>
		<div class="control-group" data-field="address-state">
			<label class="control-label" for="address-state">state</label>
			<div class="controls">
				<input type="text" class="input" name="address-state" id="address-state" value="${state}">
				<p class="help-block"></p>
			</div>
		</div>
		<div class="control-group" data-field="address-description">
			<label class="control-label" for="address-description">description</label>
			<div class="controls">
				<input type="text" class="input" name="address-description" id="address-description" value="${description}">
				<p class="help-block"></p>
			</div>
		</div>
	</fieldset>
</#macro>

<#macro fieldsetContactPhone type="" content="">
	<fieldset>
		<div class="control-group" data-field="contact-phone">
			<label class="control-label" for=""><i class="icon icon-minus-sign template-trigger-remove"></i> Phone</label>
			<div class="controls">
				<div class="input-prepend">
					<span class="add-on">type</span><input type="text" class="input" name="contact-phone-type" value="${type}" style="width: 80px;">
				</div>
				<input type="text" class="input" name="contact-phone-content" value="${content}">
				<p class="help-block"></p>
			</div>
		</div>
	</fieldset>
</#macro>

<#macro fieldsetContactEmail content="">
	<fieldset>
		<div class="control-group" data-field="">
			<label class="control-label" for=""><i class="icon icon-minus-sign template-trigger-remove"></i> Email</label>
			<div class="controls">
				<input type="text" class="input" name="contact-email-content" id="" value="${content}">
				<p class="help-block"></p>
			</div>
		</div>
	</fieldset>
</#macro>

<#macro fieldsetContactWebsite content="">
	<fieldset>
		<div class="control-group" data-field="">
			<label class="control-label" for=""><i class="icon icon-minus-sign template-trigger-remove"></i> Website</label>
			<div class="controls">
				<input type="text" class="input" name="contact-website-content" id="" value="${content}">
				<p class="help-block"></p>
			</div>
		</div>
	</fieldset>
</#macro>